.class public final enum Lcom/google/android/libraries/places/internal/zzbjb;
.super Ljava/lang/Enum;
.source "source.java"


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzg:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzh:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzi:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzj:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzk:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzl:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzm:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzn:Lcom/google/android/libraries/places/internal/zzbjb;

.field private static final zzo:[Lcom/google/android/libraries/places/internal/zzbjb;

.field private static final synthetic zzp:[Lcom/google/android/libraries/places/internal/zzbjb;


# instance fields
.field private final zzq:I

.field private final zzr:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 4
    .line 5
    const-string v2, "NO_ERROR"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zza:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 14
    .line 15
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 16
    .line 17
    const-string v5, "PROTOCOL_ERROR"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    invoke-direct {v2, v5, v6, v6, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzb:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 24
    .line 25
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 26
    .line 27
    const-string v7, "INTERNAL_ERROR"

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    invoke-direct {v5, v7, v8, v8, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 31
    .line 32
    .line 33
    sput-object v5, Lcom/google/android/libraries/places/internal/zzbjb;->zzc:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 34
    .line 35
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 36
    .line 37
    const-string v9, "FLOW_CONTROL_ERROR"

    .line 38
    .line 39
    const/4 v10, 0x3

    .line 40
    invoke-direct {v7, v9, v10, v10, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 41
    .line 42
    .line 43
    sput-object v7, Lcom/google/android/libraries/places/internal/zzbjb;->zzd:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 44
    .line 45
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 46
    .line 47
    const-string v11, "SETTINGS_TIMEOUT"

    .line 48
    .line 49
    const/4 v12, 0x4

    .line 50
    invoke-direct {v9, v11, v12, v12, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 51
    .line 52
    .line 53
    sput-object v9, Lcom/google/android/libraries/places/internal/zzbjb;->zze:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 54
    .line 55
    new-instance v11, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 56
    .line 57
    const-string v13, "STREAM_CLOSED"

    .line 58
    .line 59
    const/4 v14, 0x5

    .line 60
    invoke-direct {v11, v13, v14, v14, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 61
    .line 62
    .line 63
    sput-object v11, Lcom/google/android/libraries/places/internal/zzbjb;->zzf:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 64
    .line 65
    new-instance v13, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 66
    .line 67
    const-string v15, "FRAME_SIZE_ERROR"

    .line 68
    .line 69
    const/4 v14, 0x6

    .line 70
    invoke-direct {v13, v15, v14, v14, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 71
    .line 72
    .line 73
    sput-object v13, Lcom/google/android/libraries/places/internal/zzbjb;->zzg:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 74
    .line 75
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 76
    .line 77
    const-string v14, "REFUSED_STREAM"

    .line 78
    .line 79
    const/4 v12, 0x7

    .line 80
    invoke-direct {v15, v14, v12, v12, v1}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 81
    .line 82
    .line 83
    sput-object v15, Lcom/google/android/libraries/places/internal/zzbjb;->zzh:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 84
    .line 85
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 86
    .line 87
    const/16 v14, 0x8

    .line 88
    .line 89
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 90
    .line 91
    const-string v10, "CANCEL"

    .line 92
    .line 93
    invoke-direct {v1, v10, v14, v14, v12}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 94
    .line 95
    .line 96
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjb;->zzi:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 97
    .line 98
    new-instance v10, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 99
    .line 100
    const-string v12, "COMPRESSION_ERROR"

    .line 101
    .line 102
    const/16 v14, 0x9

    .line 103
    .line 104
    invoke-direct {v10, v12, v14, v14, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 105
    .line 106
    .line 107
    sput-object v10, Lcom/google/android/libraries/places/internal/zzbjb;->zzj:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 108
    .line 109
    new-instance v12, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 110
    .line 111
    const-string v14, "CONNECT_ERROR"

    .line 112
    .line 113
    const/16 v8, 0xa

    .line 114
    .line 115
    invoke-direct {v12, v14, v8, v8, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 116
    .line 117
    .line 118
    sput-object v12, Lcom/google/android/libraries/places/internal/zzbjb;->zzk:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 119
    .line 120
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 121
    .line 122
    sget-object v14, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 123
    .line 124
    const-string v8, "Bandwidth exhausted"

    .line 125
    .line 126
    invoke-virtual {v14, v8}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    const-string v14, "ENHANCE_YOUR_CALM"

    .line 131
    .line 132
    const/16 v6, 0xb

    .line 133
    .line 134
    invoke-direct {v4, v14, v6, v6, v8}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 135
    .line 136
    .line 137
    sput-object v4, Lcom/google/android/libraries/places/internal/zzbjb;->zzl:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 138
    .line 139
    new-instance v8, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 140
    .line 141
    sget-object v14, Lcom/google/android/libraries/places/internal/zzbdo;->zzh:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 142
    .line 143
    const-string v6, "Permission denied as protocol is not secure enough to call"

    .line 144
    .line 145
    invoke-virtual {v14, v6}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const-string v14, "INADEQUATE_SECURITY"

    .line 150
    .line 151
    const/16 v3, 0xc

    .line 152
    .line 153
    invoke-direct {v8, v14, v3, v3, v6}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 154
    .line 155
    .line 156
    sput-object v8, Lcom/google/android/libraries/places/internal/zzbjb;->zzm:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 157
    .line 158
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbjb;

    .line 159
    .line 160
    const/16 v14, 0xd

    .line 161
    .line 162
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 163
    .line 164
    move-object/from16 v16, v8

    .line 165
    .line 166
    const-string v8, "HTTP_1_1_REQUIRED"

    .line 167
    .line 168
    invoke-direct {v6, v8, v14, v14, v3}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    .line 169
    .line 170
    .line 171
    sput-object v6, Lcom/google/android/libraries/places/internal/zzbjb;->zzn:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 172
    .line 173
    const/16 v3, 0xe

    .line 174
    .line 175
    new-array v3, v3, [Lcom/google/android/libraries/places/internal/zzbjb;

    .line 176
    .line 177
    const/4 v8, 0x0

    .line 178
    aput-object v0, v3, v8

    .line 179
    .line 180
    const/4 v0, 0x1

    .line 181
    aput-object v2, v3, v0

    .line 182
    .line 183
    const/4 v0, 0x2

    .line 184
    aput-object v5, v3, v0

    .line 185
    .line 186
    const/4 v0, 0x3

    .line 187
    aput-object v7, v3, v0

    .line 188
    .line 189
    const/4 v0, 0x4

    .line 190
    aput-object v9, v3, v0

    .line 191
    .line 192
    const/4 v0, 0x5

    .line 193
    aput-object v11, v3, v0

    .line 194
    .line 195
    const/4 v0, 0x6

    .line 196
    aput-object v13, v3, v0

    .line 197
    .line 198
    const/4 v0, 0x7

    .line 199
    aput-object v15, v3, v0

    .line 200
    .line 201
    const/16 v0, 0x8

    .line 202
    .line 203
    aput-object v1, v3, v0

    .line 204
    .line 205
    const/16 v0, 0x9

    .line 206
    .line 207
    aput-object v10, v3, v0

    .line 208
    .line 209
    const/16 v0, 0xa

    .line 210
    .line 211
    aput-object v12, v3, v0

    .line 212
    .line 213
    const/16 v0, 0xb

    .line 214
    .line 215
    aput-object v4, v3, v0

    .line 216
    .line 217
    const/16 v0, 0xc

    .line 218
    .line 219
    aput-object v16, v3, v0

    .line 220
    .line 221
    aput-object v6, v3, v14

    .line 222
    .line 223
    sput-object v3, Lcom/google/android/libraries/places/internal/zzbjb;->zzp:[Lcom/google/android/libraries/places/internal/zzbjb;

    .line 224
    .line 225
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbjb;->values()[Lcom/google/android/libraries/places/internal/zzbjb;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    array-length v1, v0

    .line 230
    add-int/lit8 v2, v1, -0x1

    .line 231
    .line 232
    aget-object v2, v0, v2

    .line 233
    .line 234
    iget v2, v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzq:I

    .line 235
    .line 236
    int-to-long v2, v2

    .line 237
    long-to-int v2, v2

    .line 238
    const/4 v3, 0x1

    .line 239
    add-int/2addr v2, v3

    .line 240
    new-array v2, v2, [Lcom/google/android/libraries/places/internal/zzbjb;

    .line 241
    .line 242
    :goto_0
    if-ge v8, v1, :cond_0

    .line 243
    .line 244
    aget-object v4, v0, v8

    .line 245
    .line 246
    iget v5, v4, Lcom/google/android/libraries/places/internal/zzbjb;->zzq:I

    .line 247
    .line 248
    int-to-long v5, v5

    .line 249
    long-to-int v5, v5

    .line 250
    aput-object v4, v2, v5

    .line 251
    .line 252
    add-int/2addr v8, v3

    .line 253
    goto :goto_0

    .line 254
    :cond_0
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzo:[Lcom/google/android/libraries/places/internal/zzbjb;

    .line 255
    .line 256
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbjb;->zzq:I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "HTTP/2 error code: "

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " ("

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ")"

    .line 47
    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_0
    invoke-virtual {p4, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjb;->zzr:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 60
    .line 61
    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbjb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzp:[Lcom/google/android/libraries/places/internal/zzbjb;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbjb;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbjb;

    .line 8
    .line 9
    return-object v0
.end method

.method public static zza(J)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzo:[Lcom/google/android/libraries/places/internal/zzbjb;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    int-to-long v1, v1

    .line 5
    cmp-long v1, p0, v1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-gez v1, :cond_1

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, p0, v3

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    long-to-int v1, p0

    .line 18
    aget-object v2, v0, v1

    .line 19
    .line 20
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzc:Lcom/google/android/libraries/places/internal/zzbjb;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzr:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zza()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzd(I)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "Unrecognized HTTP/2 error code: "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_2
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzr:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 61
    .line 62
    return-object p0
.end method
