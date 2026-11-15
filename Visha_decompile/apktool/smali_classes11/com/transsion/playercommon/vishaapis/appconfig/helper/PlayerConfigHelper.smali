.class public Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RECOMMEND_CACHE:Ljava/lang/String; = "recommend_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->lambda$setRecommendCache$1(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->lambda$requestPlayCompleteRecommend$0()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->setRecommendCache(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)V

    return-void
.end method

.method private static getRecommendCache()Lcom/transsion/dbdata/beans/DownloadVideoRecommend;
    .locals 2

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "recommend_cache"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$requestPlayCompleteRecommend$0()V
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->getRecommendCache()Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/core/MainApp;->B:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    return-void
.end method

.method private static synthetic lambda$setRecommendCache$1(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "recommend_cache"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static requestPlayCompleteRecommend(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ll88;

    invoke-direct {v0}, Ll88;-><init>()V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getRecommendVideo(I)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method private static setRecommendCache(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    new-instance v0, Lk88;

    invoke-direct {v0, p0}, Lk88;-><init>(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method
