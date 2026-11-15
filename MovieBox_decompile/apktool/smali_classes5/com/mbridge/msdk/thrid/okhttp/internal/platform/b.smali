.class Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$b;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;->a()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->c:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 19
    .line 20
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 25
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 28
    :catch_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 11
    :try_start_0
    const-string v2, "isCleartextTrafficPermitted"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 12
    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 14
    :catch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static h()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, [B

    .line 4
    .line 5
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    :try_start_0
    const-string v3, "com.android.org.conscrypt.SSLParametersImpl"

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    move-object v6, v3

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :try_start_1
    const-string v3, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    new-instance v7, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 29
    .line 30
    const-string v3, "setUseSessionTickets"

    .line 31
    .line 32
    new-array v5, v0, [Ljava/lang/Class;

    .line 33
    .line 34
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    aput-object v8, v5, v1

    .line 37
    .line 38
    invoke-direct {v7, v4, v3, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 42
    .line 43
    const-string v3, "setHostname"

    .line 44
    .line 45
    new-array v5, v0, [Ljava/lang/Class;

    .line 46
    .line 47
    const-class v9, Ljava/lang/String;

    .line 48
    .line 49
    aput-object v9, v5, v1

    .line 50
    .line 51
    invoke-direct {v8, v4, v3, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->j()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 61
    .line 62
    const-string v5, "getAlpnSelectedProtocol"

    .line 63
    .line 64
    new-array v9, v1, [Ljava/lang/Class;

    .line 65
    .line 66
    invoke-direct {v3, v2, v5, v9}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    .line 70
    .line 71
    const-string v9, "setAlpnProtocols"

    .line 72
    .line 73
    new-array v0, v0, [Ljava/lang/Class;

    .line 74
    .line 75
    aput-object v2, v0, v1

    .line 76
    .line 77
    invoke-direct {v5, v4, v9, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    move-object v9, v3

    .line 81
    move-object v10, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move-object v9, v4

    .line 84
    move-object v10, v9

    .line 85
    :goto_2
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;

    .line 86
    .line 87
    move-object v5, v0

    .line 88
    invoke-direct/range {v5 .. v10}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;-><init>(Ljava/lang/Class;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :catch_1
    return-object v4
.end method

.method static i()I
    .locals 1

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    return v0

    .line 4
    :catch_0
    const/4 v0, 0x0

    .line 5
    return v0
.end method

.method private static j()Z
    .locals 2

    .line 1
    const-string v0, "GMSCore_OpenSSL"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    const-string v0, "android.net.Network"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :catch_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 29
    :try_start_0
    const-string v2, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 30
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljavax/net/ssl/X509TrustManager;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 31
    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    const-string v4, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$a;

    invoke-direct {v1, v3, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 34
    :catch_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/16 p1, 0xa

    if-eqz p3, :cond_1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_4

    .line 19
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    add-int/lit16 v3, v1, 0xfa0

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 21
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "OkHttp"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_3

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$c;->a(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Exception in connect"

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    throw p2

    .line 6
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    .line 7
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw p2

    :catch_2
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_1
    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 15
    invoke-static {p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->b(Ljava/util/List;)[B

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    .line 16
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    invoke-virtual {p2, p1, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lcom/mbridge/msdk/thrid/okhttp/internal/tls/e;
    .locals 6

    const/4 v0, 0x1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "findTrustAnchorByIssuerAndSignature"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$b;

    invoke-direct {v0, p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 18
    :catch_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/mbridge/msdk/thrid/okhttp/internal/tls/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/String;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->j:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 5
    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 6
    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/b;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    :goto_0
    const-string v0, "unable to determine cleartext support"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 10
    :catch_3
    invoke-super {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e()Ljavax/net/ssl/SSLContext;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "TLS"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v2, "No TLS provider"

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method
