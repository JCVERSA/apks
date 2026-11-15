.class public Lcom/doman/core/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/doman/core/manager/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InitConfigManager"

    iput-object v0, p0, Lcom/doman/core/manager/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/doman/core/manager/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/doman/core/manager/a;->c:Lcom/doman/core/manager/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/doman/core/manager/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doman/core/manager/a;->c:Lcom/doman/core/manager/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/doman/core/manager/a;

    invoke-direct {v1}, Lcom/doman/core/manager/a;-><init>()V

    sput-object v1, Lcom/doman/core/manager/a;->c:Lcom/doman/core/manager/a;

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
    sget-object v0, Lcom/doman/core/manager/a;->c:Lcom/doman/core/manager/a;

    return-object v0
.end method

.method public static a(Lcom/doman/core/a/f;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/doman/core/d/b;->a()Lcom/doman/core/d/b;

    const-string v0, "INIT_CONFIG_BEAN"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception p0

    :goto_0
    move-object v1, v0

    goto :goto_2

    :catch_2
    :goto_1
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_0

    :catch_3
    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    throw p0

    :catch_6
    move-object v2, v1

    :goto_3
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_3
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :cond_4
    return-void
.end method

.method public static b()Lcom/doman/core/a/f;
    .locals 1

    invoke-static {}, Lcom/doman/core/d/b;->a()Lcom/doman/core/d/b;

    const-string v0, "INIT_CONFIG_BEAN"

    invoke-static {v0}, Lcom/doman/core/d/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doman/core/a/f;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/doman/core/a/f;->A:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d()I
    .locals 1

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/doman/core/a/f;->D:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/doman/core/a/f;->q:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/doman/core/a/f;->E:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
