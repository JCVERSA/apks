.class public Lcom/hunantv/imgo/log/b/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/LocalSocket;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/hunantv/imgo/log/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/hunantv/imgo/log/b/b;->b:Landroid/util/SparseArray;

    const/16 v0, 0xb

    invoke-static {}, Lcom/hunantv/imgo/log/b/c;->a()Lcom/hunantv/imgo/log/b/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/hunantv/imgo/log/b/b;->b:Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-static {}, Lcom/hunantv/imgo/log/b/e;->a()Lcom/hunantv/imgo/log/b/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/hunantv/imgo/log/b/b;->b:Landroid/util/SparseArray;

    const/16 v0, 0xd

    invoke-static {}, Lcom/hunantv/imgo/log/b/e;->a()Lcom/hunantv/imgo/log/b/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/hunantv/imgo/log/b/b;->b:Landroid/util/SparseArray;

    const/16 v0, 0xc

    invoke-static {}, Lcom/hunantv/imgo/log/b/a;->a()Lcom/hunantv/imgo/log/b/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "ConnectionThread"

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

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "responseError cmd = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocalConnection"

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/hunantv/imgo/log/entity/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/imgo/log/entity/a;-><init>(BI)V

    new-instance p1, Lcom/hunantv/imgo/log/entity/c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/hunantv/imgo/log/entity/c;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/c;->a()[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/c;->a()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "run start"

    const-string v1, "LocalConnection"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/hunantv/imgo/log/entity/a;->c()I

    move-result v4

    new-array v4, v4, [B

    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/log/entity/a;->c()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    invoke-static {}, Lcom/hunantv/imgo/log/entity/a;->c()I

    move-result v6

    const/16 v7, 0x16

    if-eq v5, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received  client protocol exception, length = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7, v3}, Lcom/hunantv/imgo/log/b/b;->a(BLjava/io/OutputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto/16 :goto_7

    :cond_1
    invoke-static {v4}, Lcom/hunantv/imgo/log/entity/a;->a([B)Lcom/hunantv/imgo/log/entity/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/imgo/log/entity/a;->b()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v4, "received client protocol invalid"

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7, v3}, Lcom/hunantv/imgo/log/b/b;->a(BLjava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iput-object v0, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    goto/16 :goto_a

    :cond_3
    :try_start_6
    iget-short v6, v5, Lcom/hunantv/imgo/log/entity/a;->a:S

    if-lez v6, :cond_5

    new-array v6, v6, [B

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    iget-short v8, v5, Lcom/hunantv/imgo/log/entity/a;->a:S

    if-ne v7, v8, :cond_4

    new-instance v7, Lcom/hunantv/imgo/log/entity/b;

    invoke-direct {v7, v5, v6}, Lcom/hunantv/imgo/log/entity/b;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    goto :goto_6

    :cond_4
    move-object v7, v0

    goto :goto_6

    :cond_5
    new-instance v7, Lcom/hunantv/imgo/log/entity/b;

    invoke-direct {v7, v5, v0}, Lcom/hunantv/imgo/log/entity/b;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    :goto_6
    if-eqz v7, :cond_6

    iget-object v5, p0, Lcom/hunantv/imgo/log/b/b;->b:Landroid/util/SparseArray;

    iget-object v6, v7, Lcom/hunantv/imgo/log/entity/b;->a:Lcom/hunantv/imgo/log/entity/a;

    iget-byte v6, v6, Lcom/hunantv/imgo/log/entity/a;->b:B

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/imgo/log/b/f;

    if-eqz v5, :cond_6

    invoke-interface {v5, v7}, Lcom/hunantv/imgo/log/b/f;->a(Lcom/hunantv/imgo/log/entity/b;)Lcom/hunantv/imgo/log/entity/c;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/hunantv/imgo/log/entity/c;->a()[B

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/hunantv/imgo/log/entity/c;->a()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x17

    invoke-direct {p0, v5, v3}, Lcom/hunantv/imgo/log/b/b;->a(BLjava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    move-object v3, v0

    goto :goto_7

    :catchall_2
    move-exception v4

    move-object v2, v0

    move-object v3, v2

    :goto_7
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection exception and close this connection, e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_9
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v2

    goto/16 :goto_4

    :cond_9
    :goto_a
    const-string p0, "loop end"

    invoke-static {v1, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v1

    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_b

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_b
    if-eqz v3, :cond_b

    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_c

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_c
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    if-eqz v2, :cond_c

    :try_start_d
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_d

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    iput-object v0, p0, Lcom/hunantv/imgo/log/b/b;->a:Landroid/net/LocalSocket;

    :cond_c
    throw v1
.end method
