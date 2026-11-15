.class public Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_APP_CONFIG_SMART_EDIT_API_KEYS:Ljava/lang/String; = "cache_app_config_smart_edit_api_keys"

.field private static final CACHE_APP_CONFIG_SMART_EDIT_ENABLE:Ljava/lang/String; = "cache_app_config_smart_edit_enable"

.field private static final TAG:Ljava/lang/String; = "SmartEditConfigHelper"

.field private static acoustIdKey:Ljava/lang/String; = null

.field private static lastFmKey:Ljava/lang/String; = null

.field private static smartEditApiKeys:Ljava/lang/String; = ""

.field private static smartEditEnable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->lambda$requestSmartEditApiKeys$0()V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditApiKeys:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->acoustIdKey:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->lastFmKey:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditApiKeys:Ljava/lang/String;

    return-void
.end method

.method public static getAcoustIdKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->acoustIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastFmKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->lastFmKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmartEditEnable()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lpp3;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static synthetic lambda$requestSmartEditApiKeys$0()V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "cache_app_config_smart_edit_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditEnable:Ljava/lang/Boolean;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "cache_app_config_smart_edit_api_keys"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditApiKeys:Ljava/lang/String;

    const-class v1, Lcom/transsion/dbdata/beans/appconfig/SmartEditApiKeyBean;

    invoke-static {v0, v1}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/SmartEditApiKeyBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/SmartEditApiKeyBean;->getAcoustIdKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->acoustIdKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/SmartEditApiKeyBean;->getLastFmKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->lastFmKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static requestSmartEditApiKeys()V
    .locals 2

    sget-boolean v0, Lpp3;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lyp9;

    invoke-direct {v0}, Lyp9;-><init>()V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;->getApiKeysConfig()Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper$1;

    invoke-direct {v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public static saveSmartEditEnable(Ljava/lang/Boolean;)V
    .locals 2

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->smartEditEnable:Ljava/lang/Boolean;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "cache_app_config_smart_edit_enable"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method
