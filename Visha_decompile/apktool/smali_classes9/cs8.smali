.class public final Lcs8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/push/bean/PushRequest$ReportContentData;
    .locals 7

    new-instance p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;

    invoke-direct {p0}, Lcom/transsion/push/bean/PushRequest$ReportContentData;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Lxj1;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/ga/AthenaAnalytics;->G(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->vaid:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->gaid:Ljava/lang/String;

    const-string v1, "2.0.5.02"

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->sdkVersion:Ljava/lang/String;

    const/16 v1, 0x426c

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->sdkVersionCode:I

    invoke-static {}, Lla2;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->pkg:Ljava/lang/String;

    invoke-static {}, Llk8;->a()I

    move-result v1

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->confVersion:I

    invoke-static {}, Lylc;->b()I

    move-result v1

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->whitelistVersion:I

    invoke-static {}, Lnk8;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lnk8;->c()I

    move-result v1

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->platVer:I

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "push_is_report_detail"

    invoke-virtual {v1, v4, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->clientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->withDetail:Z

    const-string v3, ""

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->aid:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " "

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->brand:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->androidVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->cid:I

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->lac:I

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v1

    const-string v4, "push_language"

    invoke-virtual {v1, v4, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->language:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v6

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->language:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lla2;->d()I

    move-result v1

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->mcc:I

    invoke-static {}, Lla2;->e()I

    move-result v1

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->mnc:I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->model:Ljava/lang/String;

    invoke-static {}, Lfz6;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->network:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->osVersion:Ljava/lang/String;

    invoke-static {}, Lxj1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lla2;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->appVersion:Ljava/lang/String;

    invoke-static {}, Lhf;->b()I

    move-result v1

    iput v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->appVersionCode:I

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v1

    const-string v4, "push_token"

    invoke-virtual {v1, v4, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :goto_4
    iput-object v6, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->country:Ljava/lang/String;

    :cond_7
    invoke-static {p0}, Lnk8;->h(Lcom/transsion/push/bean/PushRequest$ReportContentData;)V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->appKey:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_client_id"

    invoke-virtual {v0, v1, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->clientId:Ljava/lang/String;

    invoke-static {}, Lxj1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/push/utils/NotificationAssistUtils;->isOpenNotification(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x2

    :goto_5
    iput v2, p0, Lcom/transsion/push/bean/PushRequest$ReportContentData;->noticeEnable:I

    return-object p0
.end method

.method public final b()Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;
    .locals 3

    new-instance p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;

    invoke-direct {p0}, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;-><init>()V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->appKey:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->clientId:Ljava/lang/String;

    const-string v0, "2.0.5.02"

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->sdkVersion:Ljava/lang/String;

    const/16 v0, 0x426c

    iput v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->sdkVersionCode:I

    invoke-static {}, Lxj1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lla2;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->appVersion:Ljava/lang/String;

    invoke-static {}, Lhf;->b()I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->appVersionCode:I

    invoke-static {}, Llk8;->a()I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->confVersion:I

    invoke-static {}, Lylc;->b()I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->whitelistVersion:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/push/bean/PushRequest$TopicContentData;
    .locals 4

    new-instance p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;

    invoke-direct {p0}, Lcom/transsion/push/bean/PushRequest$TopicContentData;-><init>()V

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->clientId:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->gaid:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->appKey:Ljava/lang/String;

    invoke-static {}, Lhf;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->appVersion:Ljava/lang/String;

    invoke-static {}, Lhf;->b()I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->appVersionCode:I

    const-string v0, "2.0.5.02"

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->sdkVersion:Ljava/lang/String;

    const/16 v0, 0x426c

    iput v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->sdkVersionCode:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->topics:Ljava/util/ArrayList;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->topics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->topics:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p2, p0, Lcom/transsion/push/bean/PushRequest$TopicContentData;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Lcom/transsion/push/ITopicListener;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/transsion/push/bean/SelfDestroyInfo;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcs8;->b()Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;

    move-result-object p0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get self-destroying request data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushRequest$SelfDestroyContentData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    new-instance v1, Lu9;

    invoke-direct {v1}, Lu9;-><init>()V

    new-instance v2, Lkw8;

    const-string v3, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKEaYIhDF/GSQZagVqAOo7UU/GqDjQBU5muTCS6qPMfAdtKOzbhRpNCJA/ZmgBxPhc8RVLPO9yiJn5g+hy+tz3cCAwEAAQ=="

    invoke-direct {v2, v3}, Lkw8;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/push/bean/PushRequest;

    invoke-direct {v3}, Lcom/transsion/push/bean/PushRequest;-><init>()V

    invoke-static {p0}, Lqab;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lu9;->e(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ls90;->c([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lu9;->i()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lkw8;->d([B)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ls90;->c([B)Ljava/lang/String;

    move-result-object v4

    iput-object p0, v3, Lcom/transsion/push/bean/PushRequest;->data:Ljava/lang/String;

    iput-object v4, v3, Lcom/transsion/push/bean/PushRequest;->key:Ljava/lang/String;

    invoke-static {v3}, Lqab;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {}, Lnk8;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/config"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "self-destroying request url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {v3, p0}, Lvt4;->c(Ljava/lang/String;[B)[B

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "the response data is empty"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    const-class p0, Lcom/transsion/push/bean/PushResponse;

    invoke-static {v3, p0}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/push/bean/PushResponse;

    if-nez p0, :cond_2

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "parse self-destroying BaseResponse failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget v3, p0, Lcom/transsion/push/bean/PushResponse;->status:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self-destroying BaseResponse status error, status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/push/bean/PushResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/push/bean/PushResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/transsion/push/bean/PushResponse;->data:Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;

    if-nez p0, :cond_4

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "parse self-destroying signedResponse failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    iget-object v3, p0, Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;->data:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lq0a;->a([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;->sign:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lkw8;->g([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "self-destroying verify signature failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;->data:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lu9;->d([B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    const-class p0, Lcom/transsion/push/bean/SelfDestroyInfo;

    invoke-static {v2, p0}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/push/bean/SelfDestroyInfo;

    if-nez p0, :cond_6

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "parse self-destroying info failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_6
    return-object p0

    :goto_0
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self-destroying Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-object v0
.end method

.method public f()Lcom/transsion/push/bean/ConfigInfo;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcs8;->a()Lcom/transsion/push/bean/PushRequest$ReportContentData;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "dataContent is null, skip syncActive"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get config request data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushRequest$ReportContentData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    new-instance v1, Lu9;

    invoke-direct {v1}, Lu9;-><init>()V

    new-instance v2, Lkw8;

    const-string v3, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKEaYIhDF/GSQZagVqAOo7UU/GqDjQBU5muTCS6qPMfAdtKOzbhRpNCJA/ZmgBxPhc8RVLPO9yiJn5g+hy+tz3cCAwEAAQ=="

    invoke-direct {v2, v3}, Lkw8;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/push/bean/PushRequest;

    invoke-direct {v3}, Lcom/transsion/push/bean/PushRequest;-><init>()V

    invoke-static {p0}, Lqab;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "jsonContent is empty, skip syncActive"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {v1, p0}, Lu9;->e(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ls90;->c([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lu9;->i()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lkw8;->d([B)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ls90;->c([B)Ljava/lang/String;

    move-result-object v4

    iput-object p0, v3, Lcom/transsion/push/bean/PushRequest;->data:Ljava/lang/String;

    iput-object v4, v3, Lcom/transsion/push/bean/PushRequest;->key:Ljava/lang/String;

    invoke-static {v3}, Lqab;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "pushRequestJson is empty, skip syncActive"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {}, Lnk8;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v0

    :cond_3
    invoke-static {}, Lnk8;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tpms"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/report"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    sget-object v4, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {v3, p0}, Lvt4;->c(Ljava/lang/String;[B)[B

    move-result-object p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "the response data is empty"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    const-class p0, Lcom/transsion/push/bean/PushResponse;

    invoke-static {v3, p0}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/push/bean/PushResponse;

    if-nez p0, :cond_6

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "parse syncActive BaseResponse failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_6
    iget v3, p0, Lcom/transsion/push/bean/PushResponse;->status:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_7

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncActive BaseResponse status error, status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/push/bean/PushResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/push/bean/PushResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_7
    iget-object p0, p0, Lcom/transsion/push/bean/PushResponse;->data:Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;

    if-nez p0, :cond_8

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "parse syncActive signedResponse failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    iget-object v3, p0, Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;->data:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lq0a;->a([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;->sign:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lkw8;->g([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "syncActive verify signature failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_9
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/push/bean/PushResponse$SignedEncryptedData;->data:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lu9;->d([B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "content is empty, skip syncActive"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0

    :cond_a
    const-class p0, Lcom/transsion/push/bean/ConfigInfo;

    invoke-static {v2, p0}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/push/bean/ConfigInfo;

    if-nez p0, :cond_b

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "parse syncActive reportResponse failed"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_b
    return-object p0

    :goto_1
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncActive Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 7

    const-string v0, ", "

    const-string v1, "topics BaseResponse status error, status:"

    const-string v2, "parse topics BaseResponse failed"

    const-string v3, "the response data is empty"

    invoke-virtual {p0, p1, p2}, Lcs8;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/push/bean/PushRequest$TopicContentData;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topics request data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/push/bean/PushRequest$TopicContentData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    new-instance p2, Lu9;

    invoke-direct {p2}, Lu9;-><init>()V

    new-instance v4, Lkw8;

    const-string v5, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKEaYIhDF/GSQZagVqAOo7UU/GqDjQBU5muTCS6qPMfAdtKOzbhRpNCJA/ZmgBxPhc8RVLPO9yiJn5g+hy+tz3cCAwEAAQ=="

    invoke-direct {v4, v5}, Lkw8;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/push/bean/PushRequest;

    invoke-direct {v5}, Lcom/transsion/push/bean/PushRequest;-><init>()V

    :try_start_0
    invoke-static {p1}, Lqab;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu9;->e(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ls90;->c([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lu9;->i()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lkw8;->d([B)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ls90;->c([B)Ljava/lang/String;

    move-result-object p2

    iput-object p1, v5, Lcom/transsion/push/bean/PushRequest;->data:Ljava/lang/String;

    iput-object p2, v5, Lcom/transsion/push/bean/PushRequest;->key:Ljava/lang/String;

    invoke-static {v5}, Lqab;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {}, Lnk8;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/topics"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v4, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topics request url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {p2, p1}, Lvt4;->c(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1, v3}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p3, v3}, Lcs8;->d(Lcom/transsion/push/ITopicListener;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    const-class p1, Lcom/transsion/push/bean/PushResponse;

    invoke-static {p2, p1}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/bean/PushResponse;

    if-nez p1, :cond_2

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p3, v2}, Lcs8;->d(Lcom/transsion/push/ITopicListener;Ljava/lang/String;)V

    return-void

    :cond_2
    iget p2, p1, Lcom/transsion/push/bean/PushResponse;->status:I

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_3

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/transsion/push/bean/PushResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/transsion/push/bean/PushResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/push/bean/PushResponse;->status:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/push/bean/PushResponse;->message:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcs8;->d(Lcom/transsion/push/ITopicListener;Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/transsion/push/ITopicListener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topics Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcs8;->d(Lcom/transsion/push/ITopicListener;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
