.class public Lcom/mgtv/ssp/MgSspSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static inst:Lcom/mgtv/ssp/MgSspSdk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/mgtv/ssp/MgSspSdk;
    .locals 2

    sget-object v0, Lcom/mgtv/ssp/MgSspSdk;->inst:Lcom/mgtv/ssp/MgSspSdk;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgtv/ssp/MgSspSdk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/MgSspSdk;->inst:Lcom/mgtv/ssp/MgSspSdk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/ssp/MgSspSdk;

    invoke-direct {v1}, Lcom/mgtv/ssp/MgSspSdk;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/MgSspSdk;->inst:Lcom/mgtv/ssp/MgSspSdk;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/MgSspSdk;->inst:Lcom/mgtv/ssp/MgSspSdk;

    return-object v0
.end method


# virtual methods
.method public changeAreaLanguage(IZ)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/utils/language/c;->a()Lcom/mgtv/ssp/utils/language/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/utils/language/c;->a(IZ)V

    return-void
.end method

.method public changeLanguage(IZ)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/utils/language/c;->a()Lcom/mgtv/ssp/utils/language/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/utils/language/c;->a(IZ)V

    return-void
.end method

.method public getLoadingTitle()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/g;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/g;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/mgtv/ssp/InitArgs;Lcom/mgtv/ssp/MgSspInitCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    iget-object v0, p2, Lcom/mgtv/ssp/InitArgs;->mid:Ljava/lang/String;

    iget-object p2, p2, Lcom/mgtv/ssp/InitArgs;->cToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mgtv/ssp/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgSspInitCallback;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/mgtv/ssp/InitArgs;Lcom/mgtv/ssp/MgSspInitCallback;Lcom/hunantv/imgo/safe/SafeInformationInterface;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object v0

    iget-object v2, p2, Lcom/mgtv/ssp/InitArgs;->mid:Ljava/lang/String;

    iget-object v3, p2, Lcom/mgtv/ssp/InitArgs;->cToken:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgSspInitCallback;Lcom/hunantv/imgo/safe/SafeInformationInterface;)V

    return-void
.end method

.method public jumpTo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public needShowLoading()Z
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/g;->c()Z

    move-result p0

    return p0
.end method

.method public requestMgtvJumpData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/ssp/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V

    return-void
.end method

.method public setAdsID(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_POSID:Ljava/lang/String;

    return-void
.end method

.method public setAdsSwitch(Z)V
    .locals 0

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setAllowedRC(Z)V

    return-void
.end method

.method public setContentSwitch(Z)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/g;->a(Z)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFoldDeviceTag(Z)V
    .locals 0

    invoke-static {p1}, Lcom/hunantv/imgo/util/h;->a(Z)V

    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setGaid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIsOverSea(Z)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/g;->b(Z)V

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/g;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setOaid(Ljava/lang/String;)V

    return-void
.end method

.method public setSupportIpv6(I)V
    .locals 0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->e(I)V

    return-void
.end method

.method public setSupportVip(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public startAccountBiz(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/mgtv/ssp/authbase/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    :cond_0
    return-void
.end method

.method public updateAccountInfo(Lcom/mgtv/ssp/authbase/AccountInfo;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/g;->a(Lcom/mgtv/ssp/authbase/AccountInfo;)V

    return-void
.end method
