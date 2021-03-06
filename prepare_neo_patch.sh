#!/bin/bash
a=`date +%Y`
b=`date +.%-m.%-d`
c=${a: -1:1}
version=$c$b
time=`date +%_a%_3d%_4b%_9X%_4Z%_5Y`
utc=`date +%s`
cat 'other/build.prop' | sed -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" \
			| sed -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" \
			| sed -e "s/MT11/MT15/g" \
			| sed -e "s/Xperia neo V/Xperia neo/g" \
			| sed -e "s/UL5_3w/$version/g" \
			| sed -e "s/haida/hallon/g" > 'other/neo-patch/system/build.prop'
echo "ro.product.mod_device=mt15i" >> 'other/neo-patch/system/build.prop'
echo "ro.skia.use_data_fonts=1" >> 'other/neo-patch/system/build.prop'
echo "" >> 'other/neo-patch/system/build.prop'
cd 'other/neo-patch'
zip -r "../../unsigned-patch-neo-$version.zip" 'META-INF' 'system'
rm -r "system/build.prop"
cd ../..
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-patch-neo-$version.zip" "patch-neo-$version.zip"
rm -r "unsigned-patch-neo-$version.zip"
echo Done, wait until window closes.
sleep 5
