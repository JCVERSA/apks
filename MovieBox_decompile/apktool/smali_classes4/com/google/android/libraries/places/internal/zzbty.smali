.class final Lcom/google/android/libraries/places/internal/zzbty;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v10, "WINDOW_UPDATE"

    .line 5
    .line 6
    const-string v11, "CONTINUATION"

    .line 7
    .line 8
    const-string v2, "DATA"

    .line 9
    .line 10
    const-string v3, "HEADERS"

    .line 11
    .line 12
    const-string v4, "PRIORITY"

    .line 13
    .line 14
    const-string v5, "RST_STREAM"

    .line 15
    .line 16
    const-string v6, "SETTINGS"

    .line 17
    .line 18
    const-string v7, "PUSH_PROMISE"

    .line 19
    .line 20
    const-string v8, "PING"

    .line 21
    .line 22
    const-string v9, "GOAWAY"

    .line 23
    .line 24
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbty;->zza:[Ljava/lang/String;

    .line 29
    .line 30
    const/16 v2, 0x40

    .line 31
    .line 32
    new-array v3, v2, [Ljava/lang/String;

    .line 33
    .line 34
    sput-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 35
    .line 36
    const/16 v3, 0x100

    .line 37
    .line 38
    new-array v4, v3, [Ljava/lang/String;

    .line 39
    .line 40
    sput-object v4, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    move v5, v4

    .line 44
    :goto_0
    const/16 v6, 0x20

    .line 45
    .line 46
    if-ge v5, v3, :cond_0

    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-array v8, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v7, v8, v4

    .line 55
    .line 56
    const-string v7, "%8s"

    .line 57
    .line 58
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/16 v8, 0x30

    .line 63
    .line 64
    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    .line 69
    .line 70
    aput-object v6, v7, v5

    .line 71
    .line 72
    add-int/2addr v5, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, ""

    .line 77
    .line 78
    aput-object v5, v3, v4

    .line 79
    .line 80
    const-string v5, "END_STREAM"

    .line 81
    .line 82
    aput-object v5, v3, v1

    .line 83
    .line 84
    filled-new-array {v1}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string v7, "PADDED"

    .line 89
    .line 90
    aput-object v7, v3, v0

    .line 91
    .line 92
    move v3, v4

    .line 93
    :goto_1
    const-string v7, "|PADDED"

    .line 94
    .line 95
    if-gtz v3, :cond_1

    .line 96
    .line 97
    aget v8, v5, v3

    .line 98
    .line 99
    or-int/lit8 v9, v8, 0x8

    .line 100
    .line 101
    sget-object v10, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 102
    .line 103
    aget-object v8, v10, v8

    .line 104
    .line 105
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    aput-object v7, v10, v9

    .line 114
    .line 115
    add-int/2addr v3, v1

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 118
    .line 119
    const/4 v8, 0x4

    .line 120
    const-string v9, "END_HEADERS"

    .line 121
    .line 122
    aput-object v9, v3, v8

    .line 123
    .line 124
    const-string v9, "PRIORITY"

    .line 125
    .line 126
    aput-object v9, v3, v6

    .line 127
    .line 128
    const-string v9, "END_HEADERS|PRIORITY"

    .line 129
    .line 130
    const/16 v10, 0x24

    .line 131
    .line 132
    aput-object v9, v3, v10

    .line 133
    .line 134
    filled-new-array {v8, v6, v10}, [I

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move v6, v4

    .line 139
    :goto_2
    const/4 v8, 0x3

    .line 140
    if-ge v6, v8, :cond_3

    .line 141
    .line 142
    aget v8, v3, v6

    .line 143
    .line 144
    move v9, v4

    .line 145
    :goto_3
    if-gtz v9, :cond_2

    .line 146
    .line 147
    aget v10, v5, v9

    .line 148
    .line 149
    or-int v11, v10, v8

    .line 150
    .line 151
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 152
    .line 153
    aget-object v13, v12, v10

    .line 154
    .line 155
    aget-object v14, v12, v8

    .line 156
    .line 157
    new-instance v15, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v13, "|"

    .line 166
    .line 167
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    aput-object v14, v12, v11

    .line 178
    .line 179
    or-int/2addr v11, v0

    .line 180
    aget-object v10, v12, v10

    .line 181
    .line 182
    aget-object v14, v12, v8

    .line 183
    .line 184
    new-instance v15, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    aput-object v10, v12, v11

    .line 206
    .line 207
    add-int/2addr v9, v1

    .line 208
    goto :goto_3

    .line 209
    :cond_2
    add-int/2addr v6, v1

    .line 210
    goto :goto_2

    .line 211
    :cond_3
    :goto_4
    if-ge v4, v2, :cond_5

    .line 212
    .line 213
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 214
    .line 215
    aget-object v3, v0, v4

    .line 216
    .line 217
    if-nez v3, :cond_4

    .line 218
    .line 219
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    .line 220
    .line 221
    aget-object v3, v3, v4

    .line 222
    .line 223
    aput-object v3, v0, v4

    .line 224
    .line 225
    :cond_4
    add-int/2addr v4, v1

    .line 226
    goto :goto_4

    .line 227
    :cond_5
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static zza(ZIIBB)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    const/16 v6, 0xa

    .line 8
    .line 9
    if-ge p3, v6, :cond_0

    .line 10
    .line 11
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbty;->zza:[Ljava/lang/String;

    .line 12
    .line 13
    aget-object v6, v6, p3

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-array v7, v5, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v6, v7, v4

    .line 23
    .line 24
    const-string v6, "0x%02x"

    .line 25
    .line 26
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    :goto_0
    if-nez p4, :cond_1

    .line 31
    .line 32
    const-string p3, ""

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    if-eq p3, v3, :cond_7

    .line 36
    .line 37
    if-eq p3, v2, :cond_7

    .line 38
    .line 39
    if-eq p3, v1, :cond_5

    .line 40
    .line 41
    const/4 v7, 0x6

    .line 42
    if-eq p3, v7, :cond_5

    .line 43
    .line 44
    const/4 v7, 0x7

    .line 45
    if-eq p3, v7, :cond_7

    .line 46
    .line 47
    const/16 v7, 0x8

    .line 48
    .line 49
    if-eq p3, v7, :cond_7

    .line 50
    .line 51
    const/16 v7, 0x40

    .line 52
    .line 53
    if-ge p4, v7, :cond_2

    .line 54
    .line 55
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    .line 56
    .line 57
    aget-object v7, v7, p4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    .line 61
    .line 62
    aget-object v7, v7, p4

    .line 63
    .line 64
    :goto_1
    if-ne p3, v0, :cond_3

    .line 65
    .line 66
    and-int/lit8 p3, p4, 0x4

    .line 67
    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    const-string p3, "HEADERS"

    .line 71
    .line 72
    const-string p4, "PUSH_PROMISE"

    .line 73
    .line 74
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    if-nez p3, :cond_4

    .line 80
    .line 81
    and-int/lit8 p3, p4, 0x20

    .line 82
    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    const-string p3, "PRIORITY"

    .line 86
    .line 87
    const-string p4, "COMPRESSED"

    .line 88
    .line 89
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move-object p3, v7

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    if-ne p4, v5, :cond_6

    .line 97
    .line 98
    const-string p3, "ACK"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    .line 102
    .line 103
    aget-object p3, p3, p4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    .line 107
    .line 108
    aget-object p3, p3, p4

    .line 109
    .line 110
    :goto_2
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 111
    .line 112
    if-eq v5, p0, :cond_8

    .line 113
    .line 114
    const-string p0, ">>"

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_8
    const-string p0, "<<"

    .line 118
    .line 119
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object p0, v0, v4

    .line 130
    .line 131
    aput-object p1, v0, v5

    .line 132
    .line 133
    aput-object p2, v0, v3

    .line 134
    .line 135
    aput-object v6, v0, v2

    .line 136
    .line 137
    aput-object p3, v0, v1

    .line 138
    .line 139
    const-string p0, "%s 0x%08x %5d %-13s %s"

    .line 140
    .line 141
    invoke-static {p4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method
