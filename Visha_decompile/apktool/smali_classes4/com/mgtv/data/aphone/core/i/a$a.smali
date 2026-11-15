.class Lcom/mgtv/data/aphone/core/i/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/data/aphone/core/i/a;

.field private b:Z

.field private c:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/a$a;->a:Lcom/mgtv/data/aphone/core/i/a;

    const-string p1, "BigDataSdk LocalClient_LogWorkThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/data/aphone/core/i/a$a;->b:Z

    return-void
.end method

.method private a()I
    .locals 9

    .line 3
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v0

    new-array v0, v0, [B

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/mgtv/data/aphone/core/i/a$a;->c:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/mgtv/data/aphone/core/i/a$a;->c:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    move v4, v1

    goto :goto_0

    :catch_0
    move-object v3, v2

    :catch_1
    const/16 v4, 0x65

    move-object v5, v2

    .line 6
    :goto_0
    iget-boolean v6, p0, Lcom/mgtv/data/aphone/core/i/a$a;->b:Z

    if-nez v6, :cond_5

    if-ne v4, v1, :cond_5

    .line 7
    :try_start_2
    iget-object v4, p0, Lcom/mgtv/data/aphone/core/i/a$a;->a:Lcom/mgtv/data/aphone/core/i/a;

    invoke-static {v4}, Lcom/mgtv/data/aphone/core/i/a;->a(Lcom/mgtv/data/aphone/core/i/a;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/data/aphone/core/i/a/b;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v4}, Lcom/mgtv/data/aphone/core/i/a/b;->a()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_4

    .line 10
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 11
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v6

    const/16 v7, 0x68

    if-eq v4, v6, :cond_1

    :goto_2
    move v4, v7

    goto :goto_5

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/mgtv/data/aphone/core/i/a/a;->a([B)Lcom/mgtv/data/aphone/core/i/a/a;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lcom/mgtv/data/aphone/core/i/a/a;->b()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iget-short v6, v4, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    if-lez v6, :cond_4

    .line 15
    new-array v6, v6, [B

    .line 16
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 17
    iget-short v8, v4, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    if-ne v7, v8, :cond_3

    .line 18
    new-instance v7, Lcom/mgtv/data/aphone/core/i/a/c;

    invoke-direct {v7, v4, v6}, Lcom/mgtv/data/aphone/core/i/a/c;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    goto :goto_3

    :cond_3
    move-object v7, v2

    goto :goto_3

    .line 19
    :cond_4
    new-instance v7, Lcom/mgtv/data/aphone/core/i/a/c;

    invoke-direct {v7, v4, v2}, Lcom/mgtv/data/aphone/core/i/a/c;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    .line 20
    :goto_3
    invoke-direct {p0, v7}, Lcom/mgtv/data/aphone/core/i/a$a;->a(Lcom/mgtv/data/aphone/core/i/a/c;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 21
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v4, 0x67

    goto :goto_0

    :catch_2
    const/16 v4, 0x66

    :cond_5
    :goto_5
    return v4
.end method

.method private a(Lcom/mgtv/data/aphone/core/i/a/c;)I
    .locals 1

    const/16 p0, 0x64

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p1, Lcom/mgtv/data/aphone/core/i/a/c;->a:Lcom/mgtv/data/aphone/core/i/a/a;

    if-eqz p1, :cond_0

    .line 23
    iget-byte p1, p1, Lcom/mgtv/data/aphone/core/i/a/a;->b:B

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
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()Z
    .locals 6

    const-string v0, "com.mgtv.data.trace"

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/i/a$a;->c:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mgtv/data/aphone/core/i/a$a;->c:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/mgtv/data/aphone/core/i/a$a;->c:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    invoke-direct {v3, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/mgtv/data/aphone/core/i/b/d;->a()Lcom/mgtv/data/aphone/core/i/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/i/b/d;->b()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    const-wide/16 v4, 0x64

    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/mgtv/data/aphone/core/i/a$a;->a(J)V

    iget-object v4, p0, Lcom/mgtv/data/aphone/core/i/a$a;->c:Landroid/net/LocalSocket;

    new-instance v5, Landroid/net/LocalSocketAddress;

    invoke-direct {v5, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_2
    return v2
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :pswitch_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/i/a$a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/mgtv/data/aphone/core/i/a$a;->a(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/i/a$a;->a()I

    move-result v1

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
