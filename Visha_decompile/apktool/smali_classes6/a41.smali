.class public final La41;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La41;

.field public static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La41;

    invoke-direct {v0}, La41;-><init>()V

    sput-object v0, La41;->a:La41;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-boolean p0, La41;->b:Z

    if-nez p0, :cond_0

    const-string p0, "CloudTransferFactory"

    const-string v0, "CloudTransferFactory not initialized, please call init() first"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)Lmq3;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La41;->a()V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object p0

    invoke-virtual {p0}, Lrz0;->c()Lmq3;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroid/content/Context;)Lxy0;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La41;->a()V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->g:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;->a(Landroid/content/Context;)Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/content/Context;)Lfu4;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La41;->a()V

    sget-object p0, Lez0;->h:Lez0$a;

    invoke-virtual {p0, p1}, Lez0$a;->a(Landroid/content/Context;)Lez0;

    move-result-object p0

    return-object p0
.end method

.method public final e(Landroid/content/Context;)Leu9;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La41;->a()V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object p0

    invoke-virtual {p0}, Lrz0;->d()Leu9;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroid/content/Context;)Lju4;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La41;->a()V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->h:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;->a(Landroid/content/Context;)Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized g(Landroid/content/Context;Lvz0;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, La41;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/a;->j(Landroid/content/Context;Lvz0;)Lrz0;

    const/4 p1, 0x1

    sput-boolean p1, La41;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
