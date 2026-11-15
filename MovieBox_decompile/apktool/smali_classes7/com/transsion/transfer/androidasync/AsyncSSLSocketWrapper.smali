.class public Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/j;
.implements Lcom/transsion/transfer/androidasync/p;
.implements Lcom/transsion/transfer/androidasync/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;
    }
.end annotation


# static fields
.field static v:Ljavax/net/ssl/SSLContext;

.field static w:Ljavax/net/ssl/SSLContext;

.field static x:[Ljavax/net/ssl/TrustManager;

.field static y:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field a:Lcom/transsion/transfer/androidasync/j;

.field b:Lcom/transsion/transfer/androidasync/n;

.field c:Z

.field d:Ljavax/net/ssl/SSLEngine;

.field e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field i:Ljavax/net/ssl/HostnameVerifier;

.field j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

.field k:[Ljava/security/cert/X509Certificate;

.field l:Lst/j;

.field m:Lst/d;

.field n:[Ljavax/net/ssl/TrustManager;

.field o:Z

.field p:Z

.field q:Ljava/lang/Exception;

.field final r:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final s:Lst/d;

.field t:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field u:Lst/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "TLS"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    const-string v4, "Default"

    .line 7
    .line 8
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    sput-object v4, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v4

    .line 16
    :try_start_1
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    sput-object v5, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;

    .line 21
    .line 22
    new-instance v5, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$a;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$a;-><init>()V

    .line 25
    .line 26
    .line 27
    new-array v6, v1, [Ljavax/net/ssl/TrustManager;

    .line 28
    .line 29
    aput-object v5, v6, v0

    .line 30
    .line 31
    sget-object v5, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;

    .line 32
    .line 33
    invoke-virtual {v5, v3, v6, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v5

    .line 38
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    :try_start_2
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sput-object v2, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    .line 49
    .line 50
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$b;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$b;-><init>()V

    .line 53
    .line 54
    .line 55
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 56
    .line 57
    aput-object v2, v1, v0

    .line 58
    .line 59
    sput-object v1, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->x:[Ljavax/net/ssl/TrustManager;

    .line 60
    .line 61
    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    .line 62
    .line 63
    invoke-virtual {v0, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/transsion/transfer/androidasync/b;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/b;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->y:Ljavax/net/ssl/HostnameVerifier;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_2
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method private constructor <init>(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$f;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$f;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->s:Lst/d;

    .line 17
    .line 18
    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 26
    .line 27
    iput-object p6, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->i:Ljavax/net/ssl/HostnameVerifier;

    .line 28
    .line 29
    iput-boolean p7, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->o:Z

    .line 30
    .line 31
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->n:[Ljavax/net/ssl/TrustManager;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    .line 36
    .line 37
    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->f:I

    .line 38
    .line 39
    invoke-virtual {p4, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lcom/transsion/transfer/androidasync/n;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    .line 48
    .line 49
    new-instance p1, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/n;->B(Lst/j;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 58
    .line 59
    new-instance p2, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private static synthetic C(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private H(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 9
    .line 10
    new-instance v3, Lst/d$a;

    .line 11
    .line 12
    invoke-direct {v3}, Lst/d$a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/s;->d()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1, v1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r()Lst/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->C(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic g(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic l(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->H(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static p()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    return-object v0
.end method

.method private t(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 6

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->s:Lst/d;

    .line 28
    .line 29
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p0, v0}, Lst/d;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    .line 38
    .line 39
    if-nez p1, :cond_a

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 48
    .line 49
    if-eq p1, v0, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 58
    .line 59
    if-ne p1, v0, :cond_a

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_8

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    :try_start_1
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 83
    .line 84
    iput-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->i:Ljavax/net/ssl/HostnameVerifier;

    .line 91
    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    new-instance v2, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    .line 95
    .line 96
    invoke-direct {v2}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    .line 102
    .line 103
    aget-object v4, v4, p1

    .line 104
    .line 105
    invoke-static {v4}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    .line 110
    .line 111
    aget-object v5, v5, p1

    .line 112
    .line 113
    invoke-static {v5}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception v2

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v3, v2, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, "hostname <"

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, "> has been denied"

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :cond_6
    :goto_1
    move p1, v0

    .line 167
    move-object v2, v1

    .line 168
    :goto_2
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    .line 169
    .line 170
    if-nez p1, :cond_9

    .line 171
    .line 172
    new-instance p1, Lcom/transsion/transfer/androidasync/AsyncSSLException;

    .line 173
    .line 174
    invoke-direct {p1, v2}, Lcom/transsion/transfer/androidasync/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->H(Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/AsyncSSLException;->getIgnore()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    throw p1

    .line 188
    :cond_8
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    .line 189
    .line 190
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 191
    .line 192
    invoke-interface {p1, v1, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    .line 193
    .line 194
    .line 195
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 196
    .line 197
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 198
    .line 199
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$7;

    .line 207
    .line 208
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$7;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->E()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :goto_4
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->H(Ljava/lang/Exception;)V

    .line 219
    .line 220
    .line 221
    :cond_a
    :goto_5
    return-void
.end method

.method public static v(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V
    .locals 10

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    new-instance v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;-><init>(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V

    .line 22
    .line 23
    .line 24
    move-object v0, p0

    .line 25
    invoke-interface {p0, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v9, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-direct {v9, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->H(Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public B(Lst/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l:Lst/j;

    .line 2
    .line 3
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lst/a;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->q:Ljava/lang/Exception;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public F(Lst/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->m:Lst/d;

    .line 2
    .line 3
    return-void
.end method

.method public G()Lst/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->m:Lst/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lst/a;

    .line 2
    .line 3
    return-void
.end method

.method public i(Lst/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k()Lst/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l:Lst/j;

    .line 2
    .line 3
    return-object v0
.end method

.method m(Lcom/transsion/transfer/androidasync/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/n;->l()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->h:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->o(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    move-object v2, v1

    .line 32
    :cond_2
    iget-boolean v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->k()[Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 53
    .line 54
    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->b([Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 65
    .line 66
    invoke-virtual {v4, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_4

    .line 76
    .line 77
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Lcom/transsion/transfer/androidasync/n;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v4

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 88
    .line 89
    .line 90
    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 96
    .line 97
    if-ne v4, v5, :cond_5

    .line 98
    .line 99
    mul-int/lit8 v0, v0, 0x2

    .line 100
    .line 101
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v3, -0x1

    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception v4

    .line 108
    move-object v0, v1

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->o(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-direct {p0, v4}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_1
    invoke-direct {p0, v4}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->H(Ljava/lang/Exception;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-ne v3, v4, :cond_6

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 146
    .line 147
    if-ne v3, v4, :cond_7

    .line 148
    .line 149
    :cond_6
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/n;->l()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_2

    .line 156
    .line 157
    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->h:Z

    .line 159
    .line 160
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method o(I)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x2000

    .line 8
    .line 9
    :cond_0
    return p1
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r()Lst/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lst/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->E()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
