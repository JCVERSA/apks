.class public Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_APP_CONFIG_AI_SUBTITLE:Ljava/lang/String; = "cache_app_config"

.field private static final TAG:Ljava/lang/String; = "AIConfigHelper"

.field private static mAiSubtitleConfig:Ljava/lang/String;


# instance fields
.field private mGlobalConfigData:Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;->mAiSubtitleConfig:Ljava/lang/String;

    return-void
.end method

.method public static getAISubtitleConfig()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAISubtitleConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;->mAiSubtitleConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIConfigHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;->mAiSubtitleConfig:Ljava/lang/String;

    return-object v0
.end method

.method public static requestAISubtitleConfig(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "cache_app_config"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;->mAiSubtitleConfig:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    move-result-object p0

    const-class v0, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-interface {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;->getAISubtitleConfig()Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper$1;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
