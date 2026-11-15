.class public final Lcom/google/android/libraries/places/internal/zzbkg;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/google/android/libraries/places/internal/zzbkg;->zza:J

    .line 10
    .line 11
    return-void
.end method

.method public static zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p0, v2, p1

    .line 33
    .line 34
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    .line 35
    .line 36
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public static zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    instance-of v4, v3, Ljava/lang/Double;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    check-cast v3, Ljava/lang/Double;

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    :try_start_0
    move-object p0, v3

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v3, v2, v1

    .line 44
    .line 45
    aput-object p1, v2, v0

    .line 46
    .line 47
    const-string p1, "value \'%s\' for key \'%s\' is not a double"

    .line 48
    .line 49
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    new-array v5, v5, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v3, v5, v1

    .line 63
    .line 64
    aput-object p1, v5, v0

    .line 65
    .line 66
    aput-object p0, v5, v2

    .line 67
    .line 68
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not a number"

    .line 69
    .line 70
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v4
.end method

.method public static zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of v3, p0, Ljava/lang/Double;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    check-cast p0, Ljava/lang/Double;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-double v0, p1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    cmpl-double v0, v0, v2

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "Number expected to be integer: "

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    instance-of v3, p0, Ljava/lang/String;

    .line 57
    .line 58
    const-string v4, "value \'%s\' for key \'%s\' is not an integer"

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    :try_start_0
    move-object v3, p0

    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object p0

    .line 74
    :catch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object p0, v2, v1

    .line 79
    .line 80
    aput-object p1, v2, v0

    .line 81
    .line 82
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v3

    .line 90
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object p0, v2, v1

    .line 95
    .line 96
    aput-object p1, v2, v0

    .line 97
    .line 98
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v3
.end method

.method public static zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 20

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static/range {p0 .. p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const-string v4, "Invalid duration string: "

    .line 16
    .line 17
    if-nez v3, :cond_16

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v5, -0x1

    .line 24
    add-int/2addr v3, v5

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v6, 0x73

    .line 30
    .line 31
    if-ne v3, v6, :cond_16

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v6, 0x2d

    .line 38
    .line 39
    if-ne v3, v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move v3, v1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_1
    move v3, v0

    .line 51
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    add-int/2addr v6, v5

    .line 56
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v7, ""

    .line 61
    .line 62
    const/16 v8, 0x2e

    .line 63
    .line 64
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eq v8, v5, :cond_2

    .line 69
    .line 70
    add-int/lit8 v5, v8, 0x1

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    :cond_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    move v9, v0

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    move v8, v0

    .line 93
    move v9, v8

    .line 94
    :goto_1
    const/16 v10, 0x9

    .line 95
    .line 96
    if-ge v8, v10, :cond_6

    .line 97
    .line 98
    mul-int/lit8 v9, v9, 0xa

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-ge v8, v10, :cond_5

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    const/16 v11, 0x30

    .line 111
    .line 112
    if-lt v10, v11, :cond_4

    .line 113
    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    const/16 v11, 0x39

    .line 119
    .line 120
    if-gt v10, v11, :cond_4

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    add-int/lit8 v10, v10, -0x30

    .line 127
    .line 128
    add-int/2addr v9, v10

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    new-instance v1, Ljava/text/ParseException;

    .line 131
    .line 132
    const-string v2, "Invalid nanoseconds."

    .line 133
    .line 134
    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    throw v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_5
    :goto_2
    add-int/2addr v8, v1

    .line 139
    goto :goto_1

    .line 140
    :cond_6
    :goto_3
    const-wide/16 v7, 0x0

    .line 141
    .line 142
    cmp-long v10, v5, v7

    .line 143
    .line 144
    if-ltz v10, :cond_15

    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    neg-long v5, v5

    .line 149
    neg-int v9, v9

    .line 150
    :cond_7
    int-to-long v2, v9

    .line 151
    :try_start_2
    sget-wide v10, Lcom/google/android/libraries/places/internal/zzbkg;->zza:J

    .line 152
    .line 153
    neg-long v12, v10

    .line 154
    cmp-long v4, v2, v12

    .line 155
    .line 156
    if-lez v4, :cond_8

    .line 157
    .line 158
    cmp-long v4, v2, v10

    .line 159
    .line 160
    if-ltz v4, :cond_b

    .line 161
    .line 162
    :cond_8
    div-long v12, v2, v10

    .line 163
    .line 164
    sget v4, Lcom/google/android/libraries/places/internal/zzajm;->zza:I

    .line 165
    .line 166
    add-long v14, v5, v12

    .line 167
    .line 168
    xor-long v16, v5, v12

    .line 169
    .line 170
    xor-long v18, v5, v14

    .line 171
    .line 172
    const-string v4, "checkedAdd"

    .line 173
    .line 174
    cmp-long v9, v18, v7

    .line 175
    .line 176
    if-ltz v9, :cond_9

    .line 177
    .line 178
    move v9, v1

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    move v9, v0

    .line 181
    :goto_4
    cmp-long v16, v16, v7

    .line 182
    .line 183
    if-gez v16, :cond_a

    .line 184
    .line 185
    move/from16 v16, v1

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_a
    move/from16 v16, v0

    .line 189
    .line 190
    :goto_5
    or-int v9, v16, v9

    .line 191
    .line 192
    if-eqz v9, :cond_14

    .line 193
    .line 194
    rem-long/2addr v2, v10

    .line 195
    long-to-int v9, v2

    .line 196
    move-wide v5, v14

    .line 197
    :cond_b
    cmp-long v2, v5, v7

    .line 198
    .line 199
    if-lez v2, :cond_c

    .line 200
    .line 201
    if-gez v9, :cond_c

    .line 202
    .line 203
    int-to-long v2, v9

    .line 204
    add-long/2addr v2, v10

    .line 205
    const-wide/16 v12, -0x1

    .line 206
    .line 207
    add-long/2addr v5, v12

    .line 208
    long-to-int v9, v2

    .line 209
    :cond_c
    cmp-long v2, v5, v7

    .line 210
    .line 211
    const-wide/16 v3, 0x1

    .line 212
    .line 213
    if-gez v2, :cond_d

    .line 214
    .line 215
    if-lez v9, :cond_d

    .line 216
    .line 217
    int-to-long v12, v9

    .line 218
    sub-long/2addr v12, v10

    .line 219
    add-long/2addr v5, v3

    .line 220
    long-to-int v9, v12

    .line 221
    :cond_d
    const-wide v12, -0x4979cb9e00L

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    cmp-long v2, v5, v12

    .line 227
    .line 228
    if-ltz v2, :cond_13

    .line 229
    .line 230
    const-wide v12, 0x4979cb9e00L

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    cmp-long v2, v5, v12

    .line 236
    .line 237
    if-gtz v2, :cond_13

    .line 238
    .line 239
    int-to-long v12, v9

    .line 240
    const-wide/32 v14, -0x3b9ac9ff

    .line 241
    .line 242
    .line 243
    cmp-long v2, v12, v14

    .line 244
    .line 245
    if-ltz v2, :cond_13

    .line 246
    .line 247
    cmp-long v2, v12, v10

    .line 248
    .line 249
    if-gez v2, :cond_13

    .line 250
    .line 251
    cmp-long v2, v5, v7

    .line 252
    .line 253
    if-ltz v2, :cond_e

    .line 254
    .line 255
    if-gez v9, :cond_f

    .line 256
    .line 257
    :cond_e
    if-gtz v2, :cond_13

    .line 258
    .line 259
    if-gtz v9, :cond_13

    .line 260
    .line 261
    :cond_f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    .line 263
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    add-long v9, v5, v12

    .line 268
    .line 269
    xor-long v11, v5, v12

    .line 270
    .line 271
    xor-long/2addr v5, v9

    .line 272
    cmp-long v2, v5, v7

    .line 273
    .line 274
    if-ltz v2, :cond_10

    .line 275
    .line 276
    move v2, v1

    .line 277
    goto :goto_6

    .line 278
    :cond_10
    move v2, v0

    .line 279
    :goto_6
    cmp-long v5, v11, v7

    .line 280
    .line 281
    if-gez v5, :cond_11

    .line 282
    .line 283
    move v0, v1

    .line 284
    :cond_11
    or-int/2addr v0, v2

    .line 285
    if-eqz v0, :cond_12

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_12
    const/16 v0, 0x3f

    .line 289
    .line 290
    ushr-long v0, v9, v0

    .line 291
    .line 292
    xor-long/2addr v0, v3

    .line 293
    const-wide v2, 0x7fffffffffffffffL

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    add-long v9, v0, v2

    .line 299
    .line 300
    :goto_7
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    .line 304
    return-object v0

    .line 305
    :cond_13
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 306
    .line 307
    const-string v3, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    .line 308
    .line 309
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    const/4 v6, 0x2

    .line 318
    new-array v6, v6, [Ljava/lang/Object;

    .line 319
    .line 320
    aput-object v4, v6, v0

    .line 321
    .line 322
    aput-object v5, v6, v1

    .line 323
    .line 324
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v2

    .line 332
    :cond_14
    new-instance v1, Ljava/lang/ArithmeticException;

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v3, "overflow: "

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v3, "("

    .line 348
    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v3, ", "

    .line 356
    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v3, ")"

    .line 364
    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 376
    :catch_1
    :try_start_5
    new-instance v1, Ljava/text/ParseException;

    .line 377
    .line 378
    const-string v2, "Duration value is out of range."

    .line 379
    .line 380
    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 381
    .line 382
    .line 383
    throw v1

    .line 384
    :cond_15
    new-instance v1, Ljava/text/ParseException;

    .line 385
    .line 386
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    throw v1

    .line 394
    :cond_16
    new-instance v1, Ljava/text/ParseException;

    .line 395
    .line 396
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 401
    .line 402
    .line 403
    throw v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    .line 404
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 405
    .line 406
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    throw v1
.end method

.method public static zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p0, v2, p1

    .line 33
    .line 34
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not String"

    .line 35
    .line 36
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public static zzf(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_1

    .line 9
    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    instance-of v3, v3, Ljava/util/Map;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v6, 0x3

    .line 33
    new-array v6, v6, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v5, v6, v1

    .line 36
    .line 37
    aput-object v2, v6, v0

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    aput-object p0, v6, v0

    .line 41
    .line 42
    const-string p0, "value %s for idx %d in %s is not object"

    .line 43
    .line 44
    invoke-static {v4, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v3, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v3

    .line 52
    :cond_1
    return-object p0
.end method

.method public static zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p0, v2, p1

    .line 33
    .line 34
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not List"

    .line 35
    .line 36
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public static zzh(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbkg;->zzf(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public static zzi(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge p1, v2, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v2, v2, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    add-int/2addr p1, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    .line 29
    .line 30
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v5, 0x3

    .line 41
    new-array v5, v5, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v4, v5, v1

    .line 44
    .line 45
    aput-object p1, v5, v0

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    aput-object p0, v5, p1

    .line 49
    .line 50
    const-string p0, "value \'%s\' for idx %d in \'%s\' is not string"

    .line 51
    .line 52
    invoke-static {v3, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v2, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :cond_2
    return-object p0
.end method

.method public static zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p0, v2, p1

    .line 33
    .line 34
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not object"

    .line 35
    .line 36
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method
