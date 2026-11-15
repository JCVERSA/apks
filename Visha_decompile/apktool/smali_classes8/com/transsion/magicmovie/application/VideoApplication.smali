.class public Lcom/transsion/magicmovie/application/VideoApplication;
.super Lcom/transsion/playercommon/core/MainApp;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/core/MainApp$b;


# static fields
.field public static H:Z = true


# instance fields
.field public volatile F:Z

.field public volatile G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/core/MainApp;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/application/VideoApplication;->F:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/application/VideoApplication;->G:Z

    return-void
.end method

.method public static synthetic A(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/application/VideoApplication;->I(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/magicmovie/application/VideoApplication;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/application/VideoApplication;->J(Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/magicmovie/application/VideoApplication;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/application/VideoApplication;->G:Z

    return p0
.end method

.method public static bridge synthetic D(Lcom/transsion/magicmovie/application/VideoApplication;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/application/VideoApplication;->G:Z

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/magicmovie/application/VideoApplication;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/application/VideoApplication;->F:Z

    return-void
.end method

.method public static F()V
    .locals 3

    sget-boolean v0, Lpp3;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;

    sget-object v1, Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;->a:Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;

    const-string v1, "install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "VideoApplication"

    const-string v2, "installMediationAdsBridgeIfNeeded failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static G()V
    .locals 3

    sget-boolean v0, Lpp3;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/transsion/privateroom/bridgeimpl/PrivateRoomRealInstaller;

    const-string v1, "install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "VideoApplication"

    const-string v2, "installPrivateRoomBridgeIfNeeded failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static H()Z
    .locals 2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/magicmovie/application/VideoApplication;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/magicmovie/application/VideoApplication;

    iget-boolean v0, v0, Lcom/transsion/magicmovie/application/VideoApplication;->G:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic I(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Ln34;->a(Landroid/app/Activity;)V

    sget-object v0, Ls45;->a:Ls45$a;

    invoke-virtual {v0}, Ls45$a;->a()Ls45;

    move-result-object v0

    invoke-virtual {v0, p0}, Ls45;->c(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final synthetic J(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/application/VideoApplication;->F:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/application/VideoApplication;->F:Z

    invoke-static {p1}, Ln34;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final K()V
    .locals 1

    sget-boolean v0, Lpp3;->G:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/magicmovie/application/VideoApplication$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/application/VideoApplication$b;-><init>(Lcom/transsion/magicmovie/application/VideoApplication;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final L()V
    .locals 1

    new-instance v0, Lcom/transsion/magicmovie/application/VideoApplication$c;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/application/VideoApplication$c;-><init>(Lcom/transsion/magicmovie/application/VideoApplication;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    instance-of p0, p1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->checkAfterGpdrDialog()V

    :cond_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoApplication"

    const-string v1, "Error init isIsolated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/transsion/playercommon/core/MainApp;->onCreate()V

    return-void

    :cond_0
    invoke-static {p0}, Lkec;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/magicmovie/application/VideoApplication;->F()V

    invoke-static {}, Lcom/transsion/magicmovie/application/VideoApplication;->G()V

    invoke-static {p0}, Lzz0;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/playercommon/core/MainApp;->u(Lcom/transsion/playercommon/core/MainApp$b;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v0}, Lse;->c(Landroid/app/Application;Landroid/os/Handler;)V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, v0}, Lte;->a(Landroid/app/Application;Landroid/os/Handler;)V

    invoke-super {p0}, Lcom/transsion/playercommon/core/MainApp;->onCreate()V

    new-instance v0, Lxob;

    invoke-direct {v0}, Lxob;-><init>()V

    invoke-static {v0}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->setOnActivityDestroyedListener(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;)V

    new-instance v0, Lyob;

    invoke-direct {v0, p0}, Lyob;-><init>(Lcom/transsion/magicmovie/application/VideoApplication;)V

    invoke-static {v0}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->setOnActivityResumedListener(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/application/VideoApplication;->K()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/application/VideoApplication;->L()V

    invoke-static {}, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->a()Lcom/transsion/playercommon/applife/AppLifecycleObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/magicmovie/application/VideoApplication$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/application/VideoApplication$a;-><init>(Lcom/transsion/magicmovie/application/VideoApplication;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->setOnAppStateListener(Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;)V

    :cond_1
    return-void
.end method

.method public z()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/core/MainApp;->z()V

    invoke-static {}, Lmn5;->g()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lmn5;->l(Z)V

    :cond_0
    return-void
.end method
