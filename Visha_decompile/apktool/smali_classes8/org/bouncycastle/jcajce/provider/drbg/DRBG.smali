.class public abstract Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$Default;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$NonceAndIV;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;
    }
.end annotation


# static fields
.field public static final a:[[Ljava/lang/String;

.field public static b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

.field public static c:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "sun.security.provider.Sun"

    const-string v1, "sun.security.provider.SecureRandom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    const-string v3, "com.android.org.conscrypt.OpenSSLRandom"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.conscrypt.OpenSSLProvider"

    const-string v4, "org.conscrypt.OpenSSLRandom"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->a:[[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->c:Ljava/lang/Thread;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    return-void
.end method

.method public static synthetic a(Z)Ljava/security/SecureRandom;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->f(Z)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    return-object v0
.end method

.method public static synthetic c()[Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(J)V
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->m(J)V

    return-void
.end method

.method public static synthetic e()Lbb3;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->g()Lbb3;

    move-result-object v0

    return-object v0
.end method

.method public static f(Z)Ljava/security/SecureRandom;
    .locals 5

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Lqi8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->h()Lbb3;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lbb3;->get(I)Lab3;

    move-result-object v1

    invoke-interface {v1}, Lab3;->b()[B

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->k([B)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->l([B)[B

    move-result-object v2

    :goto_0
    new-instance v3, Lly8;

    invoke-direct {v3, v0}, Lly8;-><init>(Lbb3;)V

    invoke-virtual {v3, v2}, Lly8;->e([B)Lly8;

    move-result-object v0

    new-instance v2, Lxx8;

    invoke-direct {v2}, Lxx8;-><init>()V

    invoke-interface {v1}, Lab3;->b()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Lly8;->c(Lsb2;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "org.bouncycastle.drbg.entropy_thread"

    invoke-static {v0}, Lqi8;->c(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_4

    sget-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->c:Ljava/lang/Thread;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/Thread;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    const-string v4, "BC Entropy Daemon"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->c:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->c:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->b:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;I)V

    invoke-interface {v0}, Lab3;->b()[B

    move-result-object v1

    if-eqz p0, :cond_3

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->k([B)[B

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->l([B)[B

    move-result-object v1

    :goto_2
    new-instance v2, Lly8;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$a;

    invoke-direct {v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$a;-><init>()V

    invoke-direct {v2, v3}, Lly8;-><init>(Lbb3;)V

    invoke-virtual {v2, v1}, Lly8;->e([B)Lly8;

    move-result-object v1

    new-instance v2, Lxx8;

    invoke-direct {v2}, Lxx8;-><init>()V

    invoke-interface {v0}, Lab3;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lly8;->c(Lsb2;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p0

    return-object p0

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;-><init>(I)V

    invoke-interface {v0}, Lab3;->b()[B

    move-result-object v1

    if-eqz p0, :cond_5

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->k([B)[B

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->l([B)[B

    move-result-object v1

    :goto_4
    new-instance v2, Lly8;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$b;

    invoke-direct {v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$b;-><init>()V

    invoke-direct {v2, v3}, Lly8;-><init>(Lbb3;)V

    invoke-virtual {v2, v1}, Lly8;->e([B)Lly8;

    move-result-object v1

    new-instance v2, Lxx8;

    invoke-direct {v2}, Lxx8;-><init>()V

    invoke-interface {v0}, Lab3;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lly8;->c(Lsb2;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lbb3;
    .locals 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$e;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$e;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->i()Lbb3;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->i()Lbb3;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lbb3;
    .locals 2

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Lqi8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbb3;

    return-object v0
.end method

.method public static i()Lbb3;
    .locals 4

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$c;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    new-instance v2, Lgz4;

    invoke-direct {v2, v0, v1}, Lgz4;-><init>(Ljava/security/SecureRandom;Z)V

    return-object v2

    :cond_0
    new-instance v0, Lgz4;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->j()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v2, v1}, Lgz4;-><init>(Ljava/security/SecureRandom;Z)V

    return-object v0
.end method

.method public static final j()[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->a:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k([B)[B
    .locals 4

    const-string v0, "Default"

    invoke-static {v0}, Lu0a;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcv7;->j(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcv7;->j(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lci;->m([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static l([B)[B
    .locals 4

    const-string v0, "Nonce"

    invoke-static {v0}, Lu0a;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcv7;->m(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcv7;->m(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lci;->m([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static m(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method
