.class public final Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/AppInfoModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->setAppId(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateDeployVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->setDeployVersion(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplatePackageUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/integration/model/AppInfoModel;->setPackageUrl(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->generateAppModel(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "_pre"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v0, p3, p2, p1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p2
.end method

.method public OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_INFO_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 7

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "appModel is null"

    invoke-direct {p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_4

    move-object v0, v1

    .line 9
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_5
    return-void

    .line 11
    :cond_6
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 12
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    const-string v4, "u_s"

    invoke-virtual {v3, v2, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_7
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/integration/model/AppInfoQuery;->Companion:Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;

    invoke-virtual {v4, v0}, Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-nez v2, :cond_8

    .line 14
    invoke-virtual {p0, v0, p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    goto :goto_2

    .line 15
    :cond_8
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    .line 16
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_9

    .line 17
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_a

    .line 18
    :cond_9
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->buildDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 19
    :cond_a
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplatePackageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 20
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 21
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateDeployVersion()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    move-object v5, v1

    :cond_b
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_0

    :cond_c
    move-object v1, v6

    .line 22
    :goto_0
    invoke-virtual {v3, v5, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 23
    invoke-virtual {p0, v0, p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p3

    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_e

    .line 25
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 26
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    move-object v2, p3

    .line 27
    :cond_e
    :goto_2
    invoke-virtual {p2, v2}, Lcom/cloud/tmc/integration/model/PrepareContext;->setCommonResModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    if-eqz p1, :cond_f

    .line 28
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_f
    return-void
.end method
