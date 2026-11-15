.class public Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;,
        Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOrientationContainer"

.field public static isIgnoreScreenChange:Z


# instance fields
.field private canChangeOrientation:Z

.field public currentOrientation:I

.field public isAppLocked:Z

.field private isChaosPortrait:Z

.field private isInChaosMode:Z

.field private isSystemLocked:Z

.field protected mCurrentRotation:I

.field mMarginBottom:I

.field mMarginLeft:I

.field mMarginRight:I

.field mMarginTop:I

.field private mOrientationChangeListener:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;

.field protected mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private needChangeScreenMode:Z

.field private final observer:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->observer:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mCurrentRotation:I

    .line 5
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation:Z

    .line 6
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->needChangeScreenMode:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->init(Landroid/content/Context;)V

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

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p2, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->observer:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    const/4 p2, 0x1

    .line 10
    iput p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mCurrentRotation:I

    .line 12
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation:Z

    .line 13
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->needChangeScreenMode:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->observer:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isChaosPortrait:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->notifyListener()V

    return-void
.end method

.method public static synthetic access$500(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->handleChange()V

    return-void
.end method

.method private autoFixedOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private canChangeOrientation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation:Z

    return p0
.end method

.method private contain(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleChange()V
    .locals 1

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$1;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$1;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->getDisplayRotation()I

    move-result p1

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mCurrentRotation:I

    new-instance p1, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;

    invoke-direct {p1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private notifyListener()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged 33 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationChangeListener:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    invoke-interface {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;->onScreenOrientationChange(I)V

    :cond_0
    return-void
.end method

.method private setOrientation(Landroid/content/Context;I)V
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public changeFullScreenState()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setPortrait()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setLandScape()V

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->observer:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public getDisplayRotation()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return v1
.end method

.method public isFullScreen()Z
    .locals 1

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockScreen()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->autoFixedOrientation()V

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChangedCompat(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public postOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-static {}, Lcom/hunantv/imgo/util/h;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->getDisplayRotation()I

    move-result v3

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mCurrentRotation:I

    if-eq v0, v3, :cond_5

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    iput v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mCurrentRotation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->f(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged 22 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConfigurationChanged"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/hunantv/imgo/util/h;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$8;

    invoke-direct {p1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$8;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->refreshLayoutForOrientation()V

    :cond_5
    :goto_3
    return-void
.end method

.method public refreshLayoutForOrientation()V
    .locals 9

    sget-boolean v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isIgnoreScreenChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->currentOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const-wide/16 v2, 0x32

    const-string v4, "+height "

    const-string v5, "onConfigurationChanged"

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v0, v1, :cond_4

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginLeft:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginTop:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginRight:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginBottom:I

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " LANDSCAPE width "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->needChangeScreenMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$4;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$4;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginLeft:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginTop:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginRight:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mMarginBottom:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    if-eqz v0, :cond_7

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RESULT width "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->needChangeScreenMode:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$5;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$5;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->contain(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public setLandScape()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isSystemLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isChaosPortrait:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public setNeedChangeScreenMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->needChangeScreenMode:Z

    return-void
.end method

.method public setOrientationChangeListener(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationChangeListener:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;

    return-void
.end method

.method public setPortrait()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isSystemLocked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isChaosPortrait:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public setScreenOrientationAutoMode()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/t;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isSystemLocked:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->autoFixedOrientation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSupportChangeOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->canChangeOrientation:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    return-void
.end method

.method public unlockScreen()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isAppLocked:Z

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isInChaosMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isSystemLocked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientation(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method
