.class public abstract Lcom/mgtv/ssp/control/BaseVideoController;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/c;


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAdaptCutout:Z

.field protected mControlComponents:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/mgtv/ssp/control/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mControlWrapper:Lcom/mgtv/ssp/control/a;

.field private mCutoutHeight:I

.field protected mDefaultTimeout:I

.field private mEnableOrientation:Z

.field protected final mFadeOut:Ljava/lang/Runnable;

.field private mHasCutout:Ljava/lang/Boolean;

.field private mHideAnim:Landroid/view/animation/Animation;

.field protected mIsLocked:Z

.field private mIsStartProgress:Z

.field private mOrientation:I

.field private mShowAnim:Landroid/view/animation/Animation;

.field protected mShowProgress:Ljava/lang/Runnable;

.field protected mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/ssp/control/BaseVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/control/BaseVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xfa0

    .line 4
    iput p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mDefaultTimeout:I

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    .line 6
    const-string p1, "BaseVideoController"

    iput-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->TAG:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/mgtv/ssp/control/BaseVideoController$1;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/control/BaseVideoController$1;-><init>(Lcom/mgtv/ssp/control/BaseVideoController;)V

    iput-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Lcom/mgtv/ssp/control/BaseVideoController$2;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/control/BaseVideoController$2;-><init>(Lcom/mgtv/ssp/control/BaseVideoController;)V

    iput-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowProgress:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mOrientation:I

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->initView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/ssp/control/BaseVideoController;)I
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->setProgress()I

    move-result p0

    return p0
.end method

.method public static synthetic access$102(Lcom/mgtv/ssp/control/BaseVideoController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsStartProgress:Z

    return p1
.end method

.method private checkCutout()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mAdaptCutout:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/mgtv/ssp/utils/b;->a(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mgtv/ssp/utils/c;->a(Landroid/content/Context;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mCutoutHeight:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCutout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cutout height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mCutoutHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private handleLockStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/control/b;

    invoke-interface {v1, p1}, Lcom/mgtv/ssp/control/b;->onLockStateChanged(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->onLockStateChanged(Z)V

    return-void
.end method

.method private handlePlayStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/control/b;

    invoke-interface {v1, p1}, Lcom/mgtv/ssp/control/b;->onPlayStateChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->onPlayStateChanged(I)V

    return-void
.end method

.method private handlePlayerStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/control/b;

    invoke-interface {v1, p1}, Lcom/mgtv/ssp/control/b;->onPlayerStateChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->onPlayerStateChanged(I)V

    return-void
.end method

.method private handleSetProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/control/b;

    invoke-interface {v1, p1, p2}, Lcom/mgtv/ssp/control/b;->setProgress(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/control/BaseVideoController;->setProgress(II)V

    return-void
.end method

.method private handleVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/control/b;

    invoke-interface {v1, p1, p2}, Lcom/mgtv/ssp/control/b;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/control/BaseVideoController;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method private setProgress()I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getCurrentPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v1}, Lcom/mgtv/ssp/control/a;->getVideoTotalTime()I

    move-result v1

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->handleSetProgress(II)V

    return v0
.end method


# virtual methods
.method public addControlComponent(Landroid/widget/FrameLayout$LayoutParams;Lcom/mgtv/ssp/control/b;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p2, v0}, Lcom/mgtv/ssp/control/b;->attach(Lcom/mgtv/ssp/control/a;)V

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/mgtv/ssp/control/b;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    const/4 p3, 0x0

    .line 12
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public addControlComponent(Lcom/mgtv/ssp/control/b;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lcom/mgtv/ssp/control/b;->attach(Lcom/mgtv/ssp/control/a;)V

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/mgtv/ssp/control/b;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public varargs addControlComponent([Lcom/mgtv/ssp/control/b;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0, v3, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Lcom/mgtv/ssp/control/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceHide()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->stopFadeOut()V

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHideAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->handleVisibilityChanged(ZLandroid/view/animation/Animation;)V

    iput-boolean v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    :cond_0
    return-void
.end method

.method public getCutoutHeight()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mCutoutHeight:I

    return p0
.end method

.method public abstract getLayoutId()I
.end method

.method public hasCutout()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->stopFadeOut()V

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHideAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->handleVisibilityChanged(ZLandroid/view/animation/Animation;)V

    iput-boolean v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 5

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->getLayoutId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public isLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsLocked:Z

    return p0
.end method

.method public isShowing()Z
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture  base.isShowing() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->checkCutout()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLockStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOrientationLandscape(Landroid/app/Activity;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onOrientationPortrait(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mEnableOrientation:Z

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onOrientationReverseLandscape(Landroid/app/Activity;)V
    .locals 0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gesture  onPlayStateChanged STATE_ERROR mShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gesture  onPlayStateChanged COMPLETE mShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mOrientation:I

    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gesture  onPlayStateChanged IDLE mShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->removeAllDissociateComponents()V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/b;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/b;->a(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public removeAllControlComponent()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/ssp/control/b;

    invoke-interface {v1}, Lcom/mgtv/ssp/control/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public removeAllDissociateComponents()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeControlComponent(Lcom/mgtv/ssp/control/b;)V
    .locals 1

    invoke-interface {p1}, Lcom/mgtv/ssp/control/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAdaptCutout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mAdaptCutout:Z

    return-void
.end method

.method public setDismissTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mDefaultTimeout:I

    :cond_0
    return-void
.end method

.method public setEnableOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mEnableOrientation:Z

    return-void
.end method

.method public setLockButtonVisibility(I)V
    .locals 0

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsLocked:Z

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->handleLockStateChanged(Z)V

    return-void
.end method

.method public setMediaPlayer(Lcom/mgtv/ssp/control/d;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    new-instance v0, Lcom/mgtv/ssp/control/a;

    invoke-direct {v0, p1, p0}, Lcom/mgtv/ssp/control/a;-><init>(Lcom/mgtv/ssp/control/d;Lcom/mgtv/ssp/control/c;)V

    iput-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    iget-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/control/b;

    iget-object v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-interface {v0, v1}, Lcom/mgtv/ssp/control/b;->attach(Lcom/mgtv/ssp/control/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->handlePlayStateChanged(I)V

    return-void
.end method

.method public setPlayerState(I)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->handlePlayerStateChanged(I)V

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->handleVisibilityChanged(ZLandroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->startFadeOut()V

    iput-boolean v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowing:Z

    :cond_0
    return-void
.end method

.method public startFadeOut()V
    .locals 3

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->stopFadeOut()V

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mFadeOut:Ljava/lang/Runnable;

    iget v1, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mDefaultTimeout:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startFullScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public startProgress()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsStartProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsStartProgress:Z

    return-void
.end method

.method public stopFadeOut()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopProgress()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsStartProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mIsStartProgress:Z

    return-void
.end method

.method public toggleFullScreen()V
    .locals 0

    return-void
.end method

.method public togglePlay()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->startFadeOut()V

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->togglePlay()V

    return-void
.end method

.method public toggleShowState()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->a()V

    return-void
.end method
