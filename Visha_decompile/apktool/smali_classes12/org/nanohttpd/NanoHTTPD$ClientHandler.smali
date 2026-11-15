.class public Lorg/nanohttpd/NanoHTTPD$ClientHandler;
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
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/nanohttpd/NanoHTTPD;


# direct methods
.method private constructor <init>(Lorg/nanohttpd/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 4
    iput-object p3, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/nanohttpd/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Ljy6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/nanohttpd/NanoHTTPD$ClientHandler;-><init>(Lorg/nanohttpd/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {p0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->this$0:Lorg/nanohttpd/NanoHTTPD;

    invoke-static {v1}, Lorg/nanohttpd/NanoHTTPD;->d(Lorg/nanohttpd/NanoHTTPD;)Lorg/nanohttpd/NanoHTTPD$k;

    move-result-object v1

    invoke-interface {v1}, Lorg/nanohttpd/NanoHTTPD$k;->create()Lorg/nanohttpd/NanoHTTPD$j;

    move-result-object v4

    new-instance v1, Lorg/nanohttpd/NanoHTTPD$g;

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->this$0:Lorg/nanohttpd/NanoHTTPD;

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/nanohttpd/NanoHTTPD$g;-><init>(Lorg/nanohttpd/NanoHTTPD;Lorg/nanohttpd/NanoHTTPD$j;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    :goto_0
    iget-object v2, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/nanohttpd/NanoHTTPD$g;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->this$0:Lorg/nanohttpd/NanoHTTPD;

    iget-object v0, v0, Lorg/nanohttpd/NanoHTTPD;->f:Lorg/nanohttpd/NanoHTTPD$a;

    invoke-interface {v0, p0}, Lorg/nanohttpd/NanoHTTPD$a;->a(Lorg/nanohttpd/NanoHTTPD$ClientHandler;)V

    goto :goto_3

    :goto_2
    :try_start_1
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_1

    const-string v2, "NanoHttpd Shutdown"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/nanohttpd/NanoHTTPD;->e()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Communication with the client broken"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;->this$0:Lorg/nanohttpd/NanoHTTPD;

    iget-object v0, v0, Lorg/nanohttpd/NanoHTTPD;->f:Lorg/nanohttpd/NanoHTTPD$a;

    invoke-interface {v0, p0}, Lorg/nanohttpd/NanoHTTPD$a;->a(Lorg/nanohttpd/NanoHTTPD$ClientHandler;)V

    throw v1
.end method
