.class public Lfreemarker/debug/impl/DebuggerServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;
    }
.end annotation


# static fields
.field public static final f:Lpq5;

.field public static final g:Ljava/util/Random;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:Ljava/io/Serializable;

.field public d:Z

.field public e:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.debug.server"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/DebuggerServer;->f:Lpq5;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/DebuggerServer;->g:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfreemarker/debug/impl/DebuggerServer;->d:Z

    const-string v0, "freemarker.debug.port"

    const/16 v1, 0x1b63

    invoke-static {v0, v1}, Lha9;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lfreemarker/debug/impl/DebuggerServer;->b:I

    :try_start_0
    const-string v0, "freemarker.debug.password"

    const-string v1, ""

    invoke-static {v0, v1}, Lha9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->a:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lfreemarker/debug/impl/DebuggerServer;->c:Ljava/io/Serializable;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p1, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic a(Lfreemarker/debug/impl/DebuggerServer;)V
    .locals 0

    invoke-virtual {p0}, Lfreemarker/debug/impl/DebuggerServer;->g()V

    return-void
.end method

.method public static synthetic b()Ljava/util/Random;
    .locals 1

    sget-object v0, Lfreemarker/debug/impl/DebuggerServer;->g:Ljava/util/Random;

    return-object v0
.end method

.method public static synthetic c(Lfreemarker/debug/impl/DebuggerServer;)[B
    .locals 0

    iget-object p0, p0, Lfreemarker/debug/impl/DebuggerServer;->a:[B

    return-object p0
.end method

.method public static synthetic d(Lfreemarker/debug/impl/DebuggerServer;)Ljava/io/Serializable;
    .locals 0

    iget-object p0, p0, Lfreemarker/debug/impl/DebuggerServer;->c:Ljava/io/Serializable;

    return-object p0
.end method

.method public static synthetic e()Lpq5;
    .locals 1

    sget-object v0, Lfreemarker/debug/impl/DebuggerServer;->f:Lpq5;

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfreemarker/debug/impl/DebuggerServer$1;

    invoke-direct {v1, p0}, Lfreemarker/debug/impl/DebuggerServer$1;-><init>(Lfreemarker/debug/impl/DebuggerServer;)V

    const-string p0, "FreeMarker Debugger Server Acceptor"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final g()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lfreemarker/debug/impl/DebuggerServer;->b:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->e:Ljava/net/ServerSocket;

    :goto_0
    iget-boolean v0, p0, Lfreemarker/debug/impl/DebuggerServer;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;

    invoke-direct {v2, p0, v0}, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;-><init>(Lfreemarker/debug/impl/DebuggerServer;Ljava/net/Socket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lfreemarker/debug/impl/DebuggerServer;->f:Lpq5;

    const-string v1, "Debugger server shut down."

    invoke-virtual {v0, v1, p0}, Lpq5;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
