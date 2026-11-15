.class public Lcom/transsion/playercommon/vishaapis/appconfig/helper/JumpConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JUMP_CACHE:Ljava/lang/String; = "jump_cache"

.field private static final TAG:Ljava/lang/String; = "JumpConfigHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/appconfig/JumpBean;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/JumpConfigHelper;->lambda$setJumpCache$0(Lcom/transsion/dbdata/beans/appconfig/JumpBean;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJumpCache()Lcom/transsion/dbdata/beans/appconfig/JumpBean;
    .locals 3

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "jump_cache"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJumpCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "JumpConfigHelper"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v1, Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    invoke-static {v0, v1}, Lfi1;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    return-object v0
.end method

.method private static synthetic lambda$setJumpCache$0(Lcom/transsion/dbdata/beans/appconfig/JumpBean;Landroid/content/Context;)Ljava/lang/String;
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

    const-string v0, "jump_cache"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static saveJumpBean(Lcom/transsion/dbdata/beans/appconfig/JumpBean;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/transsion/playercommon/core/MainApp;->C:Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/JumpConfigHelper;->setJumpCache(Lcom/transsion/dbdata/beans/appconfig/JumpBean;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static setJumpCache(Lcom/transsion/dbdata/beans/appconfig/JumpBean;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    new-instance v0, Lwc5;

    invoke-direct {v0, p0}, Lwc5;-><init>(Lcom/transsion/dbdata/beans/appconfig/JumpBean;)V

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
