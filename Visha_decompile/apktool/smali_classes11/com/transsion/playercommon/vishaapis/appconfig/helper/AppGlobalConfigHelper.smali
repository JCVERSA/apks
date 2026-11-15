.class public Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_KEY_GLOBAL_DATA_VERSION:Ljava/lang/String; = "gcf_data_version"

.field private static final TAG:Ljava/lang/String; = "AppGlobalConfigHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppGlobalConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;->getAppGlobalConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;

    invoke-direct {p1, p5}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public static getCacheDataVersion()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "gcf_data_version"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
