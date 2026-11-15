.class public Lcom/mgtv/ssp/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/ssp/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgtv/ssp/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgtv/ssp/g;->a:Lcom/mgtv/ssp/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgtv/ssp/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/g;->a:Lcom/mgtv/ssp/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgtv/ssp/g;

    invoke-direct {v1}, Lcom/mgtv/ssp/g;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/g;->a:Lcom/mgtv/ssp/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/g;->a:Lcom/mgtv/ssp/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/mgtv/ssp/b;->a()Lcom/mgtv/ssp/b;

    move-result-object p0

    const-string v0, "vod"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/ssp/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgSspInitCallback;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgSspInitCallback;Lcom/hunantv/imgo/safe/SafeInformationInterface;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgSspInitCallback;Lcom/hunantv/imgo/safe/SafeInformationInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    const-string p0, ""

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->m(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/hunantv/imgo/BaseApplication;->setContext(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/safe/a;->a()Lcom/hunantv/imgo/safe/a;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/hunantv/imgo/safe/a;->a(Lcom/hunantv/imgo/safe/SafeInformationInterface;)V

    .line 12
    new-instance p5, Lcom/mgtv/ssp/auth/a;

    invoke-direct {p5}, Lcom/mgtv/ssp/auth/a;-><init>()V

    .line 13
    new-instance v0, Lcom/mgtv/ssp/bean/config/a;

    invoke-direct {v0, p2, p3}, Lcom/mgtv/ssp/bean/config/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, p1, p0, v0, p4}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
    .locals 0

    .line 22
    invoke-static {}, Lcom/mgtv/ssp/b;->a()Lcom/mgtv/ssp/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/ssp/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V

    return-void
.end method

.method public a(Lcom/mgtv/ssp/authbase/AccountInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/mgtv/ssp/authbase/AccountInfo;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->o(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/mgtv/ssp/authbase/AccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    const-string p0, ""

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->o(Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->j(Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 20
    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->a(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->n(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->e(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "2.0.6"

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->t(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->a(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
