.class final Lcom/google/android/libraries/places/internal/zzbnu;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbde;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zznc;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzbns;


# instance fields
.field private final zzc:Lcom/google/android/libraries/places/internal/zznc;

.field private final zzd:Ljava/net/InetSocketAddress;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbnu;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbns;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbns;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zze:Lcom/google/android/libraries/places/internal/zzbns;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnt;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnt;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zzb:Lcom/google/android/libraries/places/internal/zznc;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zzb:Lcom/google/android/libraries/places/internal/zznc;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbnu;->zze:Lcom/google/android/libraries/places/internal/zzbns;

    .line 4
    .line 5
    const-string v2, "GRPC_PROXY_EXP"

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzc:Lcom/google/android/libraries/places/internal/zznc;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzf:Lcom/google/android/libraries/places/internal/zzbns;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v0, ":"

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-le v1, v2, :cond_0

    .line 36
    .line 37
    aget-object v1, v0, v2

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/16 v1, 0x50

    .line 45
    .line 46
    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 47
    .line 48
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 49
    .line 50
    const-string v4, "overrideProxy"

    .line 51
    .line 52
    const-string v5, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    .line 53
    .line 54
    const-string v6, "io.grpc.internal.ProxyDetectorImpl"

    .line 55
    .line 56
    invoke-virtual {v2, v3, v6, v4, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    aget-object v0, v0, v3

    .line 63
    .line 64
    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzd:Ljava/net/InetSocketAddress;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzd:Ljava/net/InetSocketAddress;

    .line 72
    .line 73
    return-void
.end method

.method static bridge synthetic zzb()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbjd;->zze(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance v9, Ljava/net/URI;

    .line 7
    .line 8
    const-string v2, "https"

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, v9

    .line 19
    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "detectProxy"

    .line 27
    .line 28
    const-string v3, "io.grpc.internal.ProxyDetectorImpl"

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object p0, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 33
    .line 34
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 35
    .line 36
    const-string v4, "proxy selector is null, so continuing without proxy lookup"

    .line 37
    .line 38
    invoke-virtual {p0, v1, v3, v2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v1, v9}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    if-le v4, v5, :cond_1

    .line 52
    .line 53
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 54
    .line 55
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 56
    .line 57
    const-string v6, "More than 1 proxy detected, gRPC will select the first one"

    .line 58
    .line 59
    invoke-virtual {v4, v5, v3, v2, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/net/Proxy;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 74
    .line 75
    if-ne v2, v3, :cond_2

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbjd;->zze(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const-string v6, ""

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const-string v5, "https"

    .line 100
    .line 101
    invoke-static/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/zzbns;->zza(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-direct {v4, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 126
    .line 127
    .line 128
    move-object v1, v4

    .line 129
    :cond_3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbaa;->zza()Lcom/google/android/libraries/places/internal/zzazy;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzazy;->zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/zzazy;->zzb(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    .line 137
    .line 138
    .line 139
    if-nez v2, :cond_4

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzazy;->zze()Lcom/google/android/libraries/places/internal/zzbaa;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_4
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzazy;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazy;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-nez p0, :cond_5

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 167
    .line 168
    .line 169
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzazy;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazy;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzazy;->zze()Lcom/google/android/libraries/places/internal/zzbaa;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    move-object v6, p0

    .line 179
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 180
    .line 181
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 182
    .line 183
    const-string v4, "detectProxy"

    .line 184
    .line 185
    const-string v5, "Failed to construct URI for proxy lookup, proceeding without proxy"

    .line 186
    .line 187
    const-string v3, "io.grpc.internal.ProxyDetectorImpl"

    .line 188
    .line 189
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    return-object v0

    .line 193
    :catchall_0
    move-exception v12

    .line 194
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    .line 195
    .line 196
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 197
    .line 198
    const-string v10, "detectProxy"

    .line 199
    .line 200
    const-string v11, "Failed to get host for proxy lookup, proceeding without proxy"

    .line 201
    .line 202
    const-string v9, "io.grpc.internal.ProxyDetectorImpl"

    .line 203
    .line 204
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzd:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbaa;->zza()Lcom/google/android/libraries/places/internal/zzazy;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzazy;->zzb(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzazy;->zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazy;->zze()Lcom/google/android/libraries/places/internal/zzbaa;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnu;->zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
