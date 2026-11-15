.class final Lcom/google/android/libraries/places/internal/zzbns;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final zza(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 10

    .line 1
    const-string v3, "https"

    .line 2
    .line 3
    :try_start_0
    new-instance p3, Ljava/net/URL;

    .line 4
    .line 5
    const-string p4, ""

    .line 6
    .line 7
    invoke-direct {p3, v3, p0, p2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :goto_0
    move-object v6, p3

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbnu;->zzb()Ljava/util/logging/Logger;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 17
    .line 18
    const/4 p3, 0x2

    .line 19
    new-array v9, p3, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    aput-object v3, v9, p3

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    aput-object p0, v9, p3

    .line 26
    .line 27
    const-string v7, "requestPasswordAuthentication"

    .line 28
    .line 29
    const-string v8, "failed to create URL for Authenticator: {0} {1}"

    .line 30
    .line 31
    const-string v6, "io.grpc.internal.ProxyDetectorImpl$1"

    .line 32
    .line 33
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 39
    .line 40
    const-string v4, ""

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p1

    .line 45
    move v2, p2

    .line 46
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
