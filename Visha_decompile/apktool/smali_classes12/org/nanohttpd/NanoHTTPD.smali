.class public abstract Lorg/nanohttpd/NanoHTTPD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nanohttpd/NanoHTTPD$d;,
        Lorg/nanohttpd/NanoHTTPD$i;,
        Lorg/nanohttpd/NanoHTTPD$f;,
        Lorg/nanohttpd/NanoHTTPD$k;,
        Lorg/nanohttpd/NanoHTTPD$c;,
        Lorg/nanohttpd/NanoHTTPD$a;,
        Lorg/nanohttpd/NanoHTTPD$ClientHandler;,
        Lorg/nanohttpd/NanoHTTPD$ServerRunnable;,
        Lorg/nanohttpd/NanoHTTPD$Response;,
        Lorg/nanohttpd/NanoHTTPD$h;,
        Lorg/nanohttpd/NanoHTTPD$Method;,
        Lorg/nanohttpd/NanoHTTPD$ResponseException;,
        Lorg/nanohttpd/NanoHTTPD$j;,
        Lorg/nanohttpd/NanoHTTPD$g;,
        Lorg/nanohttpd/NanoHTTPD$e;,
        Lorg/nanohttpd/NanoHTTPD$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public volatile c:Ljava/net/ServerSocket;

.field public d:Lorg/nanohttpd/NanoHTTPD$i;

.field public e:Ljava/lang/Thread;

.field public f:Lorg/nanohttpd/NanoHTTPD$a;

.field public g:Lorg/nanohttpd/NanoHTTPD$k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD;->h:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD;->i:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD;->j:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD;->k:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD;->l:Ljava/util/regex/Pattern;

    const-class v0, Lorg/nanohttpd/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD;->m:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$d;

    invoke-direct {v0}, Lorg/nanohttpd/NanoHTTPD$d;-><init>()V

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD;->d:Lorg/nanohttpd/NanoHTTPD$i;

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD;->a:Ljava/lang/String;

    iput p2, p0, Lorg/nanohttpd/NanoHTTPD;->b:I

    new-instance p1, Lorg/nanohttpd/NanoHTTPD$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/nanohttpd/NanoHTTPD$f;-><init>(Lorg/nanohttpd/NanoHTTPD;Ljy6;)V

    invoke-virtual {p0, p1}, Lorg/nanohttpd/NanoHTTPD;->p(Lorg/nanohttpd/NanoHTTPD$k;)V

    new-instance p1, Lorg/nanohttpd/NanoHTTPD$c;

    invoke-direct {p1}, Lorg/nanohttpd/NanoHTTPD$c;-><init>()V

    invoke-virtual {p0, p1}, Lorg/nanohttpd/NanoHTTPD;->o(Lorg/nanohttpd/NanoHTTPD$a;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/nanohttpd/NanoHTTPD;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/nanohttpd/NanoHTTPD;)I
    .locals 0

    iget p0, p0, Lorg/nanohttpd/NanoHTTPD;->b:I

    return p0
.end method

.method public static bridge synthetic c(Lorg/nanohttpd/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD;->c:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/nanohttpd/NanoHTTPD;)Lorg/nanohttpd/NanoHTTPD$k;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD;->g:Lorg/nanohttpd/NanoHTTPD$k;

    return-object p0
.end method

.method public static bridge synthetic e()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lorg/nanohttpd/NanoHTTPD;->m:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lorg/nanohttpd/NanoHTTPD;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/nanohttpd/NanoHTTPD;->m:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Encoding not supported, ignored"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static k(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)Lorg/nanohttpd/NanoHTTPD$Response;
    .locals 7

    new-instance v6, Lorg/nanohttpd/NanoHTTPD$Response;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/nanohttpd/NanoHTTPD$Response;-><init>(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/nanohttpd/NanoHTTPD;->k(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v1, Lorg/nanohttpd/NanoHTTPD;->m:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "encoding problem, responding nothing"

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v0, [B

    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    int-to-long v1, p2

    invoke-static {p0, p1, v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD;->k(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_3

    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown object to close"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lorg/nanohttpd/NanoHTTPD;->m:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not close"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public g(Ljava/net/Socket;Ljava/io/InputStream;)Lorg/nanohttpd/NanoHTTPD$ClientHandler;
    .locals 2

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$ClientHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lorg/nanohttpd/NanoHTTPD$ClientHandler;-><init>(Lorg/nanohttpd/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Ljy6;)V

    return-object v0
.end method

.method public h(I)Lorg/nanohttpd/NanoHTTPD$ServerRunnable;
    .locals 2

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;-><init>(Lorg/nanohttpd/NanoHTTPD;ILjy6;)V

    return-object v0
.end method

.method public j()Lorg/nanohttpd/NanoHTTPD$i;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD;->d:Lorg/nanohttpd/NanoHTTPD$i;

    return-object p0
.end method

.method public abstract n(Lorg/nanohttpd/NanoHTTPD$h;)Lorg/nanohttpd/NanoHTTPD$Response;
.end method

.method public o(Lorg/nanohttpd/NanoHTTPD$a;)V
    .locals 0

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD;->f:Lorg/nanohttpd/NanoHTTPD$a;

    return-void
.end method

.method public p(Lorg/nanohttpd/NanoHTTPD$k;)V
    .locals 0

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD;->g:Lorg/nanohttpd/NanoHTTPD$k;

    return-void
.end method

.method public q()V
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lorg/nanohttpd/NanoHTTPD;->r(I)V

    return-void
.end method

.method public r(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/nanohttpd/NanoHTTPD;->s(IZ)V

    return-void
.end method

.method public s(IZ)V
    .locals 2

    invoke-virtual {p0}, Lorg/nanohttpd/NanoHTTPD;->j()Lorg/nanohttpd/NanoHTTPD$i;

    move-result-object v0

    invoke-interface {v0}, Lorg/nanohttpd/NanoHTTPD$i;->create()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD;->c:Ljava/net/ServerSocket;

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD;->c:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    invoke-virtual {p0, p1}, Lorg/nanohttpd/NanoHTTPD;->h(I)Lorg/nanohttpd/NanoHTTPD$ServerRunnable;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD;->e:Ljava/lang/Thread;

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p2, p0, Lorg/nanohttpd/NanoHTTPD;->e:Ljava/lang/Thread;

    const-string v0, "NanoHttpd Main Listener"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD;->e:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :catchall_0
    :goto_0
    invoke-static {p1}, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->b(Lorg/nanohttpd/NanoHTTPD$ServerRunnable;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->a(Lorg/nanohttpd/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->a(Lorg/nanohttpd/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lorg/nanohttpd/NanoHTTPD$ServerRunnable;->a(Lorg/nanohttpd/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public t()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD;->c:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD;->f:Lorg/nanohttpd/NanoHTTPD$a;

    invoke-interface {v0}, Lorg/nanohttpd/NanoHTTPD$a;->b()V

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD;->e:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/nanohttpd/NanoHTTPD;->m:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not stop all connections"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public u(Lorg/nanohttpd/NanoHTTPD$Response;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/nanohttpd/NanoHTTPD$Response;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/nanohttpd/NanoHTTPD$Response;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "text/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
