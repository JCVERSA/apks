.class Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper;->getAppGlobalConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpd7;"
    }
.end annotation


# instance fields
.field final synthetic val$dataVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->val$dataVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cacheDataVersion(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getDataVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gcf_data_version"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private isSameVersion(Lcom/transsion/retrofit/reponse/BaseResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->val$dataVersion:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->val$dataVersion:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processResponseData(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AppGlobalConfigHelper"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lmb8;->c()Lmb8;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getPlayerSpeedConfig()Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmb8;->g(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getExternalJump()Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/JumpConfigHelper;->saveJumpBean(Lcom/transsion/dbdata/beans/appconfig/JumpBean;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getLocalVideoPlayControl()Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getLocalVideoPlayControl()Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;->forbidListenVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ytb_forbid_listen"

    invoke-static {p1, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getLocalVideoPlayControl()Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;->forbidPlayVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ytb_forbid_play"

    invoke-static {p1, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Ln88;->b()Ln88;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getBspPlayerConfigBean()Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln88;->d(Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;)V

    invoke-static {}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getCloudCtrlBean()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->e(Ljava/util/List;)V

    invoke-static {}, Li44;->d()Li44;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getFormatCopyright()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Li44;->g(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getControllerLimitBean()Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ldi1;->f()Ldi1;

    move-result-object p1

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getControllerLimitBean()Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ldi1;->m(Landroid/content/Context;Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;)V

    :cond_1
    sget-boolean p1, Lpp3;->E:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->saveSmartEditEnable(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AppGlobalConfigHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AppGlobalConfigHelper"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->isSameVersion(Lcom/transsion/retrofit/reponse/BaseResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->cacheDataVersion(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->processResponseData(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper$1;->onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
