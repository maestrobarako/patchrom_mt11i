.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Drawable$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# instance fields
.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mOpacityOverride:I

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "state"
    .parameter "res"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    .line 104
    .local v0, as:Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 105
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    if-lez v1, :cond_0

    .line 106
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 108
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "layers"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 72
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 6
    .parameter "layers"
    .parameter "state"

    .prologue
    .line 82
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 83
    array-length v1, p1

    .line 84
    .local v1, length:I
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 86
    .local v2, r:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 87
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v3, v2, v0

    .line 88
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 93
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 95
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 96
    return-void
.end method

.method private addLayer(Landroid/graphics/drawable/Drawable;IIIII)V
    .locals 8
    .parameter "layer"
    .parameter "id"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 191
    .local v4, st:Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v6, :cond_2

    iget-object v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v0, v6

    .line 192
    .local v0, N:I
    :goto_0
    iget v2, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 193
    .local v2, i:I
    if-lt v2, v0, :cond_1

    .line 194
    add-int/lit8 v6, v0, 0xa

    new-array v3, v6, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 195
    .local v3, nu:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v2, :cond_0

    .line 196
    iget-object v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v6, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    :cond_0
    iput-object v3, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 201
    .end local v3           #nu:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v6, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 203
    new-instance v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    .line 204
    .local v1, childDrawable:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object v1, v5, v2

    .line 205
    iput p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 206
    iput-object p1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    iput p3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 208
    iput p4, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 209
    iput p5, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 210
    iput p6, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 211
    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 213
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 214
    return-void

    .end local v0           #N:I
    .end local v1           #childDrawable:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2           #i:I
    :cond_2
    move v0, v5

    .line 191
    goto :goto_0
.end method

.method private ensurePadding()V
    .locals 2

    .prologue
    .line 580
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 581
    .local v0, N:I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 584
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    .line 585
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    .line 586
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    .line 587
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    goto :goto_0
.end method

.method private reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .parameter "i"
    .parameter "r"

    .prologue
    .line 566
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 567
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 568
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    .line 570
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 571
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 572
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 573
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 574
    const/4 v1, 0x1

    .line 576
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 366
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 367
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 368
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 369
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"

    .prologue
    .line 223
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 225
    .local v1, layers:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 226
    aget-object v2, v1, v0

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 227
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    :goto_1
    return-object v2

    .line 225
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 594
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 596
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 10

    .prologue
    .line 549
    const/4 v3, -0x1

    .line 550
    .local v3, height:I
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 551
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 552
    .local v0, N:I
    const/4 v6, 0x0

    .local v6, padT:I
    const/4 v5, 0x0

    .line 553
    .local v5, padB:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 554
    aget-object v7, v1, v4

    .line 555
    .local v7, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    add-int v2, v8, v5

    .line 556
    .local v2, h:I
    if-le v2, v3, :cond_0

    .line 557
    move v3, v2

    .line 559
    :cond_0
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v4

    add-int/2addr v6, v8

    .line 560
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v4

    add-int/2addr v5, v8

    .line 553
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    .end local v2           #h:I
    .end local v7           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 10

    .prologue
    .line 530
    const/4 v7, -0x1

    .line 531
    .local v7, width:I
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 532
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 533
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, padL:I
    const/4 v4, 0x0

    .line 534
    .local v4, padR:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 535
    aget-object v5, v1, v2

    .line 536
    .local v5, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget v9, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    add-int v6, v8, v4

    .line 538
    .local v6, w:I
    if-le v6, v7, :cond_0

    .line 539
    move v7, v6

    .line 541
    :cond_0
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v2

    add-int/2addr v3, v8

    .line 542
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v5           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v6           #w:I
    :cond_1
    return v7
.end method

.method public getNumberOfLayers()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    if-eqz v0, :cond_0

    .line 458
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 460
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "padding"

    .prologue
    const/4 v3, 0x0

    .line 385
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 386
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 387
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 388
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 389
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 390
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 391
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 392
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 393
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 394
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 395
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 396
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 3
    .parameter "who"

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 354
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/Drawable$Callback2;

    if-nez v2, :cond_1

    .line 355
    :cond_0
    const/4 v1, 0x0

    .line 359
    .end local v0           #callback:Landroid/graphics/drawable/Drawable$Callback;
    :goto_0
    return v1

    .line 358
    .restart local v0       #callback:Landroid/graphics/drawable/Drawable$Callback;
    :cond_1
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback2;

    .end local v0           #callback:Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback2;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 359
    .local v1, retVal:I
    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-super/range {p0 .. p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 121
    sget-object v2, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 123
    .local v9, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 126
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v12, v2, 0x1

    .line 131
    .local v12, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .local v10, depth:I
    if-ge v10, v12, :cond_1

    const/4 v2, 0x3

    if-eq v13, v2, :cond_4

    .line 132
    :cond_1
    const/4 v2, 0x2

    if-ne v13, v2, :cond_0

    .line 136
    if-gt v10, v12, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v14, "item"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    sget-object v2, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 143
    const/4 v2, 0x2

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 145
    .local v5, left:I
    const/4 v2, 0x3

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 147
    .local v6, top:I
    const/4 v2, 0x4

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 149
    .local v7, right:I
    const/4 v2, 0x5

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 151
    .local v8, bottom:I
    const/4 v2, 0x1

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 153
    .local v11, drawableRes:I
    const/4 v2, 0x0

    const/4 v14, -0x1

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 156
    .local v4, id:I
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    if-eqz v11, :cond_2

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, dr:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v2, p0

    .line 172
    invoke-direct/range {v2 .. v8}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;IIIII)V

    goto :goto_0

    .line 162
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v2, 0x4

    if-eq v13, v2, :cond_2

    .line 164
    const/4 v2, 0x2

    if-eq v13, v2, :cond_3

    .line 165
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "child tag defining a drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_3
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 175
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .end local v4           #id:I
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v10           #depth:I
    .end local v11           #drawableRes:I
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    .line 177
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 323
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 601
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v3, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 602
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 603
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 604
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 605
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 609
    .end local v0           #N:I
    .end local v1           #array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2           #i:I
    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .parameter "bounds"

    .prologue
    .line 512
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 513
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 514
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, padL:I
    const/4 v6, 0x0

    .local v6, padT:I
    const/4 v5, 0x0

    .local v5, padR:I
    const/4 v3, 0x0

    .line 515
    .local v3, padB:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 516
    aget-object v7, v1, v2

    .line 517
    .local v7, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    iget v11, p1, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v5

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    iget v13, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 521
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 522
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v2

    add-int/2addr v5, v8

    .line 523
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v2

    add-int/2addr v6, v8

    .line 524
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v2

    add-int/2addr v3, v8

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v7           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 7
    .parameter "level"

    .prologue
    .line 491
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 492
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 493
    .local v0, N:I
    const/4 v4, 0x0

    .line 494
    .local v4, paddingChanged:Z
    const/4 v2, 0x0

    .line 495
    .local v2, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 496
    aget-object v5, v1, v3

    .line 497
    .local v5, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 498
    const/4 v2, 0x1

    .line 500
    :cond_0
    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 501
    const/4 v4, 0x1

    .line 495
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v5           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 505
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 507
    :cond_3
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 7
    .parameter "state"

    .prologue
    .line 470
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 471
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 472
    .local v0, N:I
    const/4 v4, 0x0

    .line 473
    .local v4, paddingChanged:Z
    const/4 v2, 0x0

    .line 474
    .local v2, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 475
    aget-object v5, v1, v3

    .line 476
    .local v5, r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 477
    const/4 v2, 0x1

    .line 479
    :cond_0
    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->reapplyPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 480
    const/4 v4, 0x1

    .line 474
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v5           #r:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 484
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 486
    :cond_3
    return v2
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 330
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 333
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4
    .parameter "alpha"

    .prologue
    .line 423
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 424
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 425
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 426
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .parameter "cf"

    .prologue
    .line 432
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 433
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 434
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 435
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 4
    .parameter "dither"

    .prologue
    .line 414
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 415
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 416
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 417
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 5
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 283
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 285
    .local v2, layers:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 286
    aget-object v3, v2, v1

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v3, p1, :cond_3

    .line 287
    aget-object v3, v2, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 288
    if-eqz p2, :cond_0

    .line 289
    aget-object v3, v2, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 290
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 292
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_0
    aget-object v3, v2, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 294
    :cond_1
    if-eqz p2, :cond_2

    .line 295
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 297
    :cond_2
    aget-object v3, v2, v1

    iput-object p2, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    const/4 v3, 0x1

    .line 302
    :goto_1
    return v3

    .line 285
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 302
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setId(II)V
    .locals 1
    .parameter "index"
    .parameter "id"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 242
    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 2
    .parameter "index"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 312
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 313
    .local v0, childDrawable:Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 314
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 315
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 316
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 317
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .parameter "opacity"

    .prologue
    .line 452
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable;->mOpacityOverride:I

    .line 453
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 404
    .local v2, changed:Z
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 405
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 406
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 407
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_0
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 337
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 340
    :cond_0
    return-void
.end method
