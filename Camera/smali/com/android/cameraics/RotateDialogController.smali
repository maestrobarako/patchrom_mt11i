.class public Lcom/android/cameraics/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/android/cameraics/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutResourceID:I

.field private mRotateDialog:Lcom/android/cameraics/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a"
    .parameter "layoutResource"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/cameraics/RotateDialogController;->mActivity:Landroid/app/Activity;

    .line 54
    iput p2, p0, Lcom/android/cameraics/RotateDialogController;->mLayoutResourceID:I

    .line 55
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/cameraics/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/cameraics/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    .line 58
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/cameraics/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0d0071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 63
    const v3, 0x7f0d0072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/cameraics/ui/RotateLayout;

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialog:Lcom/android/cameraics/ui/RotateLayout;

    .line 64
    const v3, 0x7f0d0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 65
    const v3, 0x7f0d0079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 66
    const v3, 0x7f0d0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 67
    const v3, 0x7f0d0077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 68
    const v3, 0x7f0d0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f0d007b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0d007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a

    .line 72
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 75
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    .line 74
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 76
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    iget-object v3, p0, Lcom/android/cameraics/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layoutRoot:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/cameraics/RotateDialogController;->fadeOutDialog()V

    .line 110
    :cond_0
    return-void
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 88
    invoke-direct {p0}, Lcom/android/cameraics/RotateDialogController;->inflateDialogLayout()V

    .line 89
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/cameraics/RotateDialogController;->inflateDialogLayout()V

    .line 84
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialog:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 85
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "r1"
    .parameter "button2Text"
    .parameter "r2"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/cameraics/RotateDialogController;->resetRotateDialog()V

    .line 116
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz p3, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    new-instance v1, Lcom/android/cameraics/RotateDialogController$1;

    invoke-direct {v1, p0, p4}, Lcom/android/cameraics/RotateDialogController$1;-><init>(Lcom/android/cameraics/RotateDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    if-eqz p5, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    new-instance v1, Lcom/android/cameraics/RotateDialogController$2;

    invoke-direct {v1, p0, p6}, Lcom/android/cameraics/RotateDialogController$2;-><init>(Lcom/android/cameraics/RotateDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/cameraics/RotateDialogController;->fadeInDialog()V

    .line 147
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/cameraics/RotateDialogController;->resetRotateDialog()V

    .line 152
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/cameraics/RotateDialogController;->fadeInDialog()V

    .line 156
    return-void
.end method