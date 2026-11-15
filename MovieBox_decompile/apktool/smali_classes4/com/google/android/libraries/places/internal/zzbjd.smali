.class public final Lcom/google/android/libraries/places/internal/zzbjd;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzbca;

.field static final zzg:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzh:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzi:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzj:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzk:Lcom/google/android/libraries/places/internal/zzmy;

.field public static final zzl:J

.field public static final zzm:Lcom/google/android/libraries/places/internal/zzbde;

.field public static final zzn:Lcom/google/android/libraries/places/internal/zzbde;

.field public static final zzo:Lcom/google/android/libraries/places/internal/zzayh;

.field public static final zzp:Lcom/google/android/libraries/places/internal/zzbql;

.field public static final zzq:Lcom/google/android/libraries/places/internal/zzbql;

.field public static final zzr:Lcom/google/android/libraries/places/internal/zznc;

.field private static final zzs:Ljava/util/logging/Logger;

.field private static final zzt:Ljava/util/Set;

.field private static final zzu:Lcom/google/android/libraries/places/internal/zzayx;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbjd;

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
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzs:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbdj;

    .line 17
    .line 18
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzd:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzf:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzg:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzj:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    aput-object v2, v1, v3

    .line 37
    .line 38
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzk:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    aput-object v2, v1, v3

    .line 42
    .line 43
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzl:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 44
    .line 45
    const/4 v3, 0x5

    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzp:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 49
    .line 50
    const/4 v3, 0x6

    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzt:Ljava/util/Set;

    .line 62
    .line 63
    const-string v0, "US-ASCII"

    .line 64
    .line 65
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zza:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjc;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbjc;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "grpc-timeout"

    .line 77
    .line 78
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzb:Lcom/google/android/libraries/places/internal/zzbca;

    .line 83
    .line 84
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbcf;->zzb:Lcom/google/android/libraries/places/internal/zzbbx;

    .line 85
    .line 86
    const-string v1, "grpc-encoding"

    .line 87
    .line 88
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzc:Lcom/google/android/libraries/places/internal/zzbca;

    .line 93
    .line 94
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbja;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzbja;-><init>(Lcom/google/android/libraries/places/internal/zzbiz;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "grpc-accept-encoding"

    .line 101
    .line 102
    invoke-static {v3, v1}, Lcom/google/android/libraries/places/internal/zzbar;->zzb(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbaq;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzd:Lcom/google/android/libraries/places/internal/zzbca;

    .line 107
    .line 108
    const-string v1, "content-encoding"

    .line 109
    .line 110
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zze:Lcom/google/android/libraries/places/internal/zzbca;

    .line 115
    .line 116
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbja;

    .line 117
    .line 118
    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzbja;-><init>(Lcom/google/android/libraries/places/internal/zzbiz;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "accept-encoding"

    .line 122
    .line 123
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbar;->zzb(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbaq;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzf:Lcom/google/android/libraries/places/internal/zzbca;

    .line 128
    .line 129
    const-string v1, "content-length"

    .line 130
    .line 131
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzg:Lcom/google/android/libraries/places/internal/zzbca;

    .line 136
    .line 137
    const-string v1, "content-type"

    .line 138
    .line 139
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzh:Lcom/google/android/libraries/places/internal/zzbca;

    .line 144
    .line 145
    const-string v1, "te"

    .line 146
    .line 147
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzi:Lcom/google/android/libraries/places/internal/zzbca;

    .line 152
    .line 153
    const-string v1, "user-agent"

    .line 154
    .line 155
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzj:Lcom/google/android/libraries/places/internal/zzbca;

    .line 160
    .line 161
    const/16 v0, 0x2c

    .line 162
    .line 163
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzma;->zzb(C)Lcom/google/android/libraries/places/internal/zzma;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmy;->zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzma;->zzc()Lcom/google/android/libraries/places/internal/zzma;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmy;->zzc(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzk:Lcom/google/android/libraries/places/internal/zzmy;

    .line 180
    .line 181
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 182
    .line 183
    const-wide/16 v1, 0x14

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v3

    .line 189
    sput-wide v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzl:J

    .line 190
    .line 191
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 192
    .line 193
    const-wide/16 v4, 0x2

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnu;

    .line 202
    .line 203
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnu;-><init>()V

    .line 204
    .line 205
    .line 206
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzm:Lcom/google/android/libraries/places/internal/zzbde;

    .line 207
    .line 208
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiu;

    .line 209
    .line 210
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiu;-><init>()V

    .line 211
    .line 212
    .line 213
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzn:Lcom/google/android/libraries/places/internal/zzbde;

    .line 214
    .line 215
    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    .line 216
    .line 217
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayh;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzo:Lcom/google/android/libraries/places/internal/zzayh;

    .line 222
    .line 223
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiv;

    .line 224
    .line 225
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiv;-><init>()V

    .line 226
    .line 227
    .line 228
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzu:Lcom/google/android/libraries/places/internal/zzayx;

    .line 229
    .line 230
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiw;

    .line 231
    .line 232
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiw;-><init>()V

    .line 233
    .line 234
    .line 235
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzp:Lcom/google/android/libraries/places/internal/zzbql;

    .line 236
    .line 237
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbix;

    .line 238
    .line 239
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbix;-><init>()V

    .line 240
    .line 241
    .line 242
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzq:Lcom/google/android/libraries/places/internal/zzbql;

    .line 243
    .line 244
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiy;

    .line 245
    .line 246
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiy;-><init>()V

    .line 247
    .line 248
    .line 249
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzr:Lcom/google/android/libraries/places/internal/zznc;

    .line 250
    .line 251
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zza(I)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xc8

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzn:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x190

    .line 13
    .line 14
    if-eq p0, v0, :cond_5

    .line 15
    .line 16
    const/16 v0, 0x191

    .line 17
    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const/16 v0, 0x193

    .line 21
    .line 22
    if-eq p0, v0, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x194

    .line 25
    .line 26
    if-eq p0, v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0x1ad

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x1af

    .line 33
    .line 34
    if-eq p0, v0, :cond_5

    .line 35
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzc:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzo:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzm:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzh:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzq:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzn:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "HTTP status code "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzt:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "Inappropriate status code from control plane: "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " "

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :cond_0
    return-object p0
.end method

.method static zzc(Lcom/google/android/libraries/places/internal/zzbbe;Z)Lcom/google/android/libraries/places/internal/zzbfu;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/libraries/places/internal/zzblx;

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzg:Z

    .line 11
    .line 12
    const-string v3, "Subchannel is not started"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqv;->zzh()Lcom/google/android/libraries/places/internal/zzbfu;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzf()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzg()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbim;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzf()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbfs;->zzc:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 55
    .line 56
    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbim;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_2
    if-nez p1, :cond_3

    .line 61
    .line 62
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbim;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzf()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 73
    .line 74
    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbim;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_3
    return-object v1
.end method

.method public static zzd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v3, "places.googleapis.com"

    .line 2
    .line 3
    :try_start_0
    new-instance p0, Ljava/net/URI;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v4, 0x1bb

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Invalid host or port: places.googleapis.com 443"

    .line 25
    .line 26
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public static zze(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    const-string v1, "getHostString"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static zzf(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    .line 1
    const-string v0, "authority"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, v0

    .line 13
    move-object v3, p0

    .line 14
    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v2, "Invalid authority: "

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method

.method public static zzg(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzakd;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzakd;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzakd;->zza(Z)Lcom/google/android/libraries/places/internal/zzakd;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/internal/zzakd;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzakd;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzakd;->zzc()Ljava/util/concurrent/ThreadFactory;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static zzh(Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 1

    .line 1
    :goto_0
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzbqq;->zza()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void
.end method

.method public static zzi(Ljava/io/Closeable;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v5

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzs:Ljava/util/logging/Logger;

    .line 7
    .line 8
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 9
    .line 10
    const-string v3, "closeQuietly"

    .line 11
    .line 12
    const-string v4, "exception caught in closeQuietly"

    .line 13
    .line 14
    const-string v2, "io.grpc.internal.GrpcUtil"

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static zzj(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznb;->zzd(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_3

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public static zzk(Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;IZ)[Lcom/google/android/libraries/places/internal/zzayx;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzayj;->zzm()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    new-array v2, v2, [Lcom/google/android/libraries/places/internal/zzayx;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzayw;->zza()Lcom/google/android/libraries/places/internal/zzayv;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzayv;->zza(Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayv;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzayv;->zzc(I)Lcom/google/android/libraries/places/internal/zzayv;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p3}, Lcom/google/android/libraries/places/internal/zzayv;->zzb(Z)Lcom/google/android/libraries/places/internal/zzayv;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayv;->zzd()Lcom/google/android/libraries/places/internal/zzayw;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 p2, 0x0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-ge p2, p3, :cond_0

    .line 36
    .line 37
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Lcom/google/android/libraries/places/internal/zzayu;

    .line 42
    .line 43
    invoke-virtual {p3, p0, p1}, Lcom/google/android/libraries/places/internal/zzayu;->zza(Lcom/google/android/libraries/places/internal/zzayw;Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayx;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    aput-object p3, v2, p2

    .line 48
    .line 49
    add-int/lit8 p2, p2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p0, Lcom/google/android/libraries/places/internal/zzbjd;->zzu:Lcom/google/android/libraries/places/internal/zzayx;

    .line 53
    .line 54
    aput-object p0, v2, v1

    .line 55
    .line 56
    return-object v2
.end method
