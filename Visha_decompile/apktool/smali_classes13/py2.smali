.class public abstract Lpy2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

.field public static final b:Ljava/util/List;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;-><init>()V

    sput-object v0, Lpy2;->a:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lpy2;->b:Ljava/util/List;

    const-string v0, "pirate-bay-proxy.org/"

    const-string v1, "thepiratebay2.to"

    const-string v2, "api.vishavideo.com/#/ssyoutube"

    const-string v3, "thepiratebay.org"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpy2;->c:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/retrofit/reponse/BaseResponse;)Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;
    .locals 0

    invoke-static {p0}, Lpy2;->f(Lcom/transsion/retrofit/reponse/BaseResponse;)Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "dl_data_version"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static c()I
    .locals 1

    sget-boolean v0, Lpp3;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static d(Lzf1;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v0

    int-to-long v2, v0

    invoke-static {}, Lpy2;->c()I

    move-result v4

    invoke-static {}, Lpp3;->a()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;->getDownloadConfig(JILjava/lang/String;Ljava/lang/String;)Lmc7;

    move-result-object p1

    new-instance v0, Loy2;

    invoke-direct {v0}, Loy2;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lpy2$a;

    invoke-direct {v0, p0}, Lpy2$a;-><init>(Lzf1;)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "DownloadConfigUtils"

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lpy2;->c:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lpy2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    return v4

    :cond_3
    sget-object v3, Lpy2;->a:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->isSniffSwitchOpen()Z

    move-result v3

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lpy2;->a:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->isSniffSwitchOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;->isMe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;->isMe(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    return v4

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportSniff "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSniff url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", support = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public static synthetic f(Lcom/transsion/retrofit/reponse/BaseResponse;)Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DownloadConfigUtils"

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lpy2;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "download config is not changed"

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "dl_data_version"

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDataVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDownloadMain()Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lpy2;->h(Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getSniffBlackWhiteBean()Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getSniffBlackWhiteBean()Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;

    move-result-object v0

    invoke-static {v0}, Lpy2;->g(Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getSearchKey()Lcom/transsion/dbdata/beans/sniff/SearchKey;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getSearchKey()Lcom/transsion/dbdata/beans/sniff/SearchKey;

    move-result-object v0

    invoke-static {v0}, Lpy2;->i(Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    :cond_4
    return-object p0

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDownloadMainPageConfig failed code = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static g(Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;)V
    .locals 2

    :try_start_0
    sget-object v0, Lpy2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->getSniffList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sput-object p0, Lpy2;->a:Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageSniffBlackWhiteList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DownloadConfigUtils"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static h(Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDownloadMain()Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object v0

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v1

    const-string v2, "download_main_cache"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lxy5;->a(I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDownloadMain()Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->getBt_conf_info()Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDownloadMain()Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->getBt_conf_info()Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;->getSwitch_status()I

    move-result p0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;->isOpenBT(I)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d:Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "show_bt_enter"

    sget-boolean v1, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d:Z

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static i(Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_search_keys"

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x0

    invoke-static {p0}, Lxy5;->a(I)V

    :cond_0
    return-void
.end method
