.class public Lcom/mgmi/platform/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mgmi/platform/b/b;


# instance fields
.field a:Z

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/mgmi/platform/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/platform/b/b;->c:I

    iput-boolean v0, p0, Lcom/mgmi/platform/b/b;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/b/b;->a:Z

    return-void
.end method

.method public static a()Lcom/mgmi/platform/b/b;
    .locals 2

    .line 25
    sget-object v0, Lcom/mgmi/platform/b/b;->b:Lcom/mgmi/platform/b/b;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/mgmi/platform/b/b;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/mgmi/platform/b/b;->b:Lcom/mgmi/platform/b/b;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/mgmi/platform/b/b;

    invoke-direct {v1}, Lcom/mgmi/platform/b/b;-><init>()V

    sput-object v1, Lcom/mgmi/platform/b/b;->b:Lcom/mgmi/platform/b/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/platform/b/b;->b:Lcom/mgmi/platform/b/b;

    return-object v0
.end method

.method private a(Landroid/app/Application;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Lcom/mgmi/e/f;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object v0

    new-instance v1, Lcom/mgmi/platform/b/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mgmi/platform/b/b$1;-><init>(Lcom/mgmi/platform/b/b;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li4d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object p0

    const-string v0, "mgmiapicache"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/b/b;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/platform/b/b;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/b/b;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgmi/platform/b/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/db/dao3/d;->a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 20
    const-string v1, "null"

    const-string v2, "mgmiad"

    if-eqz p1, :cond_2

    .line 21
    iget-boolean p0, p0, Lcom/mgmi/platform/b/b;->d:Z

    if-nez p0, :cond_1

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MGMISDKFactory.createAdsLoader==null:mInitFlag is false\uff0cAdsType\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 23
    :cond_1
    invoke-static {}, Lcom/mgmi/ads/api/b;->a()Lcom/mgmi/ads/api/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MGMISDKFactory.createAdsLoader==null:context is null\uff0cAdsType\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/app/Application;ZLjava/lang/String;)V
    .locals 7

    .line 4
    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mgmi/platform/b/b;->a(Landroid/app/Application;ZLjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Application;ZLjava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/mgmi/ads/api/c;->a(Landroid/app/Application;)V

    .line 6
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/mgmi/trace/a;->a(J)V

    .line 7
    iput-object p3, p0, Lcom/mgmi/platform/b/b;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 8
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/trace/a;->b()V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MGMISDKFactory.initialize\uff0cisMainProcess\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cpreInstallChannel\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cinitCostTime\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mgmiad"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mgmi initialize process = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "zp"

    invoke-static {p3, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/mgmi/ads/api/b;->a()Lcom/mgmi/ads/api/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgmi/ads/api/b;->a(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/mgmi/platform/b/b;->a(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lf4d;->a(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1, p6}, Lcom/mgmi/platform/b/b;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    .line 17
    invoke-static {}, Lbgd;->c()Lhhd;

    const/4 p0, 0x0

    throw p0
.end method

.method public a(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/mgmi/platform/b/b;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "MGADSDK_3.5.9_241130"

    return-object p0
.end method

.method public c()I
    .locals 0

    invoke-static {}, Lcom/mgmi/f/f;->p()I

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/b/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/b/b;->f:I

    return p0
.end method

.method public f()I
    .locals 0

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/platform/b;->j()I

    move-result p0

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/b/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h()Lcom/mgmi/platform/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/b/b;->h:Lcom/mgmi/platform/a/a;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/b/b;->a:Z

    return p0
.end method
