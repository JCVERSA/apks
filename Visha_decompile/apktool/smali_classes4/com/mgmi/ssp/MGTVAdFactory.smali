.class public Lcom/mgmi/ssp/MGTVAdFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/mgmi/ssp/MGTVAdFactory;


# instance fields
.field private chToken:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field isAllowedRC:Z

.field private volatile isInited:Z

.field private oaid:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->did:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->oaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->gaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->chToken:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->isInited:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->isAllowedRC:Z

    return-void
.end method

.method public static getInstance()Lcom/mgmi/ssp/MGTVAdFactory;
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/MGTVAdFactory;->instance:Lcom/mgmi/ssp/MGTVAdFactory;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgmi/ssp/MGTVAdFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgmi/ssp/MGTVAdFactory;->instance:Lcom/mgmi/ssp/MGTVAdFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgmi/ssp/MGTVAdFactory;

    invoke-direct {v1}, Lcom/mgmi/ssp/MGTVAdFactory;-><init>()V

    sput-object v1, Lcom/mgmi/ssp/MGTVAdFactory;->instance:Lcom/mgmi/ssp/MGTVAdFactory;

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
    sget-object v0, Lcom/mgmi/ssp/MGTVAdFactory;->instance:Lcom/mgmi/ssp/MGTVAdFactory;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setInback(Z)V
    .locals 0

    sput-boolean p0, Lcom/mgmi/f/e;->i:Z

    return-void
.end method

.method public static setStickMode(Z)V
    .locals 0

    invoke-static {p0}, Lcom/mgmi/f/e;->h(Z)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/doman/core/CoreMain;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getChToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->chToken:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getDid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->did:Ljava/lang/String;

    return-object p0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->oaid:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "mgmi"

    :try_start_0
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v1

    invoke-static {p1}, Lmpd;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/doman/core/CoreMain;->initparams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mgmi/ssp/MGTVAdFactory;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mgmi/f/f;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/doman/core/CoreMain;->onCreate(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Lcom/mgmi/ads/api/c;->a(Landroid/app/Application;)V

    invoke-static {p1}, Lh2d;->f(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    sput-object p2, Lcom/mgmi/platform/b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgmi/platform/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, p3}, Lcom/mgmi/platform/b/b;->a(Landroid/app/Application;ZLjava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init getSdkVersion:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getSdkVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgmi/platform/a;->a()Lcom/mgmi/platform/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-boolean v1, p0, Lcom/mgmi/ssp/MGTVAdFactory;->isInited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public isAdSdkInit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->isInited:Z

    return p0
.end method

.method public isAllowedRC()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ssp/MGTVAdFactory;->isAllowedRC:Z

    return p0
.end method

.method public isIsopenInerBrowser()Z
    .locals 0

    invoke-static {}, Lcom/mgmi/f/e;->d()Z

    move-result p0

    return p0
.end method

.method public isSupportVip()Z
    .locals 0

    invoke-static {}, Lcom/mgmi/f/e;->b()Z

    move-result p0

    return p0
.end method

.method public isVip()Z
    .locals 0

    invoke-static {}, Lcom/mgmi/f/e;->c()Z

    move-result p0

    return p0
.end method

.method public setAdControlRendType(I)V
    .locals 0

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/f/e;->a(I)V

    return-void
.end method

.method public setAllowedRC(Z)V
    .locals 0

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/platform/b/b;->a(Z)V

    return-void
.end method

.method public setAreaCode(I)V
    .locals 0

    invoke-static {p1}, Lcom/mgmi/platform/e;->b(I)V

    return-void
.end method

.method public setChToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/MGTVAdFactory;->chToken:Ljava/lang/String;

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/MGTVAdFactory;->did:Ljava/lang/String;

    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/MGTVAdFactory;->gaid:Ljava/lang/String;

    return-void
.end method

.method public setIsOverSea(I)V
    .locals 0

    invoke-static {p1}, Lcom/mgmi/platform/e;->a(I)V

    return-void
.end method

.method public setIsVip(Z)V
    .locals 0

    invoke-static {p1}, Lcom/mgmi/f/e;->d(Z)V

    return-void
.end method

.method public setIsopenInerBrowser(Z)V
    .locals 0

    invoke-static {p1}, Lcom/mgmi/f/e;->e(Z)V

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/MGTVAdFactory;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setSupportVip(Z)V
    .locals 0

    invoke-static {p1}, Lcom/mgmi/f/e;->c(Z)V

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/MGTVAdFactory;->uuid:Ljava/lang/String;

    return-void
.end method
