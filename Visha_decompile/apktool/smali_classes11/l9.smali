.class public abstract Ll9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9$b;
    }
.end annotation


# static fields
.field public static a:Lcom/transsion/dbdata/beans/NewFeatureAdvertise; = null

.field public static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Ll9;->h(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ll9$b;Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V
    .locals 0

    invoke-static {p0, p1}, Ll9;->g(Ll9$b;Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/transsion/dbdata/beans/NewFeatureAdvertise;
    .locals 0

    invoke-static {p0}, Ll9;->f(Landroid/content/Context;)Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ll9$b;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    new-instance v0, Lj9;

    invoke-direct {v0}, Lj9;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lk9;

    invoke-direct {v0, p1}, Lk9;-><init>(Ll9$b;)V

    invoke-virtual {p0, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static e()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "bookmarks_cache"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sput-object v0, Ll9;->a:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static synthetic f(Landroid/content/Context;)Lcom/transsion/dbdata/beans/NewFeatureAdvertise;
    .locals 1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p0

    const-string v0, "bookmarks_cache"

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-static {p0, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static synthetic g(Ll9$b;Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V
    .locals 0

    sput-object p1, Ll9;->a:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ll9$b;->a(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    sput-object p0, Ll9;->a:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "bookmarks_cache"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static i(I)V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    int-to-long v1, p0

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getAdvertise(J)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Ll9$a;

    invoke-direct {v0}, Ll9$a;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public static j(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Li9;

    invoke-direct {v1, p0}, Li9;-><init>(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Ll9;->b:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
