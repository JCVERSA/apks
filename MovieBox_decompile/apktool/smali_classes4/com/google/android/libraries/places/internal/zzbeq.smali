.class public final Lcom/google/android/libraries/places/internal/zzbeq;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbey;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbbd;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbbm;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbbo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbey;Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zza:Lcom/google/android/libraries/places/internal/zzbey;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbey;->zzb(Lcom/google/android/libraries/places/internal/zzbey;)Lcom/google/android/libraries/places/internal/zzbbq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbey;->zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbbq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbbb;->zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbey;->zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "Could not find policy \'"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p2
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzbbm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    check-cast v3, Lcom/google/android/libraries/places/internal/zzbqg;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zza:Lcom/google/android/libraries/places/internal/zzbey;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbey;->zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v6, "using default policy"

    .line 20
    .line 21
    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbey;->zza(Lcom/google/android/libraries/places/internal/zzbey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;

    .line 22
    .line 23
    .line 24
    move-result-object v3
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzbex; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbqg;

    .line 26
    .line 27
    invoke-direct {v5, v3, v4}, Lcom/google/android/libraries/places/internal/zzbqg;-><init>(Lcom/google/android/libraries/places/internal/zzbbo;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move-object v3, v5

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 44
    .line 45
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    .line 46
    .line 47
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbet;

    .line 48
    .line 49
    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbet;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zze()V

    .line 58
    .line 59
    .line 60
    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 61
    .line 62
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbev;

    .line 63
    .line 64
    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzbev;-><init>(Lcom/google/android/libraries/places/internal/zzbeu;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 68
    .line 69
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 73
    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    iget-object v6, v3, Lcom/google/android/libraries/places/internal/zzbqg;->zza:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbbo;->zzd()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbbo;->zzd()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_2

    .line 91
    .line 92
    :cond_1
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 93
    .line 94
    sget-object v6, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    .line 95
    .line 96
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbes;

    .line 97
    .line 98
    invoke-direct {v7, v4}, Lcom/google/android/libraries/places/internal/zzbes;-><init>(Lcom/google/android/libraries/places/internal/zzber;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v6, v7}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbbm;->zze()V

    .line 107
    .line 108
    .line 109
    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbqg;->zza:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 110
    .line 111
    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 114
    .line 115
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 116
    .line 117
    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbbb;->zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 124
    .line 125
    check-cast v4, Lcom/google/android/libraries/places/internal/zzblg;

    .line 126
    .line 127
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    .line 128
    .line 129
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    new-array v7, v1, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object v5, v7, v0

    .line 154
    .line 155
    aput-object v6, v7, v2

    .line 156
    .line 157
    const-string v5, "Load balancer changed from {0} to {1}"

    .line 158
    .line 159
    invoke-virtual {v4, v1, v5, v7}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    iget-object v1, v3, Lcom/google/android/libraries/places/internal/zzbqg;->zzb:Ljava/lang/Object;

    .line 163
    .line 164
    if-eqz v1, :cond_3

    .line 165
    .line 166
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 167
    .line 168
    check-cast v3, Lcom/google/android/libraries/places/internal/zzblg;

    .line 169
    .line 170
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    .line 171
    .line 172
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    new-array v4, v2, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object v1, v4, v0

    .line 179
    .line 180
    const-string v0, "Load-balancing config: {0}"

    .line 181
    .line 182
    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 186
    .line 187
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbi;->zzb()Lcom/google/android/libraries/places/internal/zzbbg;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbbg;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbbg;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/zzbbg;->zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbbg;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzbbg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbbg;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbg;->zzd()Lcom/google/android/libraries/places/internal/zzbbi;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1
.end method

.method final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zze()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    .line 8
    .line 9
    return-void
.end method
