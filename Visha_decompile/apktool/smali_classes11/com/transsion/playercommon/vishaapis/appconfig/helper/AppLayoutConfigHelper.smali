.class public Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$InstanceHolder;
    }
.end annotation


# static fields
.field public static final APP_DOWNLOAD_TAB_ID:I = 0x3

.field public static final APP_MORE_TAB_ID:I = 0x4

.field public static final APP_MUSIC_TAB_ID:I = 0x1

.field public static final APP_OTT_TAB_ID:I = 0x2

.field public static final APP_VIDEO_TAB_ID:I = 0x0

.field public static final DOWNLOAD_TAB_ID:I = 0x632

.field public static final LAYOUT_CACHE_KEY:Ljava/lang/String; = "online_video_layout_cache"

.field private static final LAYOUT_CACHE_KEY_DATA_VERSION:Ljava/lang/String; = "lo_data_version"

.field public static final MORE_TAB_ID:I = 0x637

.field public static final MUSIC_TAB_ID:I = 0x633

.field public static final OTT_TAB_ID:I = 0x631

.field private static final TAG:Ljava/lang/String; = "AppLayoutConfigHelper"

.field public static final VIDEO_TAB_ID:I = 0x630


# instance fields
.field private mAppBottomTabConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/BottomBean;",
            ">;"
        }
    .end annotation
.end field

.field private mOttChannelsConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mOttTabConfig:Lcom/transsion/dbdata/beans/appconfig/BottomBean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;-><init>()V

    return-void
.end method

.method private checkOnlineConfig(Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getBottom()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getBottom()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getBottom()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v0

    move v4, v3

    move v5, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/appconfig/BottomBean;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getIsOtt()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getChannels()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v7, "ott_cellular_autoplay"

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getCellularAutoplay()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v7, "ott_wifi_autoplay"

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getWifiAutoplay()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v7, "ott_filter_channel_visible"

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->isFilterChannel()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    iput-object v6, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttTabConfig:Lcom/transsion/dbdata/beans/appconfig/BottomBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getBottom()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mAppBottomTabConfig:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getChannels()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttChannelsConfig:Ljava/util/List;

    move v4, v2

    :cond_1
    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getDefaultTab()I

    move-result v7

    if-ne v7, v2, :cond_2

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->checkTabIds(I)I

    move-result v3

    :cond_2
    const-string v7, "Download"

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getDefaultShow()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_0

    move v5, v0

    goto/16 :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OTT] set default position:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", has online fragment: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AppLayoutConfigHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    sget-object p1, Lw6c;->e:Ljava/lang/String;

    invoke-static {p0, p1, v3}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    sget-object p1, Lw6c;->a:Ljava/lang/String;

    invoke-static {p0, p1, v4}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    sget-object p1, Lw6c;->b:Ljava/lang/String;

    invoke-static {p0, p1, v5}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    sget-object p1, Lw6c;->e:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    sget-object p1, Lw6c;->a:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private checkTabIds(I)I
    .locals 0

    const/16 p0, 0x637

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x631
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppLayoutConfig(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lpp3;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getAllLayout(JLjava/lang/String;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;-><init>(Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public getCacheDataVersion()Ljava/lang/String;
    .locals 3

    const-string p0, ""

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "lo_data_version"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "AppLayoutConfigHelper"

    const-string v2, "getCacheDataVersion: MMKV not initialized"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getOttChannelsBean()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttChannelsConfig:Ljava/util/List;

    return-object p0
.end method

.method public getOttTab()Lcom/transsion/dbdata/beans/appconfig/BottomBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttTabConfig:Lcom/transsion/dbdata/beans/appconfig/BottomBean;

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttTabConfig:Lcom/transsion/dbdata/beans/appconfig/BottomBean;

    iget-object v1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mAppBottomTabConfig:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mAppBottomTabConfig:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttChannelsConfig:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->mOttChannelsConfig:Ljava/util/List;

    return-void
.end method

.method public restoreAppLayoutConfigFromCache()V
    .locals 3

    sget-boolean v0, Lpp3;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "online_video_layout_cache"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OTT]get app layout config cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppLayoutConfigHelper"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-class v1, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->checkOnlineConfig(Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OTT]get app layout config exception :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public saveLayoutConfig(Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;J)V
    .locals 4

    const-string v0, "AppLayoutConfigHelper"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v2

    const-string v3, "online_video_layout_cache"

    invoke-virtual {v2, v3, v1}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->checkOnlineConfig(Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v2, "lo_data_version"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OTT]on layout response:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nregionId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\ncountry:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nCountryCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[OTT]save layout config exception :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
