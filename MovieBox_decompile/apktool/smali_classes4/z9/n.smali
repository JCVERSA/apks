.class public final Lz9/n;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[I

.field private final c:[Ljava/lang/String;

.field private final d:I


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz9/n;->a:[Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lz9/n;->b:[I

    .line 7
    .line 8
    iput-object p3, p0, Lz9/n;->c:[Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lz9/n;->d:I

    .line 11
    .line 12
    return-void
.end method

.method public static b(Ljava/lang/String;)Lz9/n;
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    new-array v2, v1, [I

    .line 6
    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, v0, v2, v1}, Lz9/n;->c(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    new-instance v3, Lz9/n;

    .line 14
    .line 15
    invoke-direct {v3, v0, v2, v1, p0}, Lz9/n;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-object v3
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const-string v4, ""

    .line 6
    .line 7
    aput-object v4, p1, v3

    .line 8
    .line 9
    move v5, v3

    .line 10
    move v6, v5

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    if-ge v5, v7, :cond_9

    .line 16
    .line 17
    const-string v7, "$"

    .line 18
    .line 19
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    if-ne v8, v0, :cond_0

    .line 24
    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    aget-object v8, p1, v6

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    aput-object v5, p1, v6

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-eq v8, v5, :cond_1

    .line 54
    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    aget-object v9, p1, v6

    .line 61
    .line 62
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    aput-object v5, p1, v6

    .line 77
    .line 78
    move v5, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v8, "$$"

    .line 81
    .line 82
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_2

    .line 87
    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    aget-object v9, p1, v6

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    aput-object v7, p1, v6

    .line 106
    .line 107
    add-int/2addr v5, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    add-int/2addr v5, v2

    .line 110
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string v8, "RepresentationID"

    .line 119
    .line 120
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_3

    .line 125
    .line 126
    aput v2, p2, v6

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_3
    const-string v8, "%0"

    .line 131
    .line 132
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eq v8, v0, :cond_5

    .line 137
    .line 138
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const-string v10, "d"

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-nez v11, :cond_4

    .line 149
    .line 150
    const-string v11, "x"

    .line 151
    .line 152
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-nez v11, :cond_4

    .line 157
    .line 158
    const-string v11, "X"

    .line 159
    .line 160
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-nez v11, :cond_4

    .line 165
    .line 166
    new-instance v11, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    :cond_4
    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_1

    .line 186
    :cond_5
    const-string v9, "%01d"

    .line 187
    .line 188
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    sparse-switch v8, :sswitch_data_0

    .line 196
    .line 197
    .line 198
    :goto_2
    move v5, v0

    .line 199
    goto :goto_3

    .line 200
    :sswitch_0
    const-string v8, "Bandwidth"

    .line 201
    .line 202
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_6

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    move v5, v1

    .line 210
    goto :goto_3

    .line 211
    :sswitch_1
    const-string v8, "Time"

    .line 212
    .line 213
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-nez v5, :cond_7

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_7
    move v5, v2

    .line 221
    goto :goto_3

    .line 222
    :sswitch_2
    const-string v8, "Number"

    .line 223
    .line 224
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_8

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_8
    move v5, v3

    .line 232
    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 233
    .line 234
    .line 235
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string p3, "Invalid template: "

    .line 243
    .line 244
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :pswitch_0
    const/4 v5, 0x3

    .line 259
    aput v5, p2, v6

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :pswitch_1
    const/4 v5, 0x4

    .line 263
    aput v5, p2, v6

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :pswitch_2
    aput v1, p2, v6

    .line 267
    .line 268
    :goto_4
    aput-object v9, p3, v6

    .line 269
    .line 270
    :goto_5
    add-int/2addr v6, v2

    .line 271
    aput-object v4, p1, v6

    .line 272
    .line 273
    add-int/2addr v7, v2

    .line 274
    move v5, v7

    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_9
    return v6

    .line 278
    nop

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;JIJ)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget v4, p0, Lz9/n;->d:I

    .line 10
    .line 11
    if-ge v3, v4, :cond_4

    .line 12
    .line 13
    iget-object v4, p0, Lz9/n;->a:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v4, v4, v3

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lz9/n;->b:[I

    .line 21
    .line 22
    aget v4, v4, v3

    .line 23
    .line 24
    if-ne v4, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v5, 0x2

    .line 31
    if-ne v4, v5, :cond_1

    .line 32
    .line 33
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    iget-object v5, p0, Lz9/n;->c:[Ljava/lang/String;

    .line 36
    .line 37
    aget-object v5, v5, v3

    .line 38
    .line 39
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    new-array v7, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v6, v7, v2

    .line 46
    .line 47
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v5, 0x3

    .line 56
    if-ne v4, v5, :cond_2

    .line 57
    .line 58
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    iget-object v5, p0, Lz9/n;->c:[Ljava/lang/String;

    .line 61
    .line 62
    aget-object v5, v5, v3

    .line 63
    .line 64
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    new-array v7, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v6, v7, v2

    .line 71
    .line 72
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v5, 0x4

    .line 81
    if-ne v4, v5, :cond_3

    .line 82
    .line 83
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 84
    .line 85
    iget-object v5, p0, Lz9/n;->c:[Ljava/lang/String;

    .line 86
    .line 87
    aget-object v5, v5, v3

    .line 88
    .line 89
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    new-array v7, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v6, v7, v2

    .line 96
    .line 97
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    add-int/2addr v3, v0

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object p1, p0, Lz9/n;->a:[Ljava/lang/String;

    .line 107
    .line 108
    aget-object p1, p1, v4

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1
.end method
