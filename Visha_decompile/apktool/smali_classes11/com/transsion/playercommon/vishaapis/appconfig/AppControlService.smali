.class public interface abstract Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkNewVersions(Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "versionCode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/playercommon/data/CloudVersionControl;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/version/update-info"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getAISubtitleConfig()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/playercommon/data/AiSubtitleConfig;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/aiSub/config/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getApiKeysConfig()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/SmartEditApiKeyBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/intelligent_edit/api_key/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getAppGlobalConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "kernel"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "chipPlatform"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "model"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Loo4;
            value = "dataVersion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/aggregation_config/global_config/query/v2"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getCloudCtrlConfig(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "regionId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloudctrlconfigbean/CloudCtrlConfigBean$CloudCtrl;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/cloud-ctrl-config/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getDownloadConfig(JILjava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "channel"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "model"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Loo4;
            value = "dataVersion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/aggregation_config/sniff_global_config/query/v1"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method
