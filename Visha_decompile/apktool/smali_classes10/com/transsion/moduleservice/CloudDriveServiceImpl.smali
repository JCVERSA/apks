.class public Lcom/transsion/moduleservice/CloudDriveServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/moduleservice/ICloudDriveService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/clouddrive/clouddriveservice"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudDriveService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    const-string p0, "CloudDriveService"

    :try_start_0
    invoke-static {p1}, Lcom/transsion/palmsdk/b;->r(Landroid/content/Context;)V

    const-string p1, "PalmIdManager initialized successfully in init method"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize PalmIdManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public initCloudDriveSdk(Landroid/content/Context;)V
    .locals 6

    const-string p0, "CloudDriveService"

    :try_start_0
    new-instance v0, Lvz0$a;

    invoke-direct {v0}, Lvz0$a;-><init>()V

    invoke-static {}, Lge;->e()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lge;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const-string v1, "environment_mode"

    invoke-static {p1, v1, v3}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :cond_3
    :goto_2
    const-string v4, "vishaplayer"

    invoke-virtual {v0, v4}, Lvz0$a;->m(Ljava/lang/String;)Lvz0$a;

    move-result-object v4

    const-string v5, "visha"

    invoke-virtual {v4, v5}, Lvz0$a;->o(Ljava/lang/String;)Lvz0$a;

    move-result-object v4

    new-instance v5, Lfw7;

    invoke-direct {v5}, Lfw7;-><init>()V

    invoke-virtual {v4, v5}, Lvz0$a;->r(Lipa;)Lvz0$a;

    move-result-object v4

    new-instance v5, Lgw7;

    invoke-direct {v5}, Lgw7;-><init>()V

    invoke-virtual {v4, v5}, Lvz0$a;->t(Lxfb;)Lvz0$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lvz0$a;->q(Z)Lvz0$a;

    move-result-object v4

    invoke-static {}, Lge;->e()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lge;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    invoke-virtual {v4, v2}, Lvz0$a;->p(Z)Lvz0$a;

    invoke-virtual {v0}, Lvz0$a;->a()Lvz0;

    move-result-object v0

    sget-object v2, La41;->a:La41;

    invoke-virtual {v2, p1, v0}, La41;->g(Landroid/content/Context;Lvz0;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CloudDriveSdk initialized successfully isTestEnvironment:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize CloudDriveSdk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-void
.end method
