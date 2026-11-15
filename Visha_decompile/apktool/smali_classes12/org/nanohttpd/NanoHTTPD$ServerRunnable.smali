.class public Lorg/nanohttpd/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lorg/nanohttpd/NanoHTTPD;

.field private final timeout:I


# direct methods
.method private constructor <init>(Lorg/nanohttpd/NanoHTTPD;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 4
    iput p2, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->timeout:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/nanohttpd/NanoHTTPD;ILjy6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;-><init>(Lorg/nanohttpd/NanoHTTPD;I)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/nanohttpd/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/nanohttpd/NanoHTTPD$ServerRunnable;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->c(Lorg/nanohttpd/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v1}, Lorg/nanohttpd/NanoHTTPD;->a(Lorg/nanohttpd/NanoHTTPD;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v2}, Lorg/nanohttpd/NanoHTTPD;->a(Lorg/nanohttpd/NanoHTTPD;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v3}, Lorg/nanohttpd/NanoHTTPD;->b(Lorg/nanohttpd/NanoHTTPD;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v2}, Lorg/nanohttpd/NanoHTTPD;->b(Lorg/nanohttpd/NanoHTTPD;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->c(Lorg/nanohttpd/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget v1, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    iget-object v3, v2, Lorg/nanohttpd/NanoHTTPD;->f:Lorg/nanohttpd/NanoHTTPD$a;

    invoke-virtual {v2, v0, v1}, Lorg/nanohttpd/NanoHTTPD;->g(Ljava/net/Socket;Ljava/io/InputStream;)Lorg/nanohttpd/NanoHTTPD$ClientHandler;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/nanohttpd/NanoHTTPD$a;->c(Lorg/nanohttpd/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-static {}, Lorg/nanohttpd/NanoHTTPD;->e()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->c(Lorg/nanohttpd/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :goto_4
    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-void
.end method
