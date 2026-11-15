.class public Lcom/mgtv/data/aphone/core/i/b/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/LocalSocket;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mgtv/data/aphone/core/i/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/b/a;->a:Landroid/net/LocalSocket;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/b/a;->b:Landroid/util/SparseArray;

    const/16 v0, 0xb

    invoke-static {}, Lcom/mgtv/data/aphone/core/i/b/b;->a()Lcom/mgtv/data/aphone/core/i/b/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "TraceLocalConnectionThread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private a(BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/mgtv/data/aphone/core/i/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mgtv/data/aphone/core/i/a/a;-><init>(BI)V

    new-instance p1, Lcom/mgtv/data/aphone/core/i/a/c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mgtv/data/aphone/core/i/a/c;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/i/a/c;->a()[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/i/a/c;->a()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/b/a;->a:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/mgtv/data/aphone/core/i/b/a;->a:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v3

    new-array v3, v3, [B

    :goto_0
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v5

    const/16 v6, 0x16

    if-eq v4, v5, :cond_1

    invoke-direct {p0, v6, v2}, Lcom/mgtv/data/aphone/core/i/b/a;->a(BLjava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/mgtv/data/aphone/core/i/a/a;->a([B)Lcom/mgtv/data/aphone/core/i/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/data/aphone/core/i/a/a;->b()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, v6, v2}, Lcom/mgtv/data/aphone/core/i/b/a;->a(BLjava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/b/a;->a:Landroid/net/LocalSocket;

    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iput-object v1, p0, Lcom/mgtv/data/aphone/core/i/b/a;->a:Landroid/net/LocalSocket;

    goto/16 :goto_a

    :cond_3
    :try_start_6
    iget-short v5, v4, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    if-lez v5, :cond_5

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget-short v7, v4, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/mgtv/data/aphone/core/i/a/b;

    invoke-direct {v6, v4, v5}, Lcom/mgtv/data/aphone/core/i/a/b;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    goto :goto_6

    :cond_4
    move-object v6, v1

    goto :goto_6

    :cond_5
    new-instance v6, Lcom/mgtv/data/aphone/core/i/a/b;

    invoke-direct {v6, v4, v1}, Lcom/mgtv/data/aphone/core/i/a/b;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    :goto_6
    if-eqz v6, :cond_6

    iget-object v4, p0, Lcom/mgtv/data/aphone/core/i/b/a;->b:Landroid/util/SparseArray;

    iget-object v5, v6, Lcom/mgtv/data/aphone/core/i/a/b;->a:Lcom/mgtv/data/aphone/core/i/a/a;

    iget-byte v5, v5, Lcom/mgtv/data/aphone/core/i/a/a;->b:B

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/data/aphone/core/i/b/c;

    if-eqz v4, :cond_6

    invoke-interface {v4, v6}, Lcom/mgtv/data/aphone/core/i/b/c;->a(Lcom/mgtv/data/aphone/core/i/a/b;)Lcom/mgtv/data/aphone/core/i/a/c;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/mgtv/data/aphone/core/i/a/c;->a()[B

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/mgtv/data/aphone/core/i/a/c;->a()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x17

    invoke-direct {p0, v4, v2}, Lcom/mgtv/data/aphone/core/i/b/a;->a(BLjava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_0
    move-object v2, v1

    goto :goto_7

    :catchall_1
    move-object v0, v1

    move-object v2, v0

    :catchall_2
    :goto_7
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_9
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/b/a;->a:Landroid/net/LocalSocket;

    if-eqz v0, :cond_9

    :try_start_9
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_9
    :goto_a
    return-void
.end method
