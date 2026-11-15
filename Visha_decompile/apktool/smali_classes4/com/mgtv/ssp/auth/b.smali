.class public Lcom/mgtv/ssp/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/mgtv/ssp/auth/b;


# instance fields
.field private a:I

.field private b:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

.field private c:Lcom/mgtv/ssp/bean/config/a;

.field private d:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/ssp/auth/b;->a:I

    return-void
.end method

.method public static a()Lcom/mgtv/ssp/auth/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgtv/ssp/auth/b;->e:Lcom/mgtv/ssp/auth/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgtv/ssp/auth/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/auth/b;->e:Lcom/mgtv/ssp/auth/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgtv/ssp/auth/b;

    invoke-direct {v1}, Lcom/mgtv/ssp/auth/b;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/auth/b;->e:Lcom/mgtv/ssp/auth/b;

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
    sget-object v0, Lcom/mgtv/ssp/auth/b;->e:Lcom/mgtv/ssp/auth/b;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mgtv/ssp/auth/b;->a:I

    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/config/SspSdkConfig;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/mgtv/ssp/auth/b;->b:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/config/SspSpaceConfig;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/mgtv/ssp/auth/b;->d:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/config/a;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mgtv/ssp/auth/b;->c:Lcom/mgtv/ssp/bean/config/a;

    return-void
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/auth/b;->a:I

    return p0
.end method

.method public c()Lcom/mgtv/ssp/bean/config/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/auth/b;->c:Lcom/mgtv/ssp/bean/config/a;

    return-object p0
.end method

.method public d()Lcom/mgtv/ssp/bean/config/SspSpaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/auth/b;->d:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    return-object p0
.end method

.method public e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/auth/b;->b:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    return-object p0
.end method

.method public f()Z
    .locals 1

    iget v0, p0, Lcom/mgtv/ssp/auth/b;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/auth/b;->c:Lcom/mgtv/ssp/bean/config/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/bean/config/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/auth/b;->b:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
