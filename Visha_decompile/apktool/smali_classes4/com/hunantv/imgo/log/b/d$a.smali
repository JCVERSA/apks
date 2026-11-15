.class Lcom/hunantv/imgo/log/b/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/log/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/log/b/d;

.field private b:Z

.field private c:Landroid/net/LocalServerSocket;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/log/b/d;Landroid/net/LocalServerSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/log/b/d$a;->a:Lcom/hunantv/imgo/log/b/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/imgo/log/b/d$a;->b:Z

    iput-object p2, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    const-string p1, "local service"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/imgo/log/b/d$a;->b:Z

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "LogService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "LocalService start"

    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v2, p0, Lcom/hunantv/imgo/log/b/d$a;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    new-instance v3, Lcom/hunantv/imgo/log/b/b;

    invoke-direct {v3, v2}, Lcom/hunantv/imgo/log/b/b;-><init>(Landroid/net/LocalSocket;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new connection come logServerConnection = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    iput-object v1, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    iput-object v1, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    iput-object v1, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_3
    return-void

    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    iput-object v1, p0, Lcom/hunantv/imgo/log/b/d$a;->c:Landroid/net/LocalServerSocket;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_5
    throw v0
.end method
