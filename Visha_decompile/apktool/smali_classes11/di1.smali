.class public Ldi1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ldi1;


# instance fields
.field public a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    return-void
.end method

.method public static synthetic a(Ldi1;Landroid/content/Context;)Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;
    .locals 0

    invoke-virtual {p0, p1}, Ldi1;->k(Landroid/content/Context;)Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;)V
    .locals 0

    invoke-static {p0}, Ldi1;->l(Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;)V

    return-void
.end method

.method public static f()Ldi1;
    .locals 2

    sget-object v0, Ldi1;->b:Ldi1;

    if-nez v0, :cond_1

    const-class v0, Ldi1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldi1;->b:Ldi1;

    if-nez v1, :cond_0

    new-instance v1, Ldi1;

    invoke-direct {v1}, Ldi1;-><init>()V

    sput-object v1, Ldi1;->b:Ldi1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ldi1;->b:Ldi1;

    return-object v0
.end method

.method public static synthetic l(Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final c([ILcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 3

    array-length p0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    iget p0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iget p2, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    aget v0, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-static {p0, p2, v0, p1}, Llpb;->a(IIII)I

    move-result p0

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final d(Lcom/transsion/dbdata/beans/media/PlayVideoData;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Llpb;->b(Ljava/lang/String;)[I

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ldi1;->c([ILcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(Landroid/app/Application;)V
    .locals 3

    const-string v0, "getControllerLimitDataCache:"

    const-string v1, "ControllerDataManager"

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/retrofit/cache/CacheManager;->mDiskLruCache:Lcom/transsion/retrofit/cache/DiskLruCache;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/retrofit/cache/CacheManager;->createDiskLruCache(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v2, "controller_limit_cache_key"

    invoke-virtual {p1, v2}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v2, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    invoke-static {p1, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    iput-object p1, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->getHighResolutionTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldi1;->d(Lcom/transsion/dbdata/beans/media/PlayVideoData;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOverLimitResolution_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ControllerDataManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->getMaxPlatformResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldi1;->d(Lcom/transsion/dbdata/beans/media/PlayVideoData;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "isOverLimitResolution_checkResolution_true"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->getResolutionTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldi1;->d(Lcom/transsion/dbdata/beans/media/PlayVideoData;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(Lcom/transsion/dbdata/beans/media/PlayVideoData;F)Z
    .locals 0

    iget-object p0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->getHighFrameRateTip()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    invoke-static {}, Ldi1;->f()Ldi1;

    move-result-object p0

    iget-object p0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->getHighFrameRateTip()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llpb;->f(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final synthetic k(Landroid/content/Context;)Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;
    .locals 2

    iget-object p1, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setControllerLimitDataCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControllerDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "controller_limit_cache_key"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    return-object p0
.end method

.method public m(Landroid/content/Context;Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;)V
    .locals 0

    iput-object p2, p0, Ldi1;->a:Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    new-instance p2, Lbi1;

    invoke-direct {p2, p0}, Lbi1;-><init>(Ldi1;)V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lci1;

    invoke-direct {p1}, Lci1;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
