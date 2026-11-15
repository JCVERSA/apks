.class Lcom/hunantv/imgo/log/a/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/log/a/a;

.field private b:Z

.field private c:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/log/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/log/a/a$a;->a:Lcom/hunantv/imgo/log/a/a;

    const-string p1, "LocalClient_WorkThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/imgo/log/a/a$a;->b:Z

    return-void
.end method

.method private a()I
    .locals 11

    .line 4
    const-string v0, "doWork start"

    const-string v1, "LogClient"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/log/entity/a;->c()I

    move-result v0

    new-array v0, v0, [B

    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/hunantv/imgo/log/a/a$a;->c:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v5, p0, Lcom/hunantv/imgo/log/a/a$a;->c:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v5

    move v5, v2

    goto :goto_0

    :catch_0
    move-object v4, v3

    :catch_1
    const/16 v5, 0x65

    move-object v6, v3

    .line 8
    :goto_0
    iget-boolean v7, p0, Lcom/hunantv/imgo/log/a/a$a;->b:Z

    if-nez v7, :cond_5

    if-ne v5, v2, :cond_5

    .line 9
    :try_start_2
    iget-object v7, p0, Lcom/hunantv/imgo/log/a/a$a;->a:Lcom/hunantv/imgo/log/a/a;

    invoke-static {v7}, Lcom/hunantv/imgo/log/a/a;->a(Lcom/hunantv/imgo/log/a/a;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hunantv/imgo/log/entity/b;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v7, :cond_0

    .line 10
    :try_start_3
    invoke-virtual {v7}, Lcom/hunantv/imgo/log/entity/b;->a()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :catchall_0
    move-exception v7

    goto/16 :goto_4

    .line 12
    :cond_0
    :goto_1
    invoke-static {}, Lcom/hunantv/imgo/log/entity/a;->c()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 13
    invoke-static {}, Lcom/hunantv/imgo/log/entity/a;->c()I

    move-result v8

    const/16 v9, 0x68

    if-eq v7, v8, :cond_1

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "received response protocol exception, protocol length = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v5, v9

    goto/16 :goto_5

    .line 15
    :cond_1
    invoke-static {v0}, Lcom/hunantv/imgo/log/entity/a;->a([B)Lcom/hunantv/imgo/log/entity/a;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Lcom/hunantv/imgo/log/entity/a;->b()Z

    move-result v8

    if-nez v8, :cond_2

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "received response protocol invalid, and protocl = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/hunantv/imgo/log/entity/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_2
    iget-short v8, v7, Lcom/hunantv/imgo/log/entity/a;->a:S

    if-lez v8, :cond_4

    .line 19
    new-array v8, v8, [B

    .line 20
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 21
    iget-short v10, v7, Lcom/hunantv/imgo/log/entity/a;->a:S

    if-ne v9, v10, :cond_3

    .line 22
    new-instance v9, Lcom/hunantv/imgo/log/entity/c;

    invoke-direct {v9, v7, v8}, Lcom/hunantv/imgo/log/entity/c;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    goto :goto_3

    :cond_3
    move-object v9, v3

    goto :goto_3

    .line 23
    :cond_4
    new-instance v9, Lcom/hunantv/imgo/log/entity/c;

    invoke-direct {v9, v7, v3}, Lcom/hunantv/imgo/log/entity/c;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received response data and cmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/hunantv/imgo/log/entity/c;->a:Lcom/hunantv/imgo/log/entity/a;

    iget-byte v8, v8, Lcom/hunantv/imgo/log/entity/a;->b:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_3
    invoke-direct {p0, v9}, Lcom/hunantv/imgo/log/a/a$a;->a(Lcom/hunantv/imgo/log/entity/c;)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 26
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handle response data and errorCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v5, 0x67

    goto/16 :goto_0

    :catch_2
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestEntityQueue.take failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/imgo/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x66

    .line 29
    :cond_5
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "one msg send complete and errorCode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private a(Lcom/hunantv/imgo/log/entity/c;)I
    .locals 1

    const/16 p0, 0x64

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p1, Lcom/hunantv/imgo/log/entity/c;->a:Lcom/hunantv/imgo/log/entity/a;

    if-eqz p1, :cond_0

    .line 31
    iget-byte p1, p1, Lcom/hunantv/imgo/log/entity/a;->b:B

    const/16 v0, 0x68

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move p0, v0

    :cond_0
    :pswitch_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(J)V
    .locals 2

    .line 1
    :try_start_0
    const-string p0, "LogClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asleep time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()Z
    .locals 7

    const-string v0, "com.hunantv.imgo.log"

    const-string v1, "LogClient"

    iget-object v2, p0, Lcom/hunantv/imgo/log/a/a$a;->c:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hunantv/imgo/log/a/a$a;->c:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/hunantv/imgo/log/a/a$a;->c:Landroid/net/LocalSocket;

    const/4 v3, 0x1

    :try_start_1
    new-instance v4, Landroid/net/LocalSocketAddress;

    invoke-direct {v4, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/hunantv/imgo/log/b/d;->a()Lcom/hunantv/imgo/log/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/imgo/log/b/d;->b()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    const-wide/16 v5, 0x64

    :try_start_2
    invoke-direct {p0, v5, v6}, Lcom/hunantv/imgo/log/a/a$a;->a(J)V

    iget-object v5, p0, Lcom/hunantv/imgo/log/a/a$a;->c:Landroid/net/LocalSocket;

    new-instance v6, Landroid/net/LocalSocketAddress;

    invoke-direct {v6, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server exception and retry time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "server start failed"

    invoke-static {v1, v5}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkServer ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :pswitch_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/imgo/log/a/a$a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/hunantv/imgo/log/a/a$a;->a(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/imgo/log/a/a$a;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWork return errorCode + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogClient"

    invoke-static {v3, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
