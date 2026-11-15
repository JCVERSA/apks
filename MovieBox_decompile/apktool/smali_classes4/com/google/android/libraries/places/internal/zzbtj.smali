.class final Lcom/google/android/libraries/places/internal/zzbtj;
.super Lcom/google/android/libraries/places/internal/zzbtl;
.source "source.java"


# instance fields
.field private final zzb:Ljava/lang/reflect/Method;

.field private final zzc:Ljava/lang/reflect/Method;

.field private final zzd:Ljava/lang/reflect/Method;

.field private final zze:Ljava/lang/Class;

.field private final zzf:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p6}, Lcom/google/android/libraries/places/internal/zzbtl;-><init>(Ljava/security/Provider;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzb:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzc:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzd:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zze:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzf:Ljava/lang/Class;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbtk;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zzb(Lcom/google/android/libraries/places/internal/zzbtk;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zza(Lcom/google/android/libraries/places/internal/zzbtk;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 33
    .line 34
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 35
    .line 36
    const-string v2, "io.grpc.okhttp.internal.Platform$JdkWithJettyBootPlatform"

    .line 37
    .line 38
    const-string v3, "getSelectedProtocol"

    .line 39
    .line 40
    const-string v4, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zzb(Lcom/google/android/libraries/places/internal/zzbtk;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zza(Lcom/google/android/libraries/places/internal/zzbtk;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object p1

    .line 58
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public final zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    .line 1
    const/4 p2, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/google/android/libraries/places/internal/zzbtm;

    .line 25
    .line 26
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    .line 27
    .line 28
    if-eq v5, v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/2addr v4, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :try_start_0
    const-class p3, Lcom/google/android/libraries/places/internal/zzbtl;

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zze:Ljava/lang/Class;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzf:Ljava/lang/Class;

    .line 48
    .line 49
    new-array v5, p2, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v2, v5, v3

    .line 52
    .line 53
    aput-object v4, v5, v0

    .line 54
    .line 55
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtk;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Lcom/google/android/libraries/places/internal/zzbtk;-><init>(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p3, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzb:Ljava/lang/reflect/Method;

    .line 65
    .line 66
    new-array p2, p2, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p1, p2, v3

    .line 69
    .line 70
    aput-object p3, p2, v0

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :catch_1
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :goto_2
    new-instance p2, Ljava/lang/AssertionError;

    .line 88
    .line 89
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    throw p2
.end method

.method public final zzc()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzd(Ljavax/net/ssl/SSLSocket;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzd:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    move-object v5, p1

    .line 16
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 17
    .line 18
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 19
    .line 20
    const-string v3, "afterHandshake"

    .line 21
    .line 22
    const-string v4, "Failed to remove SSLSocket from Jetty ALPN"

    .line 23
    .line 24
    const-string v2, "io.grpc.okhttp.internal.Platform$JdkWithJettyBootPlatform"

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
