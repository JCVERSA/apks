.class public final Lcom/google/android/libraries/places/internal/zzbih;
.super Lcom/google/android/libraries/places/internal/zzbcv;
.source "source.java"


# static fields
.field static final zza:Z

.field static final zzb:Z

.field protected static final zzc:Z

.field private static final zzg:Ljava/util/logging/Logger;

.field private static final zzh:Ljava/util/Set;

.field private static final zzi:Ljava/lang/String;

.field private static final zzj:Ljava/lang/String;

.field private static final zzk:Ljava/lang/String;

.field private static final zzl:Lcom/google/android/libraries/places/internal/zzbig;

.field private static zzm:Ljava/lang/String;


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/libraries/places/internal/zzbcr;

.field final zzd:Lcom/google/android/libraries/places/internal/zzbde;

.field protected volatile zze:Lcom/google/android/libraries/places/internal/zzbhz;

.field protected zzf:Z

.field private final zzn:Ljava/util/Random;

.field private final zzo:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzp:Ljava/lang/String;

.field private final zzq:Ljava/lang/String;

.field private final zzr:I

.field private final zzs:Lcom/google/android/libraries/places/internal/zzbql;

.field private final zzt:J

.field private final zzu:Lcom/google/android/libraries/places/internal/zzbdw;

.field private final zzv:Lcom/google/android/libraries/places/internal/zzna;

.field private zzw:Z

.field private zzx:Ljava/util/concurrent/Executor;

.field private final zzy:Z

.field private final zzz:Lcom/google/android/libraries/places/internal/zzbcu;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbih;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashSet;

    .line 14
    .line 15
    const-string v3, "clientHostname"

    .line 16
    .line 17
    const-string v4, "serviceConfig"

    .line 18
    .line 19
    const-string v5, "clientLanguage"

    .line 20
    .line 21
    const-string v6, "percentage"

    .line 22
    .line 23
    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbih;->zzh:Ljava/util/Set;

    .line 39
    .line 40
    const-string v1, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    .line 41
    .line 42
    const-string v3, "true"

    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbih;->zzi:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    .line 51
    .line 52
    const-string v4, "false"

    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sput-object v3, Lcom/google/android/libraries/places/internal/zzbih;->zzj:Ljava/lang/String;

    .line 59
    .line 60
    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    .line 61
    .line 62
    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    sput-object v4, Lcom/google/android/libraries/places/internal/zzbih;->zzk:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzbih;->zza:Z

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzbih;->zzb:Z

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzbih;->zzc:Z

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x0

    .line 91
    :try_start_0
    const-string v3, "io.grpc.internal.JndiResourceResolverFactory"

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-class v3, Lcom/google/android/libraries/places/internal/zzbig;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .line 114
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbig;->zzb()Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_0

    .line 119
    .line 120
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbig;->zzb()Ljava/lang/Throwable;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const-string v5, "getResourceResolverFactory"

    .line 127
    .line 128
    const-string v6, "JndiResourceResolverFactory not available, skipping."

    .line 129
    .line 130
    const-string v4, "io.grpc.internal.DnsNameResolver"

    .line 131
    .line 132
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_0
    move-object v1, v0

    .line 137
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    move-object v7, v0

    .line 140
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 141
    .line 142
    const-string v6, "Can\'t construct JndiResourceResolverFactory, skipping."

    .line 143
    .line 144
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 145
    .line 146
    const-string v4, "io.grpc.internal.DnsNameResolver"

    .line 147
    .line 148
    const-string v5, "getResourceResolverFactory"

    .line 149
    .line 150
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catch_1
    move-exception v13

    .line 155
    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 156
    .line 157
    const-string v12, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    .line 158
    .line 159
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 160
    .line 161
    const-string v10, "io.grpc.internal.DnsNameResolver"

    .line 162
    .line 163
    const-string v11, "getResourceResolverFactory"

    .line 164
    .line 165
    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_2
    move-exception v0

    .line 170
    move-object v7, v0

    .line 171
    goto :goto_0

    .line 172
    :catch_3
    move-exception v0

    .line 173
    move-object v7, v0

    .line 174
    goto :goto_1

    .line 175
    :goto_0
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 176
    .line 177
    const-string v6, "Unable to cast JndiResourceResolverFactory, skipping."

    .line 178
    .line 179
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 180
    .line 181
    const-string v4, "io.grpc.internal.DnsNameResolver"

    .line 182
    .line 183
    const-string v5, "getResourceResolverFactory"

    .line 184
    .line 185
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :goto_1
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 190
    .line 191
    const-string v6, "Unable to find JndiResourceResolverFactory, skipping."

    .line 192
    .line 193
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 194
    .line 195
    const-string v4, "io.grpc.internal.DnsNameResolver"

    .line 196
    .line 197
    const-string v5, "getResourceResolverFactory"

    .line 198
    .line 199
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbih;->zzl:Lcom/google/android/libraries/places/internal/zzbig;

    .line 203
    .line 204
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbco;Lcom/google/android/libraries/places/internal/zzbql;Lcom/google/android/libraries/places/internal/zzna;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbcv;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/Random;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzn:Ljava/util/Random;

    .line 14
    .line 15
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbic;->zza:Lcom/google/android/libraries/places/internal/zzbic;

    .line 16
    .line 17
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zze:Lcom/google/android/libraries/places/internal/zzbhz;

    .line 18
    .line 19
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    const-string v2, "args"

    .line 27
    .line 28
    move-object/from16 v3, p3

    .line 29
    .line 30
    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-object/from16 v2, p4

    .line 34
    .line 35
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzs:Lcom/google/android/libraries/places/internal/zzbql;

    .line 36
    .line 37
    const-string v2, "name"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v2, "//"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x1

    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    move v4, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v4, v5

    .line 63
    :goto_0
    const-string v7, "Invalid DNS name: %s"

    .line 64
    .line 65
    invoke-static {v4, v7, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v4, "nameUri (%s) doesn\'t have an authority"

    .line 73
    .line 74
    invoke-static {v1, v4, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzp:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v4, -0x1

    .line 90
    if-ne v1, v4, :cond_1

    .line 91
    .line 92
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zza()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    .line 104
    .line 105
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzd()Lcom/google/android/libraries/places/internal/zzbde;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzd:Lcom/google/android/libraries/places/internal/zzbde;

    .line 110
    .line 111
    const-wide/16 v1, 0x0

    .line 112
    .line 113
    if-eqz p6, :cond_2

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_2
    const-string v4, "networkaddress.cache.ttl"

    .line 117
    .line 118
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-wide/16 v8, 0x1e

    .line 123
    .line 124
    if-eqz v7, :cond_3

    .line 125
    .line 126
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_2

    .line 131
    :catch_0
    sget-object v10, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 132
    .line 133
    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 134
    .line 135
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    const/4 v13, 0x3

    .line 140
    new-array v15, v13, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v4, v15, v5

    .line 143
    .line 144
    aput-object v7, v15, v6

    .line 145
    .line 146
    const/4 v4, 0x2

    .line 147
    aput-object v12, v15, v4

    .line 148
    .line 149
    const-string v13, "getNetworkAddressCacheTtlNanos"

    .line 150
    .line 151
    const-string v14, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    .line 152
    .line 153
    const-string v12, "io.grpc.internal.DnsNameResolver"

    .line 154
    .line 155
    invoke-virtual/range {v10 .. v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_2
    cmp-long v1, v8, v1

    .line 159
    .line 160
    if-lez v1, :cond_4

    .line 161
    .line 162
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 163
    .line 164
    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    goto :goto_3

    .line 169
    :cond_4
    move-wide v1, v8

    .line 170
    :goto_3
    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    .line 171
    .line 172
    move-object/from16 v1, p5

    .line 173
    .line 174
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzv:Lcom/google/android/libraries/places/internal/zzna;

    .line 175
    .line 176
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zze()Lcom/google/android/libraries/places/internal/zzbdw;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzu:Lcom/google/android/libraries/places/internal/zzbdw;

    .line 181
    .line 182
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzf()Ljava/util/concurrent/Executor;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    .line 187
    .line 188
    if-nez v1, :cond_5

    .line 189
    .line 190
    move v5, v6

    .line 191
    :cond_5
    iput-boolean v5, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzy:Z

    .line 192
    .line 193
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzc()Lcom/google/android/libraries/places/internal/zzbcu;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzz:Lcom/google/android/libraries/places/internal/zzbcu;

    .line 198
    .line 199
    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbih;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzna;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzv:Lcom/google/android/libraries/places/internal/zzna;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzazs;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzd:Lcom/google/android/libraries/places/internal/zzbde;

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzbde;->zza(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/zzazs;

    .line 18
    .line 19
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzazs;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzu:Lcom/google/android/libraries/places/internal/zzbdw;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbih;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzk()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbih;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzA:Z

    .line 3
    .line 4
    return-void
.end method

.method private static zzm()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzm:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method private final zzn()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzA:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzw:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzf:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzv:Lcom/google/android/libraries/places/internal/zzna;

    .line 24
    .line 25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzna;->zza(Ljava/util/concurrent/TimeUnit;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    .line 32
    .line 33
    cmp-long v0, v0, v2

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzA:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbie;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 45
    .line 46
    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/places/internal/zzbie;-><init>(Lcom/google/android/libraries/places/internal/zzbih;Lcom/google/android/libraries/places/internal/zzbcr;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "not started"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbih;->zzn()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzw:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzw:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzy:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzs:Lcom/google/android/libraries/places/internal/zzbql;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbqm;->zzc(Lcom/google/android/libraries/places/internal/zzbql;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "already started"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzy:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzs:Lcom/google/android/libraries/places/internal/zzbql;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqm;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    :cond_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbih;->zzn()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected final zzi(Z)Lcom/google/android/libraries/places/internal/zzbib;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v4, "serviceConfig"

    .line 6
    .line 7
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbib;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-direct {v5, v6}, Lcom/google/android/libraries/places/internal/zzbib;-><init>(Lcom/google/android/libraries/places/internal/zzbia;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/net/InetAddress;

    .line 51
    .line 52
    new-instance v9, Lcom/google/android/libraries/places/internal/zzazs;

    .line 53
    .line 54
    new-instance v10, Ljava/net/InetSocketAddress;

    .line 55
    .line 56
    iget v11, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    .line 57
    .line 58
    invoke-direct {v10, v8, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 59
    .line 60
    .line 61
    sget-object v8, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    .line 62
    .line 63
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-direct {v9, v10, v8}, Lcom/google/android/libraries/places/internal/zzazs;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto/16 :goto_14

    .line 76
    .line 77
    :cond_0
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v5, v0}, Lcom/google/android/libraries/places/internal/zzbib;->zzd(Lcom/google/android/libraries/places/internal/zzbib;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    sget-boolean v0, Lcom/google/android/libraries/places/internal/zzbih;->zzc:Z

    .line 85
    .line 86
    if-eqz v0, :cond_1c

    .line 87
    .line 88
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    sget-boolean v8, Lcom/google/android/libraries/places/internal/zzbih;->zza:Z

    .line 95
    .line 96
    sget-boolean v9, Lcom/google/android/libraries/places/internal/zzbih;->zzb:Z

    .line 97
    .line 98
    if-nez v8, :cond_1

    .line 99
    .line 100
    :goto_1
    move-object v0, v6

    .line 101
    goto :goto_4

    .line 102
    :cond_1
    const-string v8, "localhost"

    .line 103
    .line 104
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_2

    .line 109
    .line 110
    if-nez v9, :cond_7

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const-string v8, ":"

    .line 114
    .line 115
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    move v8, v2

    .line 123
    move v9, v3

    .line 124
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-ge v8, v10, :cond_6

    .line 129
    .line 130
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    const/16 v11, 0x2e

    .line 135
    .line 136
    if-eq v10, v11, :cond_5

    .line 137
    .line 138
    const/16 v11, 0x30

    .line 139
    .line 140
    if-lt v10, v11, :cond_4

    .line 141
    .line 142
    const/16 v11, 0x39

    .line 143
    .line 144
    if-gt v10, v11, :cond_4

    .line 145
    .line 146
    move v10, v3

    .line 147
    goto :goto_3

    .line 148
    :cond_4
    move v10, v2

    .line 149
    :goto_3
    and-int/2addr v9, v10

    .line 150
    :cond_5
    add-int/2addr v8, v3

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    if-eqz v9, :cond_7

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbif;

    .line 162
    .line 163
    if-nez v0, :cond_8

    .line 164
    .line 165
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbih;->zzl:Lcom/google/android/libraries/places/internal/zzbig;

    .line 166
    .line 167
    if-eqz v8, :cond_8

    .line 168
    .line 169
    invoke-interface {v8}, Lcom/google/android/libraries/places/internal/zzbig;->zza()Lcom/google/android/libraries/places/internal/zzbif;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 174
    .line 175
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbif;->zza()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    goto :goto_5

    .line 180
    :catch_1
    move-exception v0

    .line 181
    move-object v13, v0

    .line 182
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 183
    .line 184
    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 185
    .line 186
    const-string v11, "resolveServiceConfig"

    .line 187
    .line 188
    const-string v12, "ServiceConfig resolution failure"

    .line 189
    .line 190
    const-string v10, "io.grpc.internal.DnsNameResolver"

    .line 191
    .line 192
    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_1a

    .line 200
    .line 201
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzn:Ljava/util/Random;

    .line 202
    .line 203
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzm()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_c

    .line 221
    .line 222
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    check-cast v10, Ljava/lang/String;

    .line 227
    .line 228
    const-string v11, "grpc_config="

    .line 229
    .line 230
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-nez v11, :cond_a

    .line 235
    .line 236
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 237
    .line 238
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 239
    .line 240
    const-string v14, "io.grpc.internal.DnsNameResolver"

    .line 241
    .line 242
    const-string v15, "parseTxtResults"

    .line 243
    .line 244
    const-string v16, "Ignoring non service config {0}"

    .line 245
    .line 246
    new-array v11, v3, [Ljava/lang/Object;

    .line 247
    .line 248
    aput-object v10, v11, v2

    .line 249
    .line 250
    move-object/from16 v17, v11

    .line 251
    .line 252
    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_6

    .line 256
    :catch_2
    move-exception v0

    .line 257
    goto/16 :goto_e

    .line 258
    .line 259
    :catch_3
    move-exception v0

    .line 260
    goto/16 :goto_e

    .line 261
    .line 262
    :cond_a
    const/16 v11, 0xc

    .line 263
    .line 264
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbkf;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    instance-of v11, v10, Ljava/util/List;

    .line 273
    .line 274
    if-eqz v11, :cond_b

    .line 275
    .line 276
    check-cast v10, Ljava/util/List;

    .line 277
    .line 278
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzf(Ljava/util/List;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    .line 286
    .line 287
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const-string v3, "wrong type "

    .line 292
    .line 293
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-direct {v0, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    :cond_c
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    move-object v9, v6

    .line 306
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    if-eqz v10, :cond_17

    .line 311
    .line 312
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    check-cast v9, Ljava/util/Map;

    .line 317
    .line 318
    :try_start_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    if-eqz v11, :cond_e

    .line 331
    .line 332
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    check-cast v11, Ljava/util/Map$Entry;

    .line 337
    .line 338
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbih;->zzh:Ljava/util/Set;

    .line 339
    .line 340
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v12

    .line 348
    const-string v13, "Bad key: %s"

    .line 349
    .line 350
    invoke-static {v12, v13, v11}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :catch_4
    move-exception v0

    .line 355
    goto/16 :goto_c

    .line 356
    .line 357
    :cond_e
    const-string v10, "clientLanguage"

    .line 358
    .line 359
    invoke-static {v9, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzi(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    if-eqz v10, :cond_11

    .line 364
    .line 365
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    if-nez v11, :cond_11

    .line 370
    .line 371
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    if-eqz v11, :cond_10

    .line 380
    .line 381
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    check-cast v11, Ljava/lang/String;

    .line 386
    .line 387
    const-string v12, "java"

    .line 388
    .line 389
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    if-eqz v11, :cond_f

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_10
    :goto_8
    move-object v9, v6

    .line 397
    goto :goto_b

    .line 398
    :cond_11
    :goto_9
    const-string v10, "percentage"

    .line 399
    .line 400
    invoke-static {v9, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    if-eqz v10, :cond_13

    .line 405
    .line 406
    invoke-virtual {v10}, Ljava/lang/Double;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v11

    .line 410
    const/16 v12, 0x64

    .line 411
    .line 412
    if-ltz v11, :cond_12

    .line 413
    .line 414
    if-gt v11, v12, :cond_12

    .line 415
    .line 416
    move v13, v3

    .line 417
    goto :goto_a

    .line 418
    :cond_12
    move v13, v2

    .line 419
    :goto_a
    const-string v14, "Bad percentage: %s"

    .line 420
    .line 421
    invoke-static {v13, v14, v10}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    if-lt v10, v11, :cond_13

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_13
    const-string v10, "clientHostname"

    .line 432
    .line 433
    invoke-static {v9, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzi(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    if-eqz v10, :cond_15

    .line 438
    .line 439
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 440
    .line 441
    .line 442
    move-result v11

    .line 443
    if-nez v11, :cond_15

    .line 444
    .line 445
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    if-eqz v11, :cond_10

    .line 454
    .line 455
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    check-cast v11, Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    if-eqz v11, :cond_14

    .line 466
    .line 467
    :cond_15
    invoke-static {v9, v4}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 468
    .line 469
    .line 470
    move-result-object v10

    .line 471
    if-eqz v10, :cond_16

    .line 472
    .line 473
    move-object v9, v10

    .line 474
    :goto_b
    if-eqz v9, :cond_d

    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_16
    new-instance v0, Lcom/google/android/libraries/places/internal/zznh;

    .line 478
    .line 479
    const-string v7, "key \'%s\' missing in \'%s\'"

    .line 480
    .line 481
    const/4 v8, 0x2

    .line 482
    new-array v8, v8, [Ljava/lang/Object;

    .line 483
    .line 484
    aput-object v9, v8, v2

    .line 485
    .line 486
    aput-object v4, v8, v3

    .line 487
    .line 488
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-direct {v0, v2}, Lcom/google/android/libraries/places/internal/zznh;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 496
    :goto_c
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 497
    .line 498
    const-string v3, "failed to pick service config choice"

    .line 499
    .line 500
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    goto :goto_f

    .line 513
    :cond_17
    :goto_d
    if-nez v9, :cond_18

    .line 514
    .line 515
    move-object v0, v6

    .line 516
    goto :goto_f

    .line 517
    :cond_18
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    goto :goto_f

    .line 522
    :goto_e
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 523
    .line 524
    const-string v3, "failed to parse TXT records"

    .line 525
    .line 526
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    :goto_f
    if-eqz v0, :cond_1b

    .line 539
    .line 540
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzc()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    if-eqz v2, :cond_19

    .line 545
    .line 546
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzc()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    goto :goto_10

    .line 555
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzd()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Ljava/util/Map;

    .line 560
    .line 561
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzz:Lcom/google/android/libraries/places/internal/zzbcu;

    .line 562
    .line 563
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbcu;->zza(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    goto :goto_10

    .line 568
    :cond_1a
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 569
    .line 570
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 571
    .line 572
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 573
    .line 574
    new-array v12, v3, [Ljava/lang/Object;

    .line 575
    .line 576
    aput-object v0, v12, v2

    .line 577
    .line 578
    const-string v10, "resolveServiceConfig"

    .line 579
    .line 580
    const-string v11, "No TXT records found for {0}"

    .line 581
    .line 582
    const-string v9, "io.grpc.internal.DnsNameResolver"

    .line 583
    .line 584
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    :cond_1b
    :goto_10
    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzbib;->zze(Lcom/google/android/libraries/places/internal/zzbib;Lcom/google/android/libraries/places/internal/zzbcp;)V

    .line 588
    .line 589
    .line 590
    :cond_1c
    return-object v5

    .line 591
    :catchall_0
    move-exception v0

    .line 592
    goto :goto_11

    .line 593
    :catch_5
    move-exception v0

    .line 594
    move-object v6, v0

    .line 595
    goto :goto_12

    .line 596
    :goto_11
    move-object v11, v6

    .line 597
    goto :goto_13

    .line 598
    :goto_12
    :try_start_5
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zznd;->zza(Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    new-instance v0, Ljava/lang/RuntimeException;

    .line 602
    .line 603
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 604
    .line 605
    .line 606
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 607
    :goto_13
    if-eqz v11, :cond_1d

    .line 608
    .line 609
    :try_start_6
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    .line 610
    .line 611
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 612
    .line 613
    const-string v8, "io.grpc.internal.DnsNameResolver"

    .line 614
    .line 615
    const-string v9, "resolveAddresses"

    .line 616
    .line 617
    const-string v10, "Address resolution failure"

    .line 618
    .line 619
    invoke-virtual/range {v6 .. v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .line 621
    .line 622
    :cond_1d
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 623
    :goto_14
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 630
    .line 631
    const-string v4, "Unable to resolve host "

    .line 632
    .line 633
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {v5, v0}, Lcom/google/android/libraries/places/internal/zzbib;->zzf(Lcom/google/android/libraries/places/internal/zzbib;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 646
    .line 647
    .line 648
    return-object v5
.end method
