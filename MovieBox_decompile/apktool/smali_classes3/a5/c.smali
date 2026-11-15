.class public abstract La5/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements La5/b;
.implements Ljava/io/Closeable;


# static fields
.field private static final q:Ljava/lang/ThreadLocal;

.field protected static final r:[C

.field protected static final s:[I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:C

.field protected e:I

.field protected f:I

.field protected g:[C

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Ljava/util/Calendar;

.field protected l:Ljava/util/TimeZone;

.field protected m:Ljava/util/Locale;

.field public n:I

.field protected o:Ljava/lang/String;

.field protected p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La5/c;->q:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "\""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\":\""

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, La5/c;->r:[C

    .line 37
    .line 38
    const/16 v0, 0x67

    .line 39
    .line 40
    new-array v0, v0, [I

    .line 41
    .line 42
    sput-object v0, La5/c;->s:[I

    .line 43
    .line 44
    const/16 v0, 0x30

    .line 45
    .line 46
    :goto_0
    const/16 v1, 0x39

    .line 47
    .line 48
    if-gt v0, v1, :cond_0

    .line 49
    .line 50
    sget-object v1, La5/c;->s:[I

    .line 51
    .line 52
    add-int/lit8 v2, v0, -0x30

    .line 53
    .line 54
    aput v2, v1, v0

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/16 v0, 0x61

    .line 60
    .line 61
    :goto_1
    const/16 v1, 0x66

    .line 62
    .line 63
    if-gt v0, v1, :cond_1

    .line 64
    .line 65
    sget-object v1, La5/c;->s:[I

    .line 66
    .line 67
    add-int/lit8 v2, v0, -0x57

    .line 68
    .line 69
    aput v2, v1, v0

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/16 v0, 0x41

    .line 75
    .line 76
    :goto_2
    const/16 v1, 0x46

    .line 77
    .line 78
    if-gt v0, v1, :cond_2

    .line 79
    .line 80
    sget-object v1, La5/c;->s:[I

    .line 81
    .line 82
    add-int/lit8 v2, v0, -0x37

    .line 83
    .line 84
    aput v2, v1, v0

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La5/c;->k:Ljava/util/Calendar;

    .line 6
    .line 7
    sget-object v1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 8
    .line 9
    iput-object v1, p0, La5/c;->l:Ljava/util/TimeZone;

    .line 10
    .line 11
    sget-object v1, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    .line 12
    .line 13
    iput-object v1, p0, La5/c;->m:Ljava/util/Locale;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, La5/c;->n:I

    .line 17
    .line 18
    iput-object v0, p0, La5/c;->o:Ljava/lang/String;

    .line 19
    .line 20
    iput v1, p0, La5/c;->p:I

    .line 21
    .line 22
    iput p1, p0, La5/c;->c:I

    .line 23
    .line 24
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 25
    .line 26
    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 27
    .line 28
    and-int/2addr p1, v0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    iput-object p1, p0, La5/c;->o:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    sget-object p1, La5/c;->q:Ljava/lang/ThreadLocal;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [C

    .line 42
    .line 43
    iput-object p1, p0, La5/c;->g:[C

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const/16 p1, 0x200

    .line 48
    .line 49
    new-array p1, p1, [C

    .line 50
    .line 51
    iput-object p1, p0, La5/c;->g:[C

    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public static M0(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-gt p0, v0, :cond_1

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0xd

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    if-eq p0, v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public static S0([CI)Ljava/lang/String;
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    new-array v6, v0, [C

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    move v8, v7

    .line 12
    move v9, v8

    .line 13
    :goto_0
    if-ge v8, v0, :cond_9

    .line 14
    .line 15
    aget-char v10, p0, v8

    .line 16
    .line 17
    const/16 v11, 0x5c

    .line 18
    .line 19
    if-eq v10, v11, :cond_0

    .line 20
    .line 21
    add-int/lit8 v11, v9, 0x1

    .line 22
    .line 23
    aput-char v10, v6, v9

    .line 24
    .line 25
    move v12, v1

    .line 26
    move v9, v11

    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v10, v8, 0x1

    .line 30
    .line 31
    aget-char v12, p0, v10

    .line 32
    .line 33
    const/16 v13, 0x22

    .line 34
    .line 35
    if-eq v12, v13, :cond_8

    .line 36
    .line 37
    const/16 v13, 0x27

    .line 38
    .line 39
    if-eq v12, v13, :cond_7

    .line 40
    .line 41
    const/16 v13, 0x46

    .line 42
    .line 43
    if-eq v12, v13, :cond_4

    .line 44
    .line 45
    if-eq v12, v11, :cond_6

    .line 46
    .line 47
    const/16 v11, 0x62

    .line 48
    .line 49
    if-eq v12, v11, :cond_5

    .line 50
    .line 51
    const/16 v11, 0x66

    .line 52
    .line 53
    if-eq v12, v11, :cond_4

    .line 54
    .line 55
    const/16 v11, 0x6e

    .line 56
    .line 57
    if-eq v12, v11, :cond_3

    .line 58
    .line 59
    const/16 v11, 0x72

    .line 60
    .line 61
    if-eq v12, v11, :cond_2

    .line 62
    .line 63
    const/16 v11, 0x78

    .line 64
    .line 65
    const/16 v13, 0x10

    .line 66
    .line 67
    if-eq v12, v11, :cond_1

    .line 68
    .line 69
    packed-switch v12, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    packed-switch v12, :pswitch_data_1

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 76
    .line 77
    const-string v1, "unclosed.str.lit"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :pswitch_0
    add-int/lit8 v8, v9, 0x1

    .line 84
    .line 85
    const/16 v11, 0xb

    .line 86
    .line 87
    aput-char v11, v6, v9

    .line 88
    .line 89
    move v12, v1

    .line 90
    move v9, v8

    .line 91
    :goto_1
    move v8, v10

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :pswitch_1
    add-int/lit8 v10, v9, 0x1

    .line 95
    .line 96
    new-instance v11, Ljava/lang/String;

    .line 97
    .line 98
    add-int/lit8 v12, v8, 0x2

    .line 99
    .line 100
    aget-char v12, p0, v12

    .line 101
    .line 102
    add-int/lit8 v14, v8, 0x3

    .line 103
    .line 104
    aget-char v14, p0, v14

    .line 105
    .line 106
    add-int/lit8 v15, v8, 0x4

    .line 107
    .line 108
    aget-char v15, p0, v15

    .line 109
    .line 110
    add-int/2addr v8, v1

    .line 111
    aget-char v16, p0, v8

    .line 112
    .line 113
    new-array v1, v2, [C

    .line 114
    .line 115
    aput-char v12, v1, v7

    .line 116
    .line 117
    aput-char v14, v1, v5

    .line 118
    .line 119
    aput-char v15, v1, v4

    .line 120
    .line 121
    aput-char v16, v1, v3

    .line 122
    .line 123
    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([C)V

    .line 124
    .line 125
    .line 126
    invoke-static {v11, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    int-to-char v1, v1

    .line 131
    aput-char v1, v6, v9

    .line 132
    .line 133
    move v9, v10

    .line 134
    :goto_2
    const/4 v12, 0x5

    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :pswitch_2
    add-int/lit8 v1, v9, 0x1

    .line 138
    .line 139
    const/16 v8, 0x9

    .line 140
    .line 141
    aput-char v8, v6, v9

    .line 142
    .line 143
    :goto_3
    move v9, v1

    .line 144
    move v8, v10

    .line 145
    goto :goto_2

    .line 146
    :pswitch_3
    add-int/lit8 v1, v9, 0x1

    .line 147
    .line 148
    const/4 v8, 0x7

    .line 149
    aput-char v8, v6, v9

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :pswitch_4
    add-int/lit8 v1, v9, 0x1

    .line 153
    .line 154
    const/4 v8, 0x6

    .line 155
    aput-char v8, v6, v9

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :pswitch_5
    add-int/lit8 v1, v9, 0x1

    .line 159
    .line 160
    const/4 v12, 0x5

    .line 161
    aput-char v12, v6, v9

    .line 162
    .line 163
    :goto_4
    move v9, v1

    .line 164
    goto :goto_1

    .line 165
    :pswitch_6
    move v12, v1

    .line 166
    add-int/lit8 v1, v9, 0x1

    .line 167
    .line 168
    aput-char v2, v6, v9

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :pswitch_7
    move v12, v1

    .line 172
    add-int/lit8 v1, v9, 0x1

    .line 173
    .line 174
    aput-char v3, v6, v9

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :pswitch_8
    move v12, v1

    .line 178
    add-int/lit8 v1, v9, 0x1

    .line 179
    .line 180
    aput-char v4, v6, v9

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :pswitch_9
    move v12, v1

    .line 184
    add-int/lit8 v1, v9, 0x1

    .line 185
    .line 186
    aput-char v5, v6, v9

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :pswitch_a
    move v12, v1

    .line 190
    add-int/lit8 v1, v9, 0x1

    .line 191
    .line 192
    aput-char v7, v6, v9

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :pswitch_b
    move v12, v1

    .line 196
    add-int/lit8 v1, v9, 0x1

    .line 197
    .line 198
    const/16 v8, 0x2f

    .line 199
    .line 200
    aput-char v8, v6, v9

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_1
    move v12, v1

    .line 204
    add-int/lit8 v1, v9, 0x1

    .line 205
    .line 206
    sget-object v10, La5/c;->s:[I

    .line 207
    .line 208
    add-int/lit8 v11, v8, 0x2

    .line 209
    .line 210
    aget-char v11, p0, v11

    .line 211
    .line 212
    aget v11, v10, v11

    .line 213
    .line 214
    mul-int/2addr v11, v13

    .line 215
    add-int/2addr v8, v3

    .line 216
    aget-char v13, p0, v8

    .line 217
    .line 218
    aget v10, v10, v13

    .line 219
    .line 220
    add-int/2addr v11, v10

    .line 221
    int-to-char v10, v11

    .line 222
    aput-char v10, v6, v9

    .line 223
    .line 224
    move v9, v1

    .line 225
    goto :goto_6

    .line 226
    :cond_2
    move v12, v1

    .line 227
    add-int/lit8 v1, v9, 0x1

    .line 228
    .line 229
    const/16 v8, 0xd

    .line 230
    .line 231
    aput-char v8, v6, v9

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_3
    move v12, v1

    .line 235
    add-int/lit8 v1, v9, 0x1

    .line 236
    .line 237
    const/16 v8, 0xa

    .line 238
    .line 239
    aput-char v8, v6, v9

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_4
    move v12, v1

    .line 243
    goto :goto_5

    .line 244
    :cond_5
    move v12, v1

    .line 245
    add-int/lit8 v1, v9, 0x1

    .line 246
    .line 247
    const/16 v8, 0x8

    .line 248
    .line 249
    aput-char v8, v6, v9

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    move v12, v1

    .line 253
    add-int/lit8 v1, v9, 0x1

    .line 254
    .line 255
    aput-char v11, v6, v9

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :goto_5
    add-int/lit8 v1, v9, 0x1

    .line 259
    .line 260
    const/16 v8, 0xc

    .line 261
    .line 262
    aput-char v8, v6, v9

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_7
    move v12, v1

    .line 266
    add-int/lit8 v1, v9, 0x1

    .line 267
    .line 268
    aput-char v13, v6, v9

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_8
    move v12, v1

    .line 272
    add-int/lit8 v1, v9, 0x1

    .line 273
    .line 274
    aput-char v13, v6, v9

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :goto_6
    add-int/2addr v8, v5

    .line 278
    move v1, v12

    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_9
    new-instance v0, Ljava/lang/String;

    .line 282
    .line 283
    invoke-direct {v0, v6, v7, v9}, Ljava/lang/String;-><init>([CII)V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l1()V
    .locals 15

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v4, p0, La5/c;->e:I

    .line 6
    .line 7
    iput v4, p0, La5/c;->i:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-boolean v4, p0, La5/c;->j:Z

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, La5/c;->next()C

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/16 v6, 0x27

    .line 17
    .line 18
    if-ne v5, v6, :cond_0

    .line 19
    .line 20
    iput v1, p0, La5/c;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, La5/c;->next()C

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v7, "unclosed single-quote string"

    .line 27
    .line 28
    const/16 v8, 0x1a

    .line 29
    .line 30
    if-ne v5, v8, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, La5/c;->L0()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v8}, La5/c;->R0(C)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 43
    .line 44
    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    const/16 v8, 0x5c

    .line 49
    .line 50
    if-ne v5, v8, :cond_16

    .line 51
    .line 52
    iget-boolean v5, p0, La5/c;->j:Z

    .line 53
    .line 54
    if-nez v5, :cond_4

    .line 55
    .line 56
    iput-boolean v3, p0, La5/c;->j:Z

    .line 57
    .line 58
    iget v5, p0, La5/c;->h:I

    .line 59
    .line 60
    iget-object v9, p0, La5/c;->g:[C

    .line 61
    .line 62
    array-length v10, v9

    .line 63
    if-le v5, v10, :cond_3

    .line 64
    .line 65
    mul-int/2addr v5, v2

    .line 66
    new-array v5, v5, [C

    .line 67
    .line 68
    array-length v10, v9

    .line 69
    invoke-static {v9, v4, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iput-object v5, p0, La5/c;->g:[C

    .line 73
    .line 74
    :cond_3
    iget v5, p0, La5/c;->i:I

    .line 75
    .line 76
    add-int/2addr v5, v3

    .line 77
    iget v9, p0, La5/c;->h:I

    .line 78
    .line 79
    iget-object v10, p0, La5/c;->g:[C

    .line 80
    .line 81
    invoke-virtual {p0, v5, v9, v10}, La5/c;->H0(II[C)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0}, La5/c;->next()C

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/16 v9, 0x22

    .line 89
    .line 90
    if-eq v5, v9, :cond_15

    .line 91
    .line 92
    if-eq v5, v6, :cond_14

    .line 93
    .line 94
    const/16 v6, 0x46

    .line 95
    .line 96
    if-eq v5, v6, :cond_13

    .line 97
    .line 98
    if-eq v5, v8, :cond_12

    .line 99
    .line 100
    const/16 v8, 0x62

    .line 101
    .line 102
    if-eq v5, v8, :cond_11

    .line 103
    .line 104
    const/16 v8, 0x66

    .line 105
    .line 106
    if-eq v5, v8, :cond_13

    .line 107
    .line 108
    const/16 v9, 0x6e

    .line 109
    .line 110
    if-eq v5, v9, :cond_10

    .line 111
    .line 112
    const/16 v9, 0x72

    .line 113
    .line 114
    if-eq v5, v9, :cond_f

    .line 115
    .line 116
    const/16 v9, 0x78

    .line 117
    .line 118
    const/16 v10, 0x10

    .line 119
    .line 120
    if-eq v5, v9, :cond_5

    .line 121
    .line 122
    packed-switch v5, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    packed-switch v5, :pswitch_data_1

    .line 126
    .line 127
    .line 128
    iput-char v5, p0, La5/c;->d:C

    .line 129
    .line 130
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 131
    .line 132
    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :pswitch_0
    const/16 v5, 0xb

    .line 137
    .line 138
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_1
    new-instance v5, Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0}, La5/c;->next()C

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {p0}, La5/c;->next()C

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    invoke-virtual {p0}, La5/c;->next()C

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-virtual {p0}, La5/c;->next()C

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    new-array v11, v1, [C

    .line 162
    .line 163
    aput-char v6, v11, v4

    .line 164
    .line 165
    aput-char v7, v11, v3

    .line 166
    .line 167
    aput-char v8, v11, v2

    .line 168
    .line 169
    aput-char v9, v11, v0

    .line 170
    .line 171
    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([C)V

    .line 172
    .line 173
    .line 174
    invoke-static {v5, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    int-to-char v5, v5

    .line 179
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_2
    const/16 v5, 0x9

    .line 185
    .line 186
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_3
    const/4 v5, 0x7

    .line 192
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_4
    const/4 v5, 0x6

    .line 198
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_5
    const/4 v5, 0x5

    .line 204
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_6
    invoke-virtual {p0, v1}, La5/c;->R0(C)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :pswitch_7
    invoke-virtual {p0, v0}, La5/c;->R0(C)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_8
    invoke-virtual {p0, v2}, La5/c;->R0(C)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_9
    invoke-virtual {p0, v3}, La5/c;->R0(C)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_a
    invoke-virtual {p0, v4}, La5/c;->R0(C)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_b
    const/16 v5, 0x2f

    .line 235
    .line 236
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_5
    invoke-virtual {p0}, La5/c;->next()C

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    invoke-virtual {p0}, La5/c;->next()C

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const/16 v9, 0x41

    .line 250
    .line 251
    const/16 v11, 0x61

    .line 252
    .line 253
    const/16 v12, 0x39

    .line 254
    .line 255
    const/16 v13, 0x30

    .line 256
    .line 257
    if-lt v5, v13, :cond_6

    .line 258
    .line 259
    if-le v5, v12, :cond_8

    .line 260
    .line 261
    :cond_6
    if-lt v5, v11, :cond_7

    .line 262
    .line 263
    if-le v5, v8, :cond_8

    .line 264
    .line 265
    :cond_7
    if-lt v5, v9, :cond_9

    .line 266
    .line 267
    if-gt v5, v6, :cond_9

    .line 268
    .line 269
    :cond_8
    move v14, v3

    .line 270
    goto :goto_1

    .line 271
    :cond_9
    move v14, v4

    .line 272
    :goto_1
    if-lt v7, v13, :cond_a

    .line 273
    .line 274
    if-le v7, v12, :cond_c

    .line 275
    .line 276
    :cond_a
    if-lt v7, v11, :cond_b

    .line 277
    .line 278
    if-le v7, v8, :cond_c

    .line 279
    .line 280
    :cond_b
    if-lt v7, v9, :cond_d

    .line 281
    .line 282
    if-gt v7, v6, :cond_d

    .line 283
    .line 284
    :cond_c
    move v6, v3

    .line 285
    goto :goto_2

    .line 286
    :cond_d
    move v6, v4

    .line 287
    :goto_2
    if-eqz v14, :cond_e

    .line 288
    .line 289
    if-eqz v6, :cond_e

    .line 290
    .line 291
    sget-object v6, La5/c;->s:[I

    .line 292
    .line 293
    aget v5, v6, v5

    .line 294
    .line 295
    mul-int/2addr v5, v10

    .line 296
    aget v6, v6, v7

    .line 297
    .line 298
    add-int/2addr v5, v6

    .line 299
    int-to-char v5, v5

    .line 300
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 306
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v2, "invalid escape character \\x"

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_f
    const/16 v5, 0xd

    .line 332
    .line 333
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_10
    const/16 v5, 0xa

    .line 339
    .line 340
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_11
    const/16 v5, 0x8

    .line 346
    .line 347
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_12
    invoke-virtual {p0, v8}, La5/c;->R0(C)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_13
    const/16 v5, 0xc

    .line 358
    .line 359
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :cond_14
    invoke-virtual {p0, v6}, La5/c;->R0(C)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_15
    invoke-virtual {p0, v9}, La5/c;->R0(C)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :cond_16
    iget-boolean v6, p0, La5/c;->j:Z

    .line 375
    .line 376
    if-nez v6, :cond_17

    .line 377
    .line 378
    iget v5, p0, La5/c;->h:I

    .line 379
    .line 380
    add-int/2addr v5, v3

    .line 381
    iput v5, p0, La5/c;->h:I

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :cond_17
    iget v6, p0, La5/c;->h:I

    .line 386
    .line 387
    iget-object v7, p0, La5/c;->g:[C

    .line 388
    .line 389
    array-length v8, v7

    .line 390
    if-ne v6, v8, :cond_18

    .line 391
    .line 392
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_18
    add-int/lit8 v8, v6, 0x1

    .line 398
    .line 399
    iput v8, p0, La5/c;->h:I

    .line 400
    .line 401
    aput-char v5, v7, v6

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B0(Z)Ljava/lang/Number;
    .locals 2

    .line 1
    iget v0, p0, La5/c;->i:I

    .line 2
    .line 3
    iget v1, p0, La5/c;->h:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x46

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v1, 0x44

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, La5/c;->g0()Ljava/math/BigDecimal;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_2
    invoke-virtual {p0}, La5/c;->I0()D

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ", "

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, La5/c;->k()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0
.end method

.method public D0()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, La5/c;->m:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract E0()Ljava/lang/String;
.end method

.method public abstract G0(I)C
.end method

.method protected abstract H0(II[C)V
.end method

.method public I0()D
    .locals 2

    .line 1
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public J0()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, La5/c;->k:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract K0(CI)I
.end method

.method public abstract L0()Z
.end method

.method protected varargs N0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, La5/c;->a:I

    .line 3
    .line 4
    return-void
.end method

.method public final O0([C)Z
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, La5/c;->j([C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-char v0, p0, La5/c;->d:C

    .line 8
    .line 9
    invoke-static {v0}, La5/c;->M0(C)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, La5/c;->next()C

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    iget v0, p0, La5/c;->e:I

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    add-int/2addr v0, p1

    .line 25
    iput v0, p0, La5/c;->e:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-char p1, p0, La5/c;->d:C

    .line 32
    .line 33
    const/16 v0, 0x7b

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, La5/c;->next()C

    .line 39
    .line 40
    .line 41
    const/16 p1, 0xc

    .line 42
    .line 43
    iput p1, p0, La5/c;->a:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/16 v0, 0x5b

    .line 47
    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, La5/c;->next()C

    .line 51
    .line 52
    .line 53
    const/16 p1, 0xe

    .line 54
    .line 55
    iput p1, p0, La5/c;->a:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/16 v2, 0x53

    .line 59
    .line 60
    if-ne p1, v2, :cond_4

    .line 61
    .line 62
    iget p1, p0, La5/c;->e:I

    .line 63
    .line 64
    add-int/2addr p1, v1

    .line 65
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/16 v2, 0x65

    .line 70
    .line 71
    if-ne p1, v2, :cond_4

    .line 72
    .line 73
    iget p1, p0, La5/c;->e:I

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x2

    .line 76
    .line 77
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v2, 0x74

    .line 82
    .line 83
    if-ne p1, v2, :cond_4

    .line 84
    .line 85
    iget p1, p0, La5/c;->e:I

    .line 86
    .line 87
    add-int/lit8 p1, p1, 0x3

    .line 88
    .line 89
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-ne p1, v0, :cond_4

    .line 94
    .line 95
    iget p1, p0, La5/c;->e:I

    .line 96
    .line 97
    add-int/lit8 p1, p1, 0x3

    .line 98
    .line 99
    iput p1, p0, La5/c;->e:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput-char p1, p0, La5/c;->d:C

    .line 106
    .line 107
    const/16 p1, 0x15

    .line 108
    .line 109
    iput p1, p0, La5/c;->a:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p0}, La5/c;->d0()V

    .line 113
    .line 114
    .line 115
    :goto_1
    return v1
.end method

.method public final P0()V
    .locals 2

    .line 1
    :goto_0
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    invoke-static {v0}, La5/c;->M0(C)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, La5/c;->next()C

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-char v0, p0, La5/c;->d:C

    .line 14
    .line 15
    const/16 v1, 0x5f

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x24

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, La5/c;->d0()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    invoke-virtual {p0}, La5/c;->i1()V

    .line 35
    .line 36
    .line 37
    :goto_2
    return-void
.end method

.method public final Q0(C)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->h:I

    .line 3
    .line 4
    :goto_0
    iget-char v0, p0, La5/c;->d:C

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, La5/c;->next()C

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, La5/c;->d0()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/16 v1, 0x20

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xd

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "not match "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " - "

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-char p1, p0, La5/c;->d:C

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ", info : "

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, La5/c;->k()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p0}, La5/c;->next()C

    .line 86
    .line 87
    .line 88
    goto :goto_0
.end method

.method protected final R0(C)V
    .locals 4

    .line 1
    iget v0, p0, La5/c;->h:I

    .line 2
    .line 3
    iget-object v1, p0, La5/c;->g:[C

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-lt v0, v2, :cond_1

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    mul-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v0, 0x1

    .line 14
    .line 15
    :cond_0
    new-array v0, v2, [C

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, La5/c;->g:[C

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, La5/c;->g:[C

    .line 25
    .line 26
    iget v1, p0, La5/c;->h:I

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    iput v2, p0, La5/c;->h:I

    .line 31
    .line 32
    aput-char p1, v0, v1

    .line 33
    .line 34
    return-void
.end method

.method public S(Ljava/lang/Class;La5/i;C)Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, La5/c;->m1(La5/i;C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final T(La5/i;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, La5/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, La5/c;->b:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, La5/c;->e:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, La5/c;->e:I

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/f;->d:[Z

    .line 18
    .line 19
    iget-char v2, p0, La5/c;->d:C

    .line 20
    .line 21
    array-length v3, v0

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    aget-boolean v0, v0, v2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "illegal identifier : "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-char v1, p0, La5/c;->d:C

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, La5/c;->k()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/f;->e:[Z

    .line 62
    .line 63
    iget v3, p0, La5/c;->e:I

    .line 64
    .line 65
    iput v3, p0, La5/c;->i:I

    .line 66
    .line 67
    iput v1, p0, La5/c;->h:I

    .line 68
    .line 69
    :goto_1
    invoke-virtual {p0}, La5/c;->next()C

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    array-length v4, v0

    .line 74
    if-ge v3, v4, :cond_5

    .line 75
    .line 76
    aget-boolean v4, v0, v3

    .line 77
    .line 78
    if-nez v4, :cond_5

    .line 79
    .line 80
    iget v0, p0, La5/c;->e:I

    .line 81
    .line 82
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput-char v0, p0, La5/c;->d:C

    .line 87
    .line 88
    const/16 v0, 0x12

    .line 89
    .line 90
    iput v0, p0, La5/c;->a:I

    .line 91
    .line 92
    iget v0, p0, La5/c;->h:I

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    if-ne v0, v3, :cond_3

    .line 96
    .line 97
    const v0, 0x33c587

    .line 98
    .line 99
    .line 100
    if-ne v2, v0, :cond_3

    .line 101
    .line 102
    iget v0, p0, La5/c;->i:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/16 v3, 0x6e

    .line 109
    .line 110
    if-ne v0, v3, :cond_3

    .line 111
    .line 112
    iget v0, p0, La5/c;->i:I

    .line 113
    .line 114
    add-int/2addr v0, v1

    .line 115
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/16 v1, 0x75

    .line 120
    .line 121
    if-ne v0, v1, :cond_3

    .line 122
    .line 123
    iget v0, p0, La5/c;->i:I

    .line 124
    .line 125
    add-int/lit8 v0, v0, 0x2

    .line 126
    .line 127
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const/16 v1, 0x6c

    .line 132
    .line 133
    if-ne v0, v1, :cond_3

    .line 134
    .line 135
    iget v0, p0, La5/c;->i:I

    .line 136
    .line 137
    add-int/lit8 v0, v0, 0x3

    .line 138
    .line 139
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-ne v0, v1, :cond_3

    .line 144
    .line 145
    const/4 p1, 0x0

    .line 146
    return-object p1

    .line 147
    :cond_3
    if-nez p1, :cond_4

    .line 148
    .line 149
    iget p1, p0, La5/c;->i:I

    .line 150
    .line 151
    iget v0, p0, La5/c;->h:I

    .line 152
    .line 153
    invoke-virtual {p0, p1, v0}, La5/c;->r1(II)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    :cond_4
    iget v0, p0, La5/c;->i:I

    .line 159
    .line 160
    iget v1, p0, La5/c;->h:I

    .line 161
    .line 162
    invoke-virtual {p0, v0, v1, v2, p1}, La5/c;->b(IIILa5/i;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_5
    mul-int/lit8 v2, v2, 0x1f

    .line 168
    .line 169
    add-int/2addr v2, v3

    .line 170
    iget v3, p0, La5/c;->h:I

    .line 171
    .line 172
    add-int/2addr v3, v1

    .line 173
    iput v3, p0, La5/c;->h:I

    .line 174
    .line 175
    goto :goto_1
.end method

.method public T0([C)J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->n:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, La5/c;->j([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    iput p1, p0, La5/c;->n:I

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    array-length p1, p1

    .line 17
    iget v0, p0, La5/c;->e:I

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x1

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x22

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iput v4, p0, La5/c;->n:I

    .line 32
    .line 33
    return-wide v1

    .line 34
    :cond_1
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :goto_0
    iget p1, p0, La5/c;->e:I

    .line 40
    .line 41
    add-int/lit8 v7, v3, 0x1

    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v0, :cond_8

    .line 49
    .line 50
    iget p1, p0, La5/c;->e:I

    .line 51
    .line 52
    add-int/lit8 v0, v3, 0x2

    .line 53
    .line 54
    add-int/2addr p1, v7

    .line 55
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 v7, 0x2c

    .line 60
    .line 61
    if-ne p1, v7, :cond_2

    .line 62
    .line 63
    iget p1, p0, La5/c;->e:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, La5/c;->e:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-char p1, p0, La5/c;->d:C

    .line 73
    .line 74
    const/4 p1, 0x3

    .line 75
    iput p1, p0, La5/c;->n:I

    .line 76
    .line 77
    return-wide v5

    .line 78
    :cond_2
    const/16 v8, 0x7d

    .line 79
    .line 80
    if-ne p1, v8, :cond_7

    .line 81
    .line 82
    iget p1, p0, La5/c;->e:I

    .line 83
    .line 84
    add-int/lit8 v9, v3, 0x3

    .line 85
    .line 86
    add-int/2addr p1, v0

    .line 87
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, v7, :cond_3

    .line 92
    .line 93
    const/16 p1, 0x10

    .line 94
    .line 95
    iput p1, p0, La5/c;->a:I

    .line 96
    .line 97
    iget p1, p0, La5/c;->e:I

    .line 98
    .line 99
    add-int/2addr p1, v9

    .line 100
    iput p1, p0, La5/c;->e:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput-char p1, p0, La5/c;->d:C

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/16 v0, 0x5d

    .line 110
    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    const/16 p1, 0xf

    .line 114
    .line 115
    iput p1, p0, La5/c;->a:I

    .line 116
    .line 117
    iget p1, p0, La5/c;->e:I

    .line 118
    .line 119
    add-int/2addr p1, v9

    .line 120
    iput p1, p0, La5/c;->e:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput-char p1, p0, La5/c;->d:C

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    if-ne p1, v8, :cond_5

    .line 130
    .line 131
    const/16 p1, 0xd

    .line 132
    .line 133
    iput p1, p0, La5/c;->a:I

    .line 134
    .line 135
    iget p1, p0, La5/c;->e:I

    .line 136
    .line 137
    add-int/2addr p1, v9

    .line 138
    iput p1, p0, La5/c;->e:I

    .line 139
    .line 140
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput-char p1, p0, La5/c;->d:C

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const/16 v0, 0x1a

    .line 148
    .line 149
    if-ne p1, v0, :cond_6

    .line 150
    .line 151
    const/16 p1, 0x14

    .line 152
    .line 153
    iput p1, p0, La5/c;->a:I

    .line 154
    .line 155
    iget p1, p0, La5/c;->e:I

    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x2

    .line 158
    .line 159
    add-int/2addr p1, v3

    .line 160
    iput p1, p0, La5/c;->e:I

    .line 161
    .line 162
    iput-char v0, p0, La5/c;->d:C

    .line 163
    .line 164
    :goto_1
    const/4 p1, 0x4

    .line 165
    iput p1, p0, La5/c;->n:I

    .line 166
    .line 167
    return-wide v5

    .line 168
    :cond_6
    iput v4, p0, La5/c;->n:I

    .line 169
    .line 170
    return-wide v1

    .line 171
    :cond_7
    iput v4, p0, La5/c;->n:I

    .line 172
    .line 173
    return-wide v1

    .line 174
    :cond_8
    const/16 v3, 0x41

    .line 175
    .line 176
    if-lt p1, v3, :cond_9

    .line 177
    .line 178
    const/16 v3, 0x5a

    .line 179
    .line 180
    if-gt p1, v3, :cond_9

    .line 181
    .line 182
    add-int/lit8 v3, p1, 0x20

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    move v3, p1

    .line 186
    :goto_2
    int-to-long v8, v3

    .line 187
    xor-long/2addr v5, v8

    .line 188
    const-wide v8, 0x100000001b3L

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    mul-long/2addr v5, v8

    .line 194
    const/16 v3, 0x5c

    .line 195
    .line 196
    if-ne p1, v3, :cond_a

    .line 197
    .line 198
    iput v4, p0, La5/c;->n:I

    .line 199
    .line 200
    return-wide v1

    .line 201
    :cond_a
    move v3, v7

    .line 202
    goto/16 :goto_0
.end method

.method public final U0()V
    .locals 3

    .line 1
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    const-string v2, "error parse false"

    .line 6
    .line 7
    if-ne v0, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, La5/c;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, La5/c;->d:C

    .line 13
    .line 14
    const/16 v1, 0x61

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, La5/c;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, La5/c;->d:C

    .line 22
    .line 23
    const/16 v1, 0x6c

    .line 24
    .line 25
    if-ne v0, v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0}, La5/c;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, La5/c;->d:C

    .line 31
    .line 32
    const/16 v1, 0x73

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, La5/c;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, La5/c;->d:C

    .line 40
    .line 41
    const/16 v1, 0x65

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, La5/c;->next()C

    .line 46
    .line 47
    .line 48
    iget-char v0, p0, La5/c;->d:C

    .line 49
    .line 50
    const/16 v1, 0x20

    .line 51
    .line 52
    if-eq v0, v1, :cond_1

    .line 53
    .line 54
    const/16 v1, 0x2c

    .line 55
    .line 56
    if-eq v0, v1, :cond_1

    .line 57
    .line 58
    const/16 v1, 0x7d

    .line 59
    .line 60
    if-eq v0, v1, :cond_1

    .line 61
    .line 62
    const/16 v1, 0x5d

    .line 63
    .line 64
    if-eq v0, v1, :cond_1

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    .line 70
    const/16 v1, 0xd

    .line 71
    .line 72
    if-eq v0, v1, :cond_1

    .line 73
    .line 74
    const/16 v1, 0x9

    .line 75
    .line 76
    if-eq v0, v1, :cond_1

    .line 77
    .line 78
    const/16 v1, 0x1a

    .line 79
    .line 80
    if-eq v0, v1, :cond_1

    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    if-eq v0, v1, :cond_1

    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    if-eq v0, v1, :cond_1

    .line 89
    .line 90
    const/16 v1, 0x3a

    .line 91
    .line 92
    if-eq v0, v1, :cond_1

    .line 93
    .line 94
    const/16 v1, 0x2f

    .line 95
    .line 96
    if-ne v0, v1, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 100
    .line 101
    const-string v1, "scan false error"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_1
    :goto_0
    const/4 v0, 0x7

    .line 108
    iput v0, p0, La5/c;->a:I

    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 118
    .line 119
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 124
    .line 125
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 130
    .line 131
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 136
    .line 137
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method public V0([C)Ljava/math/BigInteger;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, La5/c;->n:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    iput v1, v0, La5/c;->n:I

    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v5, v0, La5/c;->e:I

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x22

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    if-ne v5, v7, :cond_1

    .line 33
    .line 34
    move v9, v8

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v9, v2

    .line 37
    :goto_0
    if-eqz v9, :cond_2

    .line 38
    .line 39
    iget v5, v0, La5/c;->e:I

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x2

    .line 42
    .line 43
    add-int/2addr v5, v6

    .line 44
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move v6, v3

    .line 49
    :cond_2
    const/16 v3, 0x2d

    .line 50
    .line 51
    if-ne v5, v3, :cond_3

    .line 52
    .line 53
    move v3, v8

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v3, v2

    .line 56
    :goto_1
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget v5, v0, La5/c;->e:I

    .line 59
    .line 60
    add-int/lit8 v10, v6, 0x1

    .line 61
    .line 62
    add-int/2addr v5, v6

    .line 63
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    move v6, v10

    .line 68
    :cond_4
    const/16 v14, 0x30

    .line 69
    .line 70
    const/4 v15, -0x1

    .line 71
    if-lt v5, v14, :cond_13

    .line 72
    .line 73
    const/16 v2, 0x39

    .line 74
    .line 75
    if-gt v5, v2, :cond_13

    .line 76
    .line 77
    sub-int/2addr v5, v14

    .line 78
    int-to-long v10, v5

    .line 79
    :goto_2
    iget v5, v0, La5/c;->e:I

    .line 80
    .line 81
    add-int/lit8 v16, v6, 0x1

    .line 82
    .line 83
    add-int/2addr v5, v6

    .line 84
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-lt v5, v14, :cond_6

    .line 89
    .line 90
    if-gt v5, v2, :cond_6

    .line 91
    .line 92
    const-wide/16 v17, 0xa

    .line 93
    .line 94
    mul-long v17, v17, v10

    .line 95
    .line 96
    add-int/lit8 v2, v5, -0x30

    .line 97
    .line 98
    int-to-long v12, v2

    .line 99
    add-long v12, v17, v12

    .line 100
    .line 101
    cmp-long v2, v12, v10

    .line 102
    .line 103
    if-gez v2, :cond_5

    .line 104
    .line 105
    move v2, v8

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    move-wide v10, v12

    .line 108
    move/from16 v6, v16

    .line 109
    .line 110
    const/16 v2, 0x39

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    const/4 v2, 0x0

    .line 114
    :goto_3
    if-eqz v9, :cond_8

    .line 115
    .line 116
    if-eq v5, v7, :cond_7

    .line 117
    .line 118
    iput v15, v0, La5/c;->n:I

    .line 119
    .line 120
    return-object v4

    .line 121
    :cond_7
    iget v5, v0, La5/c;->e:I

    .line 122
    .line 123
    add-int/lit8 v6, v6, 0x2

    .line 124
    .line 125
    add-int v5, v5, v16

    .line 126
    .line 127
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iget v7, v0, La5/c;->e:I

    .line 132
    .line 133
    array-length v1, v1

    .line 134
    add-int/2addr v1, v7

    .line 135
    add-int/2addr v1, v8

    .line 136
    add-int/2addr v7, v6

    .line 137
    sub-int/2addr v7, v1

    .line 138
    add-int/lit8 v7, v7, -0x2

    .line 139
    .line 140
    move/from16 v16, v6

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_8
    iget v6, v0, La5/c;->e:I

    .line 144
    .line 145
    array-length v1, v1

    .line 146
    add-int/2addr v1, v6

    .line 147
    add-int v6, v6, v16

    .line 148
    .line 149
    sub-int/2addr v6, v1

    .line 150
    add-int/lit8 v7, v6, -0x1

    .line 151
    .line 152
    :goto_4
    const/16 v6, 0x14

    .line 153
    .line 154
    if-nez v2, :cond_b

    .line 155
    .line 156
    if-lt v7, v6, :cond_9

    .line 157
    .line 158
    if-eqz v3, :cond_b

    .line 159
    .line 160
    const/16 v2, 0x15

    .line 161
    .line 162
    if-ge v7, v2, :cond_b

    .line 163
    .line 164
    :cond_9
    if-eqz v3, :cond_a

    .line 165
    .line 166
    neg-long v10, v10

    .line 167
    :cond_a
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :goto_5
    const/16 v2, 0x2c

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_b
    const v2, 0xffff

    .line 175
    .line 176
    .line 177
    if-gt v7, v2, :cond_12

    .line 178
    .line 179
    invoke-virtual {v0, v1, v7}, La5/c;->r1(II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    new-instance v2, Ljava/math/BigInteger;

    .line 184
    .line 185
    const/16 v3, 0xa

    .line 186
    .line 187
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    move-object v1, v2

    .line 191
    goto :goto_5

    .line 192
    :goto_6
    if-ne v5, v2, :cond_c

    .line 193
    .line 194
    iget v2, v0, La5/c;->e:I

    .line 195
    .line 196
    add-int v2, v2, v16

    .line 197
    .line 198
    iput v2, v0, La5/c;->e:I

    .line 199
    .line 200
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    iput-char v2, v0, La5/c;->d:C

    .line 205
    .line 206
    const/4 v2, 0x3

    .line 207
    iput v2, v0, La5/c;->n:I

    .line 208
    .line 209
    const/16 v2, 0x10

    .line 210
    .line 211
    iput v2, v0, La5/c;->a:I

    .line 212
    .line 213
    return-object v1

    .line 214
    :cond_c
    const/16 v2, 0x10

    .line 215
    .line 216
    const/16 v3, 0x7d

    .line 217
    .line 218
    if-ne v5, v3, :cond_11

    .line 219
    .line 220
    iget v3, v0, La5/c;->e:I

    .line 221
    .line 222
    add-int/lit8 v5, v16, 0x1

    .line 223
    .line 224
    add-int v3, v3, v16

    .line 225
    .line 226
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    const/16 v7, 0x2c

    .line 231
    .line 232
    if-ne v3, v7, :cond_d

    .line 233
    .line 234
    iput v2, v0, La5/c;->a:I

    .line 235
    .line 236
    iget v2, v0, La5/c;->e:I

    .line 237
    .line 238
    add-int/2addr v2, v5

    .line 239
    iput v2, v0, La5/c;->e:I

    .line 240
    .line 241
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    iput-char v2, v0, La5/c;->d:C

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_d
    const/16 v2, 0x5d

    .line 249
    .line 250
    if-ne v3, v2, :cond_e

    .line 251
    .line 252
    const/16 v2, 0xf

    .line 253
    .line 254
    iput v2, v0, La5/c;->a:I

    .line 255
    .line 256
    iget v2, v0, La5/c;->e:I

    .line 257
    .line 258
    add-int/2addr v2, v5

    .line 259
    iput v2, v0, La5/c;->e:I

    .line 260
    .line 261
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    iput-char v2, v0, La5/c;->d:C

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_e
    const/16 v2, 0x7d

    .line 269
    .line 270
    if-ne v3, v2, :cond_f

    .line 271
    .line 272
    const/16 v2, 0xd

    .line 273
    .line 274
    iput v2, v0, La5/c;->a:I

    .line 275
    .line 276
    iget v2, v0, La5/c;->e:I

    .line 277
    .line 278
    add-int/2addr v2, v5

    .line 279
    iput v2, v0, La5/c;->e:I

    .line 280
    .line 281
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    iput-char v2, v0, La5/c;->d:C

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_f
    const/16 v2, 0x1a

    .line 289
    .line 290
    if-ne v3, v2, :cond_10

    .line 291
    .line 292
    iput v6, v0, La5/c;->a:I

    .line 293
    .line 294
    iget v3, v0, La5/c;->e:I

    .line 295
    .line 296
    add-int v3, v3, v16

    .line 297
    .line 298
    iput v3, v0, La5/c;->e:I

    .line 299
    .line 300
    iput-char v2, v0, La5/c;->d:C

    .line 301
    .line 302
    :goto_7
    const/4 v2, 0x4

    .line 303
    iput v2, v0, La5/c;->n:I

    .line 304
    .line 305
    return-object v1

    .line 306
    :cond_10
    iput v15, v0, La5/c;->n:I

    .line 307
    .line 308
    return-object v4

    .line 309
    :cond_11
    iput v15, v0, La5/c;->n:I

    .line 310
    .line 311
    return-object v4

    .line 312
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 313
    .line 314
    const-string v2, "scanInteger overflow"

    .line 315
    .line 316
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v1

    .line 320
    :cond_13
    const/16 v1, 0x6e

    .line 321
    .line 322
    if-ne v5, v1, :cond_18

    .line 323
    .line 324
    iget v1, v0, La5/c;->e:I

    .line 325
    .line 326
    add-int/2addr v1, v6

    .line 327
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    const/16 v2, 0x75

    .line 332
    .line 333
    if-ne v1, v2, :cond_18

    .line 334
    .line 335
    iget v1, v0, La5/c;->e:I

    .line 336
    .line 337
    add-int/2addr v1, v6

    .line 338
    add-int/2addr v1, v8

    .line 339
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    const/16 v2, 0x6c

    .line 344
    .line 345
    if-ne v1, v2, :cond_18

    .line 346
    .line 347
    iget v1, v0, La5/c;->e:I

    .line 348
    .line 349
    add-int/2addr v1, v6

    .line 350
    add-int/lit8 v1, v1, 0x2

    .line 351
    .line 352
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-ne v1, v2, :cond_18

    .line 357
    .line 358
    const/4 v1, 0x5

    .line 359
    iput v1, v0, La5/c;->n:I

    .line 360
    .line 361
    add-int/lit8 v2, v6, 0x3

    .line 362
    .line 363
    iget v3, v0, La5/c;->e:I

    .line 364
    .line 365
    add-int/lit8 v5, v6, 0x4

    .line 366
    .line 367
    add-int/2addr v3, v2

    .line 368
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v9, :cond_14

    .line 373
    .line 374
    if-ne v2, v7, :cond_14

    .line 375
    .line 376
    iget v2, v0, La5/c;->e:I

    .line 377
    .line 378
    add-int/2addr v6, v1

    .line 379
    add-int/2addr v2, v5

    .line 380
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    move v5, v6

    .line 385
    :cond_14
    const/16 v3, 0x2c

    .line 386
    .line 387
    :goto_8
    if-ne v2, v3, :cond_15

    .line 388
    .line 389
    iget v2, v0, La5/c;->e:I

    .line 390
    .line 391
    add-int/2addr v2, v5

    .line 392
    iput v2, v0, La5/c;->e:I

    .line 393
    .line 394
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    iput-char v2, v0, La5/c;->d:C

    .line 399
    .line 400
    iput v1, v0, La5/c;->n:I

    .line 401
    .line 402
    const/16 v6, 0x10

    .line 403
    .line 404
    iput v6, v0, La5/c;->a:I

    .line 405
    .line 406
    return-object v4

    .line 407
    :cond_15
    const/16 v6, 0x10

    .line 408
    .line 409
    const/16 v7, 0x7d

    .line 410
    .line 411
    if-ne v2, v7, :cond_16

    .line 412
    .line 413
    iget v2, v0, La5/c;->e:I

    .line 414
    .line 415
    add-int/2addr v2, v5

    .line 416
    iput v2, v0, La5/c;->e:I

    .line 417
    .line 418
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    iput-char v2, v0, La5/c;->d:C

    .line 423
    .line 424
    iput v1, v0, La5/c;->n:I

    .line 425
    .line 426
    const/16 v8, 0xd

    .line 427
    .line 428
    iput v8, v0, La5/c;->a:I

    .line 429
    .line 430
    return-object v4

    .line 431
    :cond_16
    const/16 v8, 0xd

    .line 432
    .line 433
    invoke-static {v2}, La5/c;->M0(C)Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_17

    .line 438
    .line 439
    iget v2, v0, La5/c;->e:I

    .line 440
    .line 441
    add-int/lit8 v9, v5, 0x1

    .line 442
    .line 443
    add-int/2addr v2, v5

    .line 444
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    move v5, v9

    .line 449
    goto :goto_8

    .line 450
    :cond_17
    iput v15, v0, La5/c;->n:I

    .line 451
    .line 452
    return-object v4

    .line 453
    :cond_18
    iput v15, v0, La5/c;->n:I

    .line 454
    .line 455
    return-object v4
.end method

.method public W()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/16 v3, 0x1a

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    iput v0, p0, La5/c;->a:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {v2}, La5/c;->M0(C)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0
.end method

.method public abstract W0([C)Z
.end method

.method public X(C)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->n:I

    .line 3
    .line 4
    iget v1, p0, La5/c;->e:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x74

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    const/16 v4, 0x65

    .line 14
    .line 15
    const/4 v5, -0x1

    .line 16
    const/4 v6, 0x3

    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x1

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, La5/c;->e:I

    .line 22
    .line 23
    add-int/2addr v1, v8

    .line 24
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x72

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget v1, p0, La5/c;->e:I

    .line 33
    .line 34
    add-int/2addr v1, v7

    .line 35
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x75

    .line 40
    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    iget v1, p0, La5/c;->e:I

    .line 44
    .line 45
    add-int/2addr v1, v6

    .line 46
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne v1, v4, :cond_0

    .line 51
    .line 52
    iget v0, p0, La5/c;->e:I

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_0
    move v0, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iput v5, p0, La5/c;->n:I

    .line 63
    .line 64
    return v0

    .line 65
    :cond_1
    const/16 v2, 0x66

    .line 66
    .line 67
    if-ne v1, v2, :cond_3

    .line 68
    .line 69
    iget v1, p0, La5/c;->e:I

    .line 70
    .line 71
    add-int/2addr v1, v8

    .line 72
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/16 v2, 0x61

    .line 77
    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    iget v1, p0, La5/c;->e:I

    .line 81
    .line 82
    add-int/2addr v1, v7

    .line 83
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/16 v2, 0x6c

    .line 88
    .line 89
    if-ne v1, v2, :cond_2

    .line 90
    .line 91
    iget v1, p0, La5/c;->e:I

    .line 92
    .line 93
    add-int/2addr v1, v6

    .line 94
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/16 v2, 0x73

    .line 99
    .line 100
    if-ne v1, v2, :cond_2

    .line 101
    .line 102
    iget v1, p0, La5/c;->e:I

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x4

    .line 105
    .line 106
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ne v1, v4, :cond_2

    .line 111
    .line 112
    iget v1, p0, La5/c;->e:I

    .line 113
    .line 114
    add-int/2addr v1, v3

    .line 115
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v3, 0x6

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iput v5, p0, La5/c;->n:I

    .line 122
    .line 123
    return v0

    .line 124
    :cond_3
    const/16 v2, 0x31

    .line 125
    .line 126
    if-ne v1, v2, :cond_4

    .line 127
    .line 128
    iget v0, p0, La5/c;->e:I

    .line 129
    .line 130
    add-int/2addr v0, v8

    .line 131
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    move v3, v7

    .line 136
    goto :goto_0

    .line 137
    :cond_4
    const/16 v2, 0x30

    .line 138
    .line 139
    if-ne v1, v2, :cond_5

    .line 140
    .line 141
    iget v1, p0, La5/c;->e:I

    .line 142
    .line 143
    add-int/2addr v1, v8

    .line 144
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    move v3, v7

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    move v3, v8

    .line 151
    :goto_1
    if-ne v1, p1, :cond_6

    .line 152
    .line 153
    iget p1, p0, La5/c;->e:I

    .line 154
    .line 155
    add-int/2addr p1, v3

    .line 156
    iput p1, p0, La5/c;->e:I

    .line 157
    .line 158
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput-char p1, p0, La5/c;->d:C

    .line 163
    .line 164
    iput v6, p0, La5/c;->n:I

    .line 165
    .line 166
    return v0

    .line 167
    :cond_6
    invoke-static {v1}, La5/c;->M0(C)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    iget v1, p0, La5/c;->e:I

    .line 174
    .line 175
    add-int/lit8 v2, v3, 0x1

    .line 176
    .line 177
    add-int/2addr v1, v3

    .line 178
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    move v3, v2

    .line 183
    goto :goto_1

    .line 184
    :cond_7
    iput v5, p0, La5/c;->n:I

    .line 185
    .line 186
    return v0
.end method

.method public abstract X0([C)Ljava/util/Date;
.end method

.method public Y0([C)Ljava/math/BigDecimal;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, La5/c;->n:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    iput v1, v0, La5/c;->n:I

    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v5, v0, La5/c;->e:I

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x22

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    if-ne v5, v7, :cond_1

    .line 33
    .line 34
    move v9, v8

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v9, v2

    .line 37
    :goto_0
    if-eqz v9, :cond_2

    .line 38
    .line 39
    iget v5, v0, La5/c;->e:I

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x2

    .line 42
    .line 43
    add-int/2addr v5, v6

    .line 44
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move v6, v3

    .line 49
    :cond_2
    const/16 v3, 0x2d

    .line 50
    .line 51
    if-ne v5, v3, :cond_3

    .line 52
    .line 53
    iget v5, v0, La5/c;->e:I

    .line 54
    .line 55
    add-int/lit8 v10, v6, 0x1

    .line 56
    .line 57
    add-int/2addr v5, v6

    .line 58
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    move v6, v10

    .line 63
    :cond_3
    const/16 v12, 0x10

    .line 64
    .line 65
    const/16 v13, 0x2c

    .line 66
    .line 67
    const/16 v14, 0x30

    .line 68
    .line 69
    const/4 v15, -0x1

    .line 70
    if-lt v5, v14, :cond_14

    .line 71
    .line 72
    const/16 v10, 0x39

    .line 73
    .line 74
    if-gt v5, v10, :cond_14

    .line 75
    .line 76
    :goto_1
    iget v5, v0, La5/c;->e:I

    .line 77
    .line 78
    add-int/lit8 v16, v6, 0x1

    .line 79
    .line 80
    add-int/2addr v5, v6

    .line 81
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-lt v5, v14, :cond_4

    .line 86
    .line 87
    if-gt v5, v10, :cond_4

    .line 88
    .line 89
    move/from16 v6, v16

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/16 v11, 0x2e

    .line 93
    .line 94
    if-ne v5, v11, :cond_6

    .line 95
    .line 96
    iget v5, v0, La5/c;->e:I

    .line 97
    .line 98
    add-int/lit8 v6, v6, 0x2

    .line 99
    .line 100
    add-int v5, v5, v16

    .line 101
    .line 102
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-lt v5, v14, :cond_5

    .line 107
    .line 108
    if-gt v5, v10, :cond_5

    .line 109
    .line 110
    :goto_2
    iget v5, v0, La5/c;->e:I

    .line 111
    .line 112
    add-int/lit8 v16, v6, 0x1

    .line 113
    .line 114
    add-int/2addr v5, v6

    .line 115
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-lt v5, v14, :cond_6

    .line 120
    .line 121
    if-gt v5, v10, :cond_6

    .line 122
    .line 123
    move/from16 v6, v16

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iput v15, v0, La5/c;->n:I

    .line 127
    .line 128
    return-object v4

    .line 129
    :cond_6
    const/16 v6, 0x65

    .line 130
    .line 131
    if-eq v5, v6, :cond_7

    .line 132
    .line 133
    const/16 v6, 0x45

    .line 134
    .line 135
    if-ne v5, v6, :cond_a

    .line 136
    .line 137
    :cond_7
    iget v5, v0, La5/c;->e:I

    .line 138
    .line 139
    add-int/lit8 v6, v16, 0x1

    .line 140
    .line 141
    add-int v5, v5, v16

    .line 142
    .line 143
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const/16 v11, 0x2b

    .line 148
    .line 149
    if-eq v5, v11, :cond_9

    .line 150
    .line 151
    if-ne v5, v3, :cond_8

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    move/from16 v16, v6

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_9
    :goto_3
    iget v3, v0, La5/c;->e:I

    .line 158
    .line 159
    add-int/lit8 v16, v16, 0x2

    .line 160
    .line 161
    add-int/2addr v3, v6

    .line 162
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    :goto_4
    move v5, v3

    .line 167
    :goto_5
    if-lt v5, v14, :cond_a

    .line 168
    .line 169
    if-gt v5, v10, :cond_a

    .line 170
    .line 171
    iget v3, v0, La5/c;->e:I

    .line 172
    .line 173
    add-int/lit8 v5, v16, 0x1

    .line 174
    .line 175
    add-int v3, v3, v16

    .line 176
    .line 177
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    move/from16 v16, v5

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_a
    if-eqz v9, :cond_c

    .line 185
    .line 186
    if-eq v5, v7, :cond_b

    .line 187
    .line 188
    iput v15, v0, La5/c;->n:I

    .line 189
    .line 190
    return-object v4

    .line 191
    :cond_b
    iget v3, v0, La5/c;->e:I

    .line 192
    .line 193
    add-int/lit8 v5, v16, 0x1

    .line 194
    .line 195
    add-int v3, v3, v16

    .line 196
    .line 197
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iget v6, v0, La5/c;->e:I

    .line 202
    .line 203
    array-length v1, v1

    .line 204
    add-int/2addr v1, v6

    .line 205
    add-int/2addr v1, v8

    .line 206
    add-int/2addr v6, v5

    .line 207
    sub-int/2addr v6, v1

    .line 208
    add-int/lit8 v6, v6, -0x2

    .line 209
    .line 210
    move/from16 v16, v5

    .line 211
    .line 212
    move v5, v3

    .line 213
    goto :goto_6

    .line 214
    :cond_c
    iget v3, v0, La5/c;->e:I

    .line 215
    .line 216
    array-length v1, v1

    .line 217
    add-int/2addr v1, v3

    .line 218
    add-int v3, v3, v16

    .line 219
    .line 220
    sub-int/2addr v3, v1

    .line 221
    add-int/lit8 v6, v3, -0x1

    .line 222
    .line 223
    :goto_6
    const v3, 0xffff

    .line 224
    .line 225
    .line 226
    if-gt v6, v3, :cond_13

    .line 227
    .line 228
    invoke-virtual {v0, v1, v6}, La5/c;->s1(II)[C

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    new-instance v3, Ljava/math/BigDecimal;

    .line 233
    .line 234
    array-length v6, v1

    .line 235
    sget-object v7, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 236
    .line 237
    invoke-direct {v3, v1, v2, v6, v7}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 238
    .line 239
    .line 240
    if-ne v5, v13, :cond_d

    .line 241
    .line 242
    iget v1, v0, La5/c;->e:I

    .line 243
    .line 244
    add-int v1, v1, v16

    .line 245
    .line 246
    iput v1, v0, La5/c;->e:I

    .line 247
    .line 248
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iput-char v1, v0, La5/c;->d:C

    .line 253
    .line 254
    const/4 v1, 0x3

    .line 255
    iput v1, v0, La5/c;->n:I

    .line 256
    .line 257
    iput v12, v0, La5/c;->a:I

    .line 258
    .line 259
    return-object v3

    .line 260
    :cond_d
    const/16 v1, 0x7d

    .line 261
    .line 262
    if-ne v5, v1, :cond_12

    .line 263
    .line 264
    iget v1, v0, La5/c;->e:I

    .line 265
    .line 266
    add-int/lit8 v2, v16, 0x1

    .line 267
    .line 268
    add-int v1, v1, v16

    .line 269
    .line 270
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-ne v1, v13, :cond_e

    .line 275
    .line 276
    iput v12, v0, La5/c;->a:I

    .line 277
    .line 278
    iget v1, v0, La5/c;->e:I

    .line 279
    .line 280
    add-int/2addr v1, v2

    .line 281
    iput v1, v0, La5/c;->e:I

    .line 282
    .line 283
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    iput-char v1, v0, La5/c;->d:C

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_e
    const/16 v5, 0x5d

    .line 291
    .line 292
    if-ne v1, v5, :cond_f

    .line 293
    .line 294
    const/16 v1, 0xf

    .line 295
    .line 296
    iput v1, v0, La5/c;->a:I

    .line 297
    .line 298
    iget v1, v0, La5/c;->e:I

    .line 299
    .line 300
    add-int/2addr v1, v2

    .line 301
    iput v1, v0, La5/c;->e:I

    .line 302
    .line 303
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    iput-char v1, v0, La5/c;->d:C

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_f
    const/16 v5, 0x7d

    .line 311
    .line 312
    if-ne v1, v5, :cond_10

    .line 313
    .line 314
    const/16 v5, 0xd

    .line 315
    .line 316
    iput v5, v0, La5/c;->a:I

    .line 317
    .line 318
    iget v1, v0, La5/c;->e:I

    .line 319
    .line 320
    add-int/2addr v1, v2

    .line 321
    iput v1, v0, La5/c;->e:I

    .line 322
    .line 323
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    iput-char v1, v0, La5/c;->d:C

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_10
    const/16 v2, 0x1a

    .line 331
    .line 332
    if-ne v1, v2, :cond_11

    .line 333
    .line 334
    const/16 v1, 0x14

    .line 335
    .line 336
    iput v1, v0, La5/c;->a:I

    .line 337
    .line 338
    iget v1, v0, La5/c;->e:I

    .line 339
    .line 340
    add-int v1, v1, v16

    .line 341
    .line 342
    iput v1, v0, La5/c;->e:I

    .line 343
    .line 344
    iput-char v2, v0, La5/c;->d:C

    .line 345
    .line 346
    :goto_7
    const/4 v1, 0x4

    .line 347
    iput v1, v0, La5/c;->n:I

    .line 348
    .line 349
    return-object v3

    .line 350
    :cond_11
    iput v15, v0, La5/c;->n:I

    .line 351
    .line 352
    return-object v4

    .line 353
    :cond_12
    iput v15, v0, La5/c;->n:I

    .line 354
    .line 355
    return-object v4

    .line 356
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 357
    .line 358
    const-string v2, "scan decimal overflow"

    .line 359
    .line 360
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v1

    .line 364
    :cond_14
    const/16 v1, 0x6e

    .line 365
    .line 366
    if-ne v5, v1, :cond_19

    .line 367
    .line 368
    iget v1, v0, La5/c;->e:I

    .line 369
    .line 370
    add-int/2addr v1, v6

    .line 371
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    const/16 v2, 0x75

    .line 376
    .line 377
    if-ne v1, v2, :cond_19

    .line 378
    .line 379
    iget v1, v0, La5/c;->e:I

    .line 380
    .line 381
    add-int/2addr v1, v6

    .line 382
    add-int/2addr v1, v8

    .line 383
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    const/16 v2, 0x6c

    .line 388
    .line 389
    if-ne v1, v2, :cond_19

    .line 390
    .line 391
    iget v1, v0, La5/c;->e:I

    .line 392
    .line 393
    add-int/2addr v1, v6

    .line 394
    add-int/lit8 v1, v1, 0x2

    .line 395
    .line 396
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-ne v1, v2, :cond_19

    .line 401
    .line 402
    const/4 v1, 0x5

    .line 403
    iput v1, v0, La5/c;->n:I

    .line 404
    .line 405
    add-int/lit8 v2, v6, 0x3

    .line 406
    .line 407
    iget v3, v0, La5/c;->e:I

    .line 408
    .line 409
    add-int/lit8 v5, v6, 0x4

    .line 410
    .line 411
    add-int/2addr v3, v2

    .line 412
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v9, :cond_15

    .line 417
    .line 418
    if-ne v2, v7, :cond_15

    .line 419
    .line 420
    iget v2, v0, La5/c;->e:I

    .line 421
    .line 422
    add-int/2addr v6, v1

    .line 423
    add-int/2addr v2, v5

    .line 424
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    move v5, v6

    .line 429
    :cond_15
    :goto_8
    if-ne v2, v13, :cond_16

    .line 430
    .line 431
    iget v2, v0, La5/c;->e:I

    .line 432
    .line 433
    add-int/2addr v2, v5

    .line 434
    iput v2, v0, La5/c;->e:I

    .line 435
    .line 436
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    iput-char v2, v0, La5/c;->d:C

    .line 441
    .line 442
    iput v1, v0, La5/c;->n:I

    .line 443
    .line 444
    iput v12, v0, La5/c;->a:I

    .line 445
    .line 446
    return-object v4

    .line 447
    :cond_16
    const/16 v3, 0x7d

    .line 448
    .line 449
    if-ne v2, v3, :cond_17

    .line 450
    .line 451
    iget v2, v0, La5/c;->e:I

    .line 452
    .line 453
    add-int/2addr v2, v5

    .line 454
    iput v2, v0, La5/c;->e:I

    .line 455
    .line 456
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    iput-char v2, v0, La5/c;->d:C

    .line 461
    .line 462
    iput v1, v0, La5/c;->n:I

    .line 463
    .line 464
    const/16 v6, 0xd

    .line 465
    .line 466
    iput v6, v0, La5/c;->a:I

    .line 467
    .line 468
    return-object v4

    .line 469
    :cond_17
    const/16 v6, 0xd

    .line 470
    .line 471
    invoke-static {v2}, La5/c;->M0(C)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-eqz v2, :cond_18

    .line 476
    .line 477
    iget v2, v0, La5/c;->e:I

    .line 478
    .line 479
    add-int/lit8 v7, v5, 0x1

    .line 480
    .line 481
    add-int/2addr v2, v5

    .line 482
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    move v5, v7

    .line 487
    goto :goto_8

    .line 488
    :cond_18
    iput v15, v0, La5/c;->n:I

    .line 489
    .line 490
    return-object v4

    .line 491
    :cond_19
    iput v15, v0, La5/c;->n:I

    .line 492
    .line 493
    return-object v4
.end method

.method public final Z0([C)D
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, La5/c;->n:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const/4 v1, -0x2

    .line 17
    iput v1, v0, La5/c;->n:I

    .line 18
    .line 19
    return-wide v4

    .line 20
    :cond_0
    array-length v3, v1

    .line 21
    iget v6, v0, La5/c;->e:I

    .line 22
    .line 23
    add-int/lit8 v7, v3, 0x1

    .line 24
    .line 25
    add-int/2addr v6, v3

    .line 26
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v8, 0x22

    .line 31
    .line 32
    if-ne v6, v8, :cond_1

    .line 33
    .line 34
    const/4 v10, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v10, v2

    .line 37
    :goto_0
    if-eqz v10, :cond_2

    .line 38
    .line 39
    iget v6, v0, La5/c;->e:I

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x2

    .line 42
    .line 43
    add-int/2addr v6, v7

    .line 44
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    move v7, v3

    .line 49
    :cond_2
    const/16 v3, 0x2d

    .line 50
    .line 51
    if-ne v6, v3, :cond_3

    .line 52
    .line 53
    const/4 v11, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v11, v2

    .line 56
    :goto_1
    if-eqz v11, :cond_4

    .line 57
    .line 58
    iget v6, v0, La5/c;->e:I

    .line 59
    .line 60
    add-int/lit8 v12, v7, 0x1

    .line 61
    .line 62
    add-int/2addr v6, v7

    .line 63
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    move v7, v12

    .line 68
    :cond_4
    const/4 v2, -0x1

    .line 69
    const/16 v12, 0x30

    .line 70
    .line 71
    if-lt v6, v12, :cond_18

    .line 72
    .line 73
    const/16 v13, 0x39

    .line 74
    .line 75
    if-gt v6, v13, :cond_18

    .line 76
    .line 77
    sub-int/2addr v6, v12

    .line 78
    int-to-long v14, v6

    .line 79
    :goto_2
    iget v6, v0, La5/c;->e:I

    .line 80
    .line 81
    add-int/lit8 v17, v7, 0x1

    .line 82
    .line 83
    add-int/2addr v6, v7

    .line 84
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const-wide/16 v18, 0xa

    .line 89
    .line 90
    if-lt v6, v12, :cond_5

    .line 91
    .line 92
    if-gt v6, v13, :cond_5

    .line 93
    .line 94
    mul-long v14, v14, v18

    .line 95
    .line 96
    add-int/lit8 v6, v6, -0x30

    .line 97
    .line 98
    int-to-long v6, v6

    .line 99
    add-long/2addr v14, v6

    .line 100
    move/from16 v7, v17

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const/16 v9, 0x2e

    .line 104
    .line 105
    if-ne v6, v9, :cond_7

    .line 106
    .line 107
    iget v6, v0, La5/c;->e:I

    .line 108
    .line 109
    add-int/lit8 v7, v7, 0x2

    .line 110
    .line 111
    add-int v6, v6, v17

    .line 112
    .line 113
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-lt v6, v12, :cond_6

    .line 118
    .line 119
    if-gt v6, v13, :cond_6

    .line 120
    .line 121
    mul-long v14, v14, v18

    .line 122
    .line 123
    sub-int/2addr v6, v12

    .line 124
    int-to-long v8, v6

    .line 125
    add-long/2addr v14, v8

    .line 126
    move-wide/from16 v8, v18

    .line 127
    .line 128
    :goto_3
    iget v6, v0, La5/c;->e:I

    .line 129
    .line 130
    add-int/lit8 v17, v7, 0x1

    .line 131
    .line 132
    add-int/2addr v6, v7

    .line 133
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-lt v6, v12, :cond_8

    .line 138
    .line 139
    if-gt v6, v13, :cond_8

    .line 140
    .line 141
    mul-long v14, v14, v18

    .line 142
    .line 143
    add-int/lit8 v6, v6, -0x30

    .line 144
    .line 145
    int-to-long v6, v6

    .line 146
    add-long/2addr v14, v6

    .line 147
    mul-long v8, v8, v18

    .line 148
    .line 149
    move/from16 v7, v17

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    iput v2, v0, La5/c;->n:I

    .line 153
    .line 154
    return-wide v4

    .line 155
    :cond_7
    const-wide/16 v8, 0x1

    .line 156
    .line 157
    :cond_8
    const/16 v7, 0x65

    .line 158
    .line 159
    if-eq v6, v7, :cond_a

    .line 160
    .line 161
    const/16 v7, 0x45

    .line 162
    .line 163
    if-ne v6, v7, :cond_9

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    const/16 v16, 0x0

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_a
    :goto_4
    const/16 v16, 0x1

    .line 170
    .line 171
    :goto_5
    if-eqz v16, :cond_d

    .line 172
    .line 173
    iget v6, v0, La5/c;->e:I

    .line 174
    .line 175
    add-int/lit8 v7, v17, 0x1

    .line 176
    .line 177
    add-int v6, v6, v17

    .line 178
    .line 179
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    const/16 v4, 0x2b

    .line 184
    .line 185
    if-eq v6, v4, :cond_c

    .line 186
    .line 187
    if-ne v6, v3, :cond_b

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_b
    move/from16 v17, v7

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_c
    :goto_6
    iget v3, v0, La5/c;->e:I

    .line 194
    .line 195
    add-int/lit8 v17, v17, 0x2

    .line 196
    .line 197
    add-int/2addr v3, v7

    .line 198
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    move v6, v3

    .line 203
    :goto_7
    if-lt v6, v12, :cond_d

    .line 204
    .line 205
    if-gt v6, v13, :cond_d

    .line 206
    .line 207
    iget v3, v0, La5/c;->e:I

    .line 208
    .line 209
    add-int/lit8 v4, v17, 0x1

    .line 210
    .line 211
    add-int v3, v3, v17

    .line 212
    .line 213
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    move/from16 v17, v4

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_d
    if-eqz v10, :cond_f

    .line 221
    .line 222
    const/16 v3, 0x22

    .line 223
    .line 224
    if-eq v6, v3, :cond_e

    .line 225
    .line 226
    iput v2, v0, La5/c;->n:I

    .line 227
    .line 228
    const-wide/16 v1, 0x0

    .line 229
    .line 230
    return-wide v1

    .line 231
    :cond_e
    iget v3, v0, La5/c;->e:I

    .line 232
    .line 233
    add-int/lit8 v4, v17, 0x1

    .line 234
    .line 235
    add-int v3, v3, v17

    .line 236
    .line 237
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    iget v3, v0, La5/c;->e:I

    .line 242
    .line 243
    array-length v1, v1

    .line 244
    add-int/2addr v1, v3

    .line 245
    const/4 v5, 0x1

    .line 246
    add-int/2addr v1, v5

    .line 247
    add-int/2addr v3, v4

    .line 248
    sub-int/2addr v3, v1

    .line 249
    add-int/lit8 v3, v3, -0x2

    .line 250
    .line 251
    move/from16 v17, v4

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_f
    const/4 v5, 0x1

    .line 255
    iget v3, v0, La5/c;->e:I

    .line 256
    .line 257
    array-length v1, v1

    .line 258
    add-int/2addr v1, v3

    .line 259
    add-int v3, v3, v17

    .line 260
    .line 261
    sub-int/2addr v3, v1

    .line 262
    sub-int/2addr v3, v5

    .line 263
    :goto_8
    if-nez v16, :cond_11

    .line 264
    .line 265
    const/16 v4, 0x11

    .line 266
    .line 267
    if-ge v3, v4, :cond_11

    .line 268
    .line 269
    long-to-double v3, v14

    .line 270
    long-to-double v7, v8

    .line 271
    div-double/2addr v3, v7

    .line 272
    if-eqz v11, :cond_10

    .line 273
    .line 274
    neg-double v3, v3

    .line 275
    :cond_10
    :goto_9
    const/16 v1, 0x2c

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_11
    invoke-virtual {v0, v1, v3}, La5/c;->r1(II)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 283
    .line 284
    .line 285
    move-result-wide v3

    .line 286
    goto :goto_9

    .line 287
    :goto_a
    if-ne v6, v1, :cond_12

    .line 288
    .line 289
    iget v1, v0, La5/c;->e:I

    .line 290
    .line 291
    add-int v1, v1, v17

    .line 292
    .line 293
    iput v1, v0, La5/c;->e:I

    .line 294
    .line 295
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    iput-char v1, v0, La5/c;->d:C

    .line 300
    .line 301
    const/4 v1, 0x3

    .line 302
    iput v1, v0, La5/c;->n:I

    .line 303
    .line 304
    const/16 v1, 0x10

    .line 305
    .line 306
    iput v1, v0, La5/c;->a:I

    .line 307
    .line 308
    return-wide v3

    .line 309
    :cond_12
    const/16 v1, 0x10

    .line 310
    .line 311
    const/16 v5, 0x7d

    .line 312
    .line 313
    if-ne v6, v5, :cond_17

    .line 314
    .line 315
    iget v5, v0, La5/c;->e:I

    .line 316
    .line 317
    add-int/lit8 v6, v17, 0x1

    .line 318
    .line 319
    add-int v5, v5, v17

    .line 320
    .line 321
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    const/16 v7, 0x2c

    .line 326
    .line 327
    if-ne v5, v7, :cond_13

    .line 328
    .line 329
    iput v1, v0, La5/c;->a:I

    .line 330
    .line 331
    iget v1, v0, La5/c;->e:I

    .line 332
    .line 333
    add-int/2addr v1, v6

    .line 334
    iput v1, v0, La5/c;->e:I

    .line 335
    .line 336
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    iput-char v1, v0, La5/c;->d:C

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_13
    const/16 v1, 0x5d

    .line 344
    .line 345
    if-ne v5, v1, :cond_14

    .line 346
    .line 347
    const/16 v1, 0xf

    .line 348
    .line 349
    iput v1, v0, La5/c;->a:I

    .line 350
    .line 351
    iget v1, v0, La5/c;->e:I

    .line 352
    .line 353
    add-int/2addr v1, v6

    .line 354
    iput v1, v0, La5/c;->e:I

    .line 355
    .line 356
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    iput-char v1, v0, La5/c;->d:C

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_14
    const/16 v1, 0x7d

    .line 364
    .line 365
    if-ne v5, v1, :cond_15

    .line 366
    .line 367
    const/16 v1, 0xd

    .line 368
    .line 369
    iput v1, v0, La5/c;->a:I

    .line 370
    .line 371
    iget v1, v0, La5/c;->e:I

    .line 372
    .line 373
    add-int/2addr v1, v6

    .line 374
    iput v1, v0, La5/c;->e:I

    .line 375
    .line 376
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    iput-char v1, v0, La5/c;->d:C

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_15
    const/16 v1, 0x1a

    .line 384
    .line 385
    if-ne v5, v1, :cond_16

    .line 386
    .line 387
    const/16 v2, 0x14

    .line 388
    .line 389
    iput v2, v0, La5/c;->a:I

    .line 390
    .line 391
    iget v2, v0, La5/c;->e:I

    .line 392
    .line 393
    add-int v2, v2, v17

    .line 394
    .line 395
    iput v2, v0, La5/c;->e:I

    .line 396
    .line 397
    iput-char v1, v0, La5/c;->d:C

    .line 398
    .line 399
    :goto_b
    const/4 v1, 0x4

    .line 400
    iput v1, v0, La5/c;->n:I

    .line 401
    .line 402
    return-wide v3

    .line 403
    :cond_16
    iput v2, v0, La5/c;->n:I

    .line 404
    .line 405
    const-wide/16 v3, 0x0

    .line 406
    .line 407
    return-wide v3

    .line 408
    :cond_17
    const-wide/16 v3, 0x0

    .line 409
    .line 410
    iput v2, v0, La5/c;->n:I

    .line 411
    .line 412
    return-wide v3

    .line 413
    :cond_18
    const/16 v1, 0x6e

    .line 414
    .line 415
    if-ne v6, v1, :cond_1d

    .line 416
    .line 417
    iget v1, v0, La5/c;->e:I

    .line 418
    .line 419
    add-int/2addr v1, v7

    .line 420
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    const/16 v3, 0x75

    .line 425
    .line 426
    if-ne v1, v3, :cond_1d

    .line 427
    .line 428
    iget v1, v0, La5/c;->e:I

    .line 429
    .line 430
    add-int/2addr v1, v7

    .line 431
    const/4 v3, 0x1

    .line 432
    add-int/2addr v1, v3

    .line 433
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    const/16 v3, 0x6c

    .line 438
    .line 439
    if-ne v1, v3, :cond_1d

    .line 440
    .line 441
    iget v1, v0, La5/c;->e:I

    .line 442
    .line 443
    add-int/2addr v1, v7

    .line 444
    add-int/lit8 v1, v1, 0x2

    .line 445
    .line 446
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-ne v1, v3, :cond_1d

    .line 451
    .line 452
    const/4 v1, 0x5

    .line 453
    iput v1, v0, La5/c;->n:I

    .line 454
    .line 455
    add-int/lit8 v3, v7, 0x3

    .line 456
    .line 457
    iget v4, v0, La5/c;->e:I

    .line 458
    .line 459
    add-int/lit8 v5, v7, 0x4

    .line 460
    .line 461
    add-int/2addr v4, v3

    .line 462
    invoke-virtual {v0, v4}, La5/c;->G0(I)C

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    if-eqz v10, :cond_19

    .line 467
    .line 468
    const/16 v4, 0x22

    .line 469
    .line 470
    if-ne v3, v4, :cond_19

    .line 471
    .line 472
    iget v3, v0, La5/c;->e:I

    .line 473
    .line 474
    add-int/2addr v7, v1

    .line 475
    add-int/2addr v3, v5

    .line 476
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    move v5, v7

    .line 481
    :cond_19
    const/16 v4, 0x2c

    .line 482
    .line 483
    :goto_c
    if-ne v3, v4, :cond_1a

    .line 484
    .line 485
    iget v2, v0, La5/c;->e:I

    .line 486
    .line 487
    add-int/2addr v2, v5

    .line 488
    iput v2, v0, La5/c;->e:I

    .line 489
    .line 490
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    iput-char v2, v0, La5/c;->d:C

    .line 495
    .line 496
    iput v1, v0, La5/c;->n:I

    .line 497
    .line 498
    const/16 v6, 0x10

    .line 499
    .line 500
    iput v6, v0, La5/c;->a:I

    .line 501
    .line 502
    const-wide/16 v7, 0x0

    .line 503
    .line 504
    return-wide v7

    .line 505
    :cond_1a
    const/16 v6, 0x10

    .line 506
    .line 507
    const-wide/16 v7, 0x0

    .line 508
    .line 509
    const/16 v9, 0x7d

    .line 510
    .line 511
    if-ne v3, v9, :cond_1b

    .line 512
    .line 513
    iget v2, v0, La5/c;->e:I

    .line 514
    .line 515
    add-int/2addr v2, v5

    .line 516
    iput v2, v0, La5/c;->e:I

    .line 517
    .line 518
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    iput-char v2, v0, La5/c;->d:C

    .line 523
    .line 524
    iput v1, v0, La5/c;->n:I

    .line 525
    .line 526
    const/16 v10, 0xd

    .line 527
    .line 528
    iput v10, v0, La5/c;->a:I

    .line 529
    .line 530
    return-wide v7

    .line 531
    :cond_1b
    const/16 v10, 0xd

    .line 532
    .line 533
    invoke-static {v3}, La5/c;->M0(C)Z

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    if-eqz v3, :cond_1c

    .line 538
    .line 539
    iget v3, v0, La5/c;->e:I

    .line 540
    .line 541
    add-int/lit8 v11, v5, 0x1

    .line 542
    .line 543
    add-int/2addr v3, v5

    .line 544
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    move v5, v11

    .line 549
    goto :goto_c

    .line 550
    :cond_1c
    iput v2, v0, La5/c;->n:I

    .line 551
    .line 552
    return-wide v7

    .line 553
    :cond_1d
    const-wide/16 v7, 0x0

    .line 554
    .line 555
    iput v2, v0, La5/c;->n:I

    .line 556
    .line 557
    return-wide v7
.end method

.method public final a1([C)F
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, La5/c;->n:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    iput v1, v0, La5/c;->n:I

    .line 17
    .line 18
    return v4

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v5, v0, La5/c;->e:I

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x22

    .line 30
    .line 31
    if-ne v5, v7, :cond_1

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v9, v2

    .line 36
    :goto_0
    if-eqz v9, :cond_2

    .line 37
    .line 38
    iget v5, v0, La5/c;->e:I

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x2

    .line 41
    .line 42
    add-int/2addr v5, v6

    .line 43
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    move v6, v3

    .line 48
    :cond_2
    const/16 v3, 0x2d

    .line 49
    .line 50
    if-ne v5, v3, :cond_3

    .line 51
    .line 52
    const/4 v10, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v10, v2

    .line 55
    :goto_1
    if-eqz v10, :cond_4

    .line 56
    .line 57
    iget v5, v0, La5/c;->e:I

    .line 58
    .line 59
    add-int/lit8 v11, v6, 0x1

    .line 60
    .line 61
    add-int/2addr v5, v6

    .line 62
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    move v6, v11

    .line 67
    :cond_4
    const/4 v15, -0x1

    .line 68
    const/16 v2, 0x30

    .line 69
    .line 70
    if-lt v5, v2, :cond_18

    .line 71
    .line 72
    const/16 v11, 0x39

    .line 73
    .line 74
    if-gt v5, v11, :cond_18

    .line 75
    .line 76
    sub-int/2addr v5, v2

    .line 77
    int-to-long v12, v5

    .line 78
    :goto_2
    iget v5, v0, La5/c;->e:I

    .line 79
    .line 80
    add-int/lit8 v17, v6, 0x1

    .line 81
    .line 82
    add-int/2addr v5, v6

    .line 83
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const-wide/16 v18, 0xa

    .line 88
    .line 89
    if-lt v5, v2, :cond_5

    .line 90
    .line 91
    if-gt v5, v11, :cond_5

    .line 92
    .line 93
    mul-long v12, v12, v18

    .line 94
    .line 95
    add-int/lit8 v5, v5, -0x30

    .line 96
    .line 97
    int-to-long v5, v5

    .line 98
    add-long/2addr v12, v5

    .line 99
    move/from16 v6, v17

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/16 v14, 0x2e

    .line 103
    .line 104
    if-ne v5, v14, :cond_7

    .line 105
    .line 106
    iget v5, v0, La5/c;->e:I

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x2

    .line 109
    .line 110
    add-int v5, v5, v17

    .line 111
    .line 112
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-lt v5, v2, :cond_6

    .line 117
    .line 118
    if-gt v5, v11, :cond_6

    .line 119
    .line 120
    mul-long v12, v12, v18

    .line 121
    .line 122
    sub-int/2addr v5, v2

    .line 123
    int-to-long v7, v5

    .line 124
    add-long/2addr v12, v7

    .line 125
    move-wide/from16 v7, v18

    .line 126
    .line 127
    :goto_3
    iget v5, v0, La5/c;->e:I

    .line 128
    .line 129
    add-int/lit8 v17, v6, 0x1

    .line 130
    .line 131
    add-int/2addr v5, v6

    .line 132
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-lt v5, v2, :cond_8

    .line 137
    .line 138
    if-gt v5, v11, :cond_8

    .line 139
    .line 140
    mul-long v12, v12, v18

    .line 141
    .line 142
    add-int/lit8 v5, v5, -0x30

    .line 143
    .line 144
    int-to-long v5, v5

    .line 145
    add-long/2addr v12, v5

    .line 146
    mul-long v7, v7, v18

    .line 147
    .line 148
    move/from16 v6, v17

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    iput v15, v0, La5/c;->n:I

    .line 152
    .line 153
    return v4

    .line 154
    :cond_7
    const-wide/16 v7, 0x1

    .line 155
    .line 156
    :cond_8
    const/16 v6, 0x65

    .line 157
    .line 158
    if-eq v5, v6, :cond_a

    .line 159
    .line 160
    const/16 v6, 0x45

    .line 161
    .line 162
    if-ne v5, v6, :cond_9

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    const/16 v16, 0x0

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_a
    :goto_4
    const/16 v16, 0x1

    .line 169
    .line 170
    :goto_5
    if-eqz v16, :cond_d

    .line 171
    .line 172
    iget v5, v0, La5/c;->e:I

    .line 173
    .line 174
    add-int/lit8 v6, v17, 0x1

    .line 175
    .line 176
    add-int v5, v5, v17

    .line 177
    .line 178
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    const/16 v14, 0x2b

    .line 183
    .line 184
    if-eq v5, v14, :cond_c

    .line 185
    .line 186
    if-ne v5, v3, :cond_b

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_b
    move/from16 v17, v6

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_c
    :goto_6
    iget v3, v0, La5/c;->e:I

    .line 193
    .line 194
    add-int/lit8 v17, v17, 0x2

    .line 195
    .line 196
    add-int/2addr v3, v6

    .line 197
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    :goto_7
    move v5, v3

    .line 202
    :goto_8
    if-lt v5, v2, :cond_d

    .line 203
    .line 204
    if-gt v5, v11, :cond_d

    .line 205
    .line 206
    iget v3, v0, La5/c;->e:I

    .line 207
    .line 208
    add-int/lit8 v5, v17, 0x1

    .line 209
    .line 210
    add-int v3, v3, v17

    .line 211
    .line 212
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    move/from16 v17, v5

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_d
    if-eqz v9, :cond_f

    .line 220
    .line 221
    const/16 v2, 0x22

    .line 222
    .line 223
    if-eq v5, v2, :cond_e

    .line 224
    .line 225
    iput v15, v0, La5/c;->n:I

    .line 226
    .line 227
    return v4

    .line 228
    :cond_e
    iget v2, v0, La5/c;->e:I

    .line 229
    .line 230
    add-int/lit8 v3, v17, 0x1

    .line 231
    .line 232
    add-int v2, v2, v17

    .line 233
    .line 234
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    iget v2, v0, La5/c;->e:I

    .line 239
    .line 240
    array-length v1, v1

    .line 241
    add-int/2addr v1, v2

    .line 242
    const/4 v6, 0x1

    .line 243
    add-int/2addr v1, v6

    .line 244
    add-int/2addr v2, v3

    .line 245
    sub-int/2addr v2, v1

    .line 246
    add-int/lit8 v2, v2, -0x2

    .line 247
    .line 248
    move/from16 v17, v3

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_f
    const/4 v6, 0x1

    .line 252
    iget v2, v0, La5/c;->e:I

    .line 253
    .line 254
    array-length v1, v1

    .line 255
    add-int/2addr v1, v2

    .line 256
    add-int v2, v2, v17

    .line 257
    .line 258
    sub-int/2addr v2, v1

    .line 259
    sub-int/2addr v2, v6

    .line 260
    :goto_9
    if-nez v16, :cond_11

    .line 261
    .line 262
    const/16 v3, 0x11

    .line 263
    .line 264
    if-ge v2, v3, :cond_11

    .line 265
    .line 266
    long-to-double v1, v12

    .line 267
    long-to-double v6, v7

    .line 268
    div-double/2addr v1, v6

    .line 269
    double-to-float v1, v1

    .line 270
    if-eqz v10, :cond_10

    .line 271
    .line 272
    neg-float v1, v1

    .line 273
    :cond_10
    :goto_a
    const/16 v2, 0x2c

    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_11
    invoke-virtual {v0, v1, v2}, La5/c;->r1(II)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    goto :goto_a

    .line 285
    :goto_b
    if-ne v5, v2, :cond_12

    .line 286
    .line 287
    iget v2, v0, La5/c;->e:I

    .line 288
    .line 289
    add-int v2, v2, v17

    .line 290
    .line 291
    iput v2, v0, La5/c;->e:I

    .line 292
    .line 293
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    iput-char v2, v0, La5/c;->d:C

    .line 298
    .line 299
    const/4 v2, 0x3

    .line 300
    iput v2, v0, La5/c;->n:I

    .line 301
    .line 302
    const/16 v2, 0x10

    .line 303
    .line 304
    iput v2, v0, La5/c;->a:I

    .line 305
    .line 306
    return v1

    .line 307
    :cond_12
    const/16 v2, 0x10

    .line 308
    .line 309
    const/16 v3, 0x7d

    .line 310
    .line 311
    if-ne v5, v3, :cond_17

    .line 312
    .line 313
    iget v3, v0, La5/c;->e:I

    .line 314
    .line 315
    add-int/lit8 v5, v17, 0x1

    .line 316
    .line 317
    add-int v3, v3, v17

    .line 318
    .line 319
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    const/16 v6, 0x2c

    .line 324
    .line 325
    if-ne v3, v6, :cond_13

    .line 326
    .line 327
    iput v2, v0, La5/c;->a:I

    .line 328
    .line 329
    iget v2, v0, La5/c;->e:I

    .line 330
    .line 331
    add-int/2addr v2, v5

    .line 332
    iput v2, v0, La5/c;->e:I

    .line 333
    .line 334
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    iput-char v2, v0, La5/c;->d:C

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_13
    const/16 v2, 0x5d

    .line 342
    .line 343
    if-ne v3, v2, :cond_14

    .line 344
    .line 345
    const/16 v2, 0xf

    .line 346
    .line 347
    iput v2, v0, La5/c;->a:I

    .line 348
    .line 349
    iget v2, v0, La5/c;->e:I

    .line 350
    .line 351
    add-int/2addr v2, v5

    .line 352
    iput v2, v0, La5/c;->e:I

    .line 353
    .line 354
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    iput-char v2, v0, La5/c;->d:C

    .line 359
    .line 360
    goto :goto_c

    .line 361
    :cond_14
    const/16 v2, 0x7d

    .line 362
    .line 363
    if-ne v3, v2, :cond_15

    .line 364
    .line 365
    const/16 v2, 0xd

    .line 366
    .line 367
    iput v2, v0, La5/c;->a:I

    .line 368
    .line 369
    iget v2, v0, La5/c;->e:I

    .line 370
    .line 371
    add-int/2addr v2, v5

    .line 372
    iput v2, v0, La5/c;->e:I

    .line 373
    .line 374
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    iput-char v2, v0, La5/c;->d:C

    .line 379
    .line 380
    goto :goto_c

    .line 381
    :cond_15
    const/16 v2, 0x1a

    .line 382
    .line 383
    if-ne v3, v2, :cond_16

    .line 384
    .line 385
    iget v3, v0, La5/c;->e:I

    .line 386
    .line 387
    add-int v3, v3, v17

    .line 388
    .line 389
    iput v3, v0, La5/c;->e:I

    .line 390
    .line 391
    const/16 v3, 0x14

    .line 392
    .line 393
    iput v3, v0, La5/c;->a:I

    .line 394
    .line 395
    iput-char v2, v0, La5/c;->d:C

    .line 396
    .line 397
    :goto_c
    const/4 v2, 0x4

    .line 398
    iput v2, v0, La5/c;->n:I

    .line 399
    .line 400
    return v1

    .line 401
    :cond_16
    iput v15, v0, La5/c;->n:I

    .line 402
    .line 403
    return v4

    .line 404
    :cond_17
    iput v15, v0, La5/c;->n:I

    .line 405
    .line 406
    return v4

    .line 407
    :cond_18
    const/16 v1, 0x6e

    .line 408
    .line 409
    if-ne v5, v1, :cond_1d

    .line 410
    .line 411
    iget v1, v0, La5/c;->e:I

    .line 412
    .line 413
    add-int/2addr v1, v6

    .line 414
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    const/16 v2, 0x75

    .line 419
    .line 420
    if-ne v1, v2, :cond_1d

    .line 421
    .line 422
    iget v1, v0, La5/c;->e:I

    .line 423
    .line 424
    add-int/2addr v1, v6

    .line 425
    const/4 v2, 0x1

    .line 426
    add-int/2addr v1, v2

    .line 427
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    const/16 v2, 0x6c

    .line 432
    .line 433
    if-ne v1, v2, :cond_1d

    .line 434
    .line 435
    iget v1, v0, La5/c;->e:I

    .line 436
    .line 437
    add-int/2addr v1, v6

    .line 438
    add-int/lit8 v1, v1, 0x2

    .line 439
    .line 440
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-ne v1, v2, :cond_1d

    .line 445
    .line 446
    const/4 v1, 0x5

    .line 447
    iput v1, v0, La5/c;->n:I

    .line 448
    .line 449
    add-int/lit8 v2, v6, 0x3

    .line 450
    .line 451
    iget v3, v0, La5/c;->e:I

    .line 452
    .line 453
    add-int/lit8 v5, v6, 0x4

    .line 454
    .line 455
    add-int/2addr v3, v2

    .line 456
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-eqz v9, :cond_19

    .line 461
    .line 462
    const/16 v3, 0x22

    .line 463
    .line 464
    if-ne v2, v3, :cond_19

    .line 465
    .line 466
    iget v2, v0, La5/c;->e:I

    .line 467
    .line 468
    add-int/2addr v6, v1

    .line 469
    add-int/2addr v2, v5

    .line 470
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    move v5, v6

    .line 475
    :cond_19
    const/16 v3, 0x2c

    .line 476
    .line 477
    :goto_d
    if-ne v2, v3, :cond_1a

    .line 478
    .line 479
    iget v2, v0, La5/c;->e:I

    .line 480
    .line 481
    add-int/2addr v2, v5

    .line 482
    iput v2, v0, La5/c;->e:I

    .line 483
    .line 484
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    iput-char v2, v0, La5/c;->d:C

    .line 489
    .line 490
    iput v1, v0, La5/c;->n:I

    .line 491
    .line 492
    const/16 v6, 0x10

    .line 493
    .line 494
    iput v6, v0, La5/c;->a:I

    .line 495
    .line 496
    return v4

    .line 497
    :cond_1a
    const/16 v6, 0x10

    .line 498
    .line 499
    const/16 v7, 0x7d

    .line 500
    .line 501
    if-ne v2, v7, :cond_1b

    .line 502
    .line 503
    iget v2, v0, La5/c;->e:I

    .line 504
    .line 505
    add-int/2addr v2, v5

    .line 506
    iput v2, v0, La5/c;->e:I

    .line 507
    .line 508
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    iput-char v2, v0, La5/c;->d:C

    .line 513
    .line 514
    iput v1, v0, La5/c;->n:I

    .line 515
    .line 516
    const/16 v8, 0xd

    .line 517
    .line 518
    iput v8, v0, La5/c;->a:I

    .line 519
    .line 520
    return v4

    .line 521
    :cond_1b
    const/16 v8, 0xd

    .line 522
    .line 523
    invoke-static {v2}, La5/c;->M0(C)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_1c

    .line 528
    .line 529
    iget v2, v0, La5/c;->e:I

    .line 530
    .line 531
    add-int/lit8 v9, v5, 0x1

    .line 532
    .line 533
    add-int/2addr v2, v5

    .line 534
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    move v5, v9

    .line 539
    goto :goto_d

    .line 540
    :cond_1c
    iput v15, v0, La5/c;->n:I

    .line 541
    .line 542
    return v4

    .line 543
    :cond_1d
    iput v15, v0, La5/c;->n:I

    .line 544
    .line 545
    return v4
.end method

.method public abstract b(IIILa5/i;)Ljava/lang/String;
.end method

.method public final b1([C)[F
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, La5/c;->n:I

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v3, v0, La5/c;->n:I

    .line 15
    .line 16
    return-object v4

    .line 17
    :cond_0
    move-object/from16 v2, p1

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v5, v0, La5/c;->e:I

    .line 21
    .line 22
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v2

    .line 25
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x5b

    .line 30
    .line 31
    if-eq v5, v7, :cond_1

    .line 32
    .line 33
    iput v3, v0, La5/c;->n:I

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget v3, v0, La5/c;->e:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    add-int/2addr v3, v6

    .line 41
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v5, 0x10

    .line 46
    .line 47
    new-array v6, v5, [F

    .line 48
    .line 49
    move v7, v1

    .line 50
    :goto_0
    iget v8, v0, La5/c;->e:I

    .line 51
    .line 52
    add-int v9, v8, v2

    .line 53
    .line 54
    const/4 v10, 0x1

    .line 55
    sub-int/2addr v9, v10

    .line 56
    const/16 v11, 0x2d

    .line 57
    .line 58
    if-ne v3, v11, :cond_2

    .line 59
    .line 60
    move v12, v10

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v12, v1

    .line 63
    :goto_1
    if-eqz v12, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v2, 0x1

    .line 66
    .line 67
    add-int/2addr v8, v2

    .line 68
    invoke-virtual {v0, v8}, La5/c;->G0(I)C

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move/from16 v18, v3

    .line 73
    .line 74
    move v3, v2

    .line 75
    move/from16 v2, v18

    .line 76
    .line 77
    :cond_3
    const/4 v8, -0x1

    .line 78
    const/16 v13, 0x30

    .line 79
    .line 80
    if-lt v3, v13, :cond_19

    .line 81
    .line 82
    const/16 v14, 0x39

    .line 83
    .line 84
    if-gt v3, v14, :cond_19

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x30

    .line 87
    .line 88
    :goto_2
    iget v15, v0, La5/c;->e:I

    .line 89
    .line 90
    add-int/lit8 v16, v2, 0x1

    .line 91
    .line 92
    add-int/2addr v15, v2

    .line 93
    invoke-virtual {v0, v15}, La5/c;->G0(I)C

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    if-lt v15, v13, :cond_4

    .line 98
    .line 99
    if-gt v15, v14, :cond_4

    .line 100
    .line 101
    mul-int/lit8 v3, v3, 0xa

    .line 102
    .line 103
    add-int/lit8 v15, v15, -0x30

    .line 104
    .line 105
    add-int/2addr v3, v15

    .line 106
    move/from16 v2, v16

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const/16 v5, 0x2e

    .line 110
    .line 111
    const/16 v1, 0xa

    .line 112
    .line 113
    if-ne v15, v5, :cond_6

    .line 114
    .line 115
    iget v5, v0, La5/c;->e:I

    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x2

    .line 118
    .line 119
    add-int v5, v5, v16

    .line 120
    .line 121
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-lt v5, v13, :cond_5

    .line 126
    .line 127
    if-gt v5, v14, :cond_5

    .line 128
    .line 129
    mul-int/lit8 v3, v3, 0xa

    .line 130
    .line 131
    add-int/lit8 v5, v5, -0x30

    .line 132
    .line 133
    add-int/2addr v3, v5

    .line 134
    move v5, v1

    .line 135
    :goto_3
    iget v15, v0, La5/c;->e:I

    .line 136
    .line 137
    add-int/lit8 v16, v2, 0x1

    .line 138
    .line 139
    add-int/2addr v15, v2

    .line 140
    invoke-virtual {v0, v15}, La5/c;->G0(I)C

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-lt v15, v13, :cond_7

    .line 145
    .line 146
    if-gt v15, v14, :cond_7

    .line 147
    .line 148
    mul-int/lit8 v3, v3, 0xa

    .line 149
    .line 150
    add-int/lit8 v15, v15, -0x30

    .line 151
    .line 152
    add-int/2addr v3, v15

    .line 153
    mul-int/lit8 v5, v5, 0xa

    .line 154
    .line 155
    move/from16 v2, v16

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    iput v8, v0, La5/c;->n:I

    .line 159
    .line 160
    return-object v4

    .line 161
    :cond_6
    move v5, v10

    .line 162
    :cond_7
    const/16 v2, 0x65

    .line 163
    .line 164
    if-eq v15, v2, :cond_9

    .line 165
    .line 166
    const/16 v2, 0x45

    .line 167
    .line 168
    if-ne v15, v2, :cond_8

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    const/4 v2, 0x0

    .line 172
    goto :goto_5

    .line 173
    :cond_9
    :goto_4
    move v2, v10

    .line 174
    :goto_5
    if-eqz v2, :cond_c

    .line 175
    .line 176
    iget v15, v0, La5/c;->e:I

    .line 177
    .line 178
    add-int/lit8 v17, v16, 0x1

    .line 179
    .line 180
    add-int v15, v15, v16

    .line 181
    .line 182
    invoke-virtual {v0, v15}, La5/c;->G0(I)C

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    const/16 v4, 0x2b

    .line 187
    .line 188
    if-eq v15, v4, :cond_b

    .line 189
    .line 190
    if-ne v15, v11, :cond_a

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_a
    move/from16 v16, v17

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_b
    :goto_6
    iget v4, v0, La5/c;->e:I

    .line 197
    .line 198
    add-int/lit8 v16, v16, 0x2

    .line 199
    .line 200
    add-int v4, v4, v17

    .line 201
    .line 202
    invoke-virtual {v0, v4}, La5/c;->G0(I)C

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    move v15, v4

    .line 207
    :goto_7
    if-lt v15, v13, :cond_c

    .line 208
    .line 209
    if-gt v15, v14, :cond_c

    .line 210
    .line 211
    iget v4, v0, La5/c;->e:I

    .line 212
    .line 213
    add-int/lit8 v11, v16, 0x1

    .line 214
    .line 215
    add-int v4, v4, v16

    .line 216
    .line 217
    invoke-virtual {v0, v4}, La5/c;->G0(I)C

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    move/from16 v16, v11

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_c
    iget v4, v0, La5/c;->e:I

    .line 225
    .line 226
    add-int v4, v4, v16

    .line 227
    .line 228
    sub-int/2addr v4, v9

    .line 229
    sub-int/2addr v4, v10

    .line 230
    if-nez v2, :cond_d

    .line 231
    .line 232
    if-ge v4, v1, :cond_d

    .line 233
    .line 234
    int-to-float v1, v3

    .line 235
    int-to-float v2, v5

    .line 236
    div-float/2addr v1, v2

    .line 237
    if-eqz v12, :cond_e

    .line 238
    .line 239
    neg-float v1, v1

    .line 240
    goto :goto_8

    .line 241
    :cond_d
    invoke-virtual {v0, v9, v4}, La5/c;->r1(II)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    :cond_e
    :goto_8
    array-length v2, v6

    .line 250
    const/4 v3, 0x3

    .line 251
    if-lt v7, v2, :cond_f

    .line 252
    .line 253
    array-length v2, v6

    .line 254
    mul-int/2addr v2, v3

    .line 255
    div-int/lit8 v2, v2, 0x2

    .line 256
    .line 257
    new-array v2, v2, [F

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-static {v6, v4, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    .line 262
    .line 263
    move-object v6, v2

    .line 264
    :cond_f
    add-int/lit8 v4, v7, 0x1

    .line 265
    .line 266
    aput v1, v6, v7

    .line 267
    .line 268
    const/16 v1, 0x2c

    .line 269
    .line 270
    if-ne v15, v1, :cond_10

    .line 271
    .line 272
    iget v1, v0, La5/c;->e:I

    .line 273
    .line 274
    add-int/lit8 v2, v16, 0x1

    .line 275
    .line 276
    add-int v1, v1, v16

    .line 277
    .line 278
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    move v15, v1

    .line 283
    const/4 v1, 0x0

    .line 284
    const/16 v3, 0x10

    .line 285
    .line 286
    const/4 v11, 0x0

    .line 287
    goto/16 :goto_a

    .line 288
    .line 289
    :cond_10
    const/16 v2, 0x5d

    .line 290
    .line 291
    if-ne v15, v2, :cond_18

    .line 292
    .line 293
    iget v5, v0, La5/c;->e:I

    .line 294
    .line 295
    add-int/lit8 v7, v16, 0x1

    .line 296
    .line 297
    add-int v5, v5, v16

    .line 298
    .line 299
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    array-length v9, v6

    .line 304
    if-eq v4, v9, :cond_11

    .line 305
    .line 306
    new-array v9, v4, [F

    .line 307
    .line 308
    const/4 v11, 0x0

    .line 309
    invoke-static {v6, v11, v9, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    .line 311
    .line 312
    move-object v6, v9

    .line 313
    :cond_11
    if-ne v5, v1, :cond_12

    .line 314
    .line 315
    iget v1, v0, La5/c;->e:I

    .line 316
    .line 317
    add-int v1, v1, v16

    .line 318
    .line 319
    iput v1, v0, La5/c;->e:I

    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 322
    .line 323
    .line 324
    iput v3, v0, La5/c;->n:I

    .line 325
    .line 326
    const/16 v3, 0x10

    .line 327
    .line 328
    iput v3, v0, La5/c;->a:I

    .line 329
    .line 330
    return-object v6

    .line 331
    :cond_12
    const/16 v3, 0x10

    .line 332
    .line 333
    const/16 v4, 0x7d

    .line 334
    .line 335
    if-ne v5, v4, :cond_17

    .line 336
    .line 337
    iget v5, v0, La5/c;->e:I

    .line 338
    .line 339
    add-int/2addr v5, v7

    .line 340
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-ne v5, v1, :cond_13

    .line 345
    .line 346
    iput v3, v0, La5/c;->a:I

    .line 347
    .line 348
    iget v1, v0, La5/c;->e:I

    .line 349
    .line 350
    add-int/lit8 v16, v16, 0x1

    .line 351
    .line 352
    add-int v1, v1, v16

    .line 353
    .line 354
    iput v1, v0, La5/c;->e:I

    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 357
    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_13
    if-ne v5, v2, :cond_14

    .line 361
    .line 362
    const/16 v1, 0xf

    .line 363
    .line 364
    iput v1, v0, La5/c;->a:I

    .line 365
    .line 366
    iget v1, v0, La5/c;->e:I

    .line 367
    .line 368
    add-int/lit8 v16, v16, 0x1

    .line 369
    .line 370
    add-int v1, v1, v16

    .line 371
    .line 372
    iput v1, v0, La5/c;->e:I

    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 375
    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_14
    if-ne v5, v4, :cond_15

    .line 379
    .line 380
    const/16 v1, 0xd

    .line 381
    .line 382
    iput v1, v0, La5/c;->a:I

    .line 383
    .line 384
    iget v1, v0, La5/c;->e:I

    .line 385
    .line 386
    add-int/lit8 v16, v16, 0x1

    .line 387
    .line 388
    add-int v1, v1, v16

    .line 389
    .line 390
    iput v1, v0, La5/c;->e:I

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 393
    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_15
    const/16 v1, 0x1a

    .line 397
    .line 398
    if-ne v5, v1, :cond_16

    .line 399
    .line 400
    iget v2, v0, La5/c;->e:I

    .line 401
    .line 402
    add-int/lit8 v16, v16, 0x1

    .line 403
    .line 404
    add-int v2, v2, v16

    .line 405
    .line 406
    iput v2, v0, La5/c;->e:I

    .line 407
    .line 408
    const/16 v2, 0x14

    .line 409
    .line 410
    iput v2, v0, La5/c;->a:I

    .line 411
    .line 412
    iput-char v1, v0, La5/c;->d:C

    .line 413
    .line 414
    :goto_9
    const/4 v1, 0x4

    .line 415
    iput v1, v0, La5/c;->n:I

    .line 416
    .line 417
    return-object v6

    .line 418
    :cond_16
    iput v8, v0, La5/c;->n:I

    .line 419
    .line 420
    const/4 v1, 0x0

    .line 421
    return-object v1

    .line 422
    :cond_17
    const/4 v1, 0x0

    .line 423
    iput v8, v0, La5/c;->n:I

    .line 424
    .line 425
    return-object v1

    .line 426
    :cond_18
    const/4 v1, 0x0

    .line 427
    const/16 v3, 0x10

    .line 428
    .line 429
    const/4 v11, 0x0

    .line 430
    move/from16 v2, v16

    .line 431
    .line 432
    :goto_a
    move v5, v3

    .line 433
    move v7, v4

    .line 434
    move v3, v15

    .line 435
    move-object v4, v1

    .line 436
    move v1, v11

    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :cond_19
    move-object v1, v4

    .line 440
    iput v8, v0, La5/c;->n:I

    .line 441
    .line 442
    return-object v1
.end method

.method public final c1([C)[[F
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, La5/c;->n:I

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v3, v0, La5/c;->n:I

    .line 15
    .line 16
    return-object v4

    .line 17
    :cond_0
    move-object/from16 v2, p1

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v5, v0, La5/c;->e:I

    .line 21
    .line 22
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v2

    .line 25
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x5b

    .line 30
    .line 31
    if-eq v5, v7, :cond_1

    .line 32
    .line 33
    iput v3, v0, La5/c;->n:I

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget v3, v0, La5/c;->e:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    add-int/2addr v3, v6

    .line 41
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v5, 0x10

    .line 46
    .line 47
    new-array v6, v5, [[F

    .line 48
    .line 49
    move v8, v1

    .line 50
    :goto_0
    const/4 v12, -0x1

    .line 51
    const/4 v13, 0x1

    .line 52
    if-ne v3, v7, :cond_17

    .line 53
    .line 54
    iget v3, v0, La5/c;->e:I

    .line 55
    .line 56
    add-int/lit8 v14, v2, 0x1

    .line 57
    .line 58
    add-int/2addr v3, v2

    .line 59
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    new-array v3, v5, [F

    .line 64
    .line 65
    move v15, v1

    .line 66
    :goto_1
    iget v7, v0, La5/c;->e:I

    .line 67
    .line 68
    add-int v16, v7, v14

    .line 69
    .line 70
    add-int/lit8 v5, v16, -0x1

    .line 71
    .line 72
    const/16 v9, 0x2d

    .line 73
    .line 74
    if-ne v2, v9, :cond_2

    .line 75
    .line 76
    move/from16 v17, v13

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move/from16 v17, v1

    .line 80
    .line 81
    :goto_2
    if-eqz v17, :cond_3

    .line 82
    .line 83
    add-int/lit8 v2, v14, 0x1

    .line 84
    .line 85
    add-int/2addr v7, v14

    .line 86
    invoke-virtual {v0, v7}, La5/c;->G0(I)C

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    move v14, v2

    .line 91
    move v2, v7

    .line 92
    :cond_3
    const/16 v7, 0x30

    .line 93
    .line 94
    if-lt v2, v7, :cond_16

    .line 95
    .line 96
    const/16 v11, 0x39

    .line 97
    .line 98
    if-gt v2, v11, :cond_16

    .line 99
    .line 100
    add-int/lit8 v2, v2, -0x30

    .line 101
    .line 102
    :goto_3
    iget v1, v0, La5/c;->e:I

    .line 103
    .line 104
    add-int/lit8 v18, v14, 0x1

    .line 105
    .line 106
    add-int/2addr v1, v14

    .line 107
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-lt v1, v7, :cond_4

    .line 112
    .line 113
    if-gt v1, v11, :cond_4

    .line 114
    .line 115
    mul-int/lit8 v2, v2, 0xa

    .line 116
    .line 117
    add-int/lit8 v1, v1, -0x30

    .line 118
    .line 119
    add-int/2addr v2, v1

    .line 120
    move/from16 v14, v18

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    const/16 v10, 0x2e

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    if-ne v1, v10, :cond_7

    .line 128
    .line 129
    iget v1, v0, La5/c;->e:I

    .line 130
    .line 131
    add-int/lit8 v14, v14, 0x2

    .line 132
    .line 133
    add-int v1, v1, v18

    .line 134
    .line 135
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-lt v1, v7, :cond_6

    .line 140
    .line 141
    if-gt v1, v11, :cond_6

    .line 142
    .line 143
    mul-int/lit8 v2, v2, 0xa

    .line 144
    .line 145
    add-int/lit8 v1, v1, -0x30

    .line 146
    .line 147
    add-int/2addr v2, v1

    .line 148
    move v1, v13

    .line 149
    :goto_4
    iget v10, v0, La5/c;->e:I

    .line 150
    .line 151
    add-int/lit8 v18, v14, 0x1

    .line 152
    .line 153
    add-int/2addr v10, v14

    .line 154
    invoke-virtual {v0, v10}, La5/c;->G0(I)C

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-lt v10, v7, :cond_5

    .line 159
    .line 160
    if-gt v10, v11, :cond_5

    .line 161
    .line 162
    mul-int/lit8 v2, v2, 0xa

    .line 163
    .line 164
    add-int/lit8 v10, v10, -0x30

    .line 165
    .line 166
    add-int/2addr v2, v10

    .line 167
    mul-int/lit8 v1, v1, 0xa

    .line 168
    .line 169
    move/from16 v14, v18

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_5
    move/from16 v20, v2

    .line 173
    .line 174
    move v2, v1

    .line 175
    move v1, v10

    .line 176
    move/from16 v10, v20

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    iput v12, v0, La5/c;->n:I

    .line 180
    .line 181
    return-object v4

    .line 182
    :cond_7
    move v10, v2

    .line 183
    const/4 v2, 0x1

    .line 184
    :goto_5
    const/16 v14, 0x65

    .line 185
    .line 186
    if-eq v1, v14, :cond_9

    .line 187
    .line 188
    const/16 v14, 0x45

    .line 189
    .line 190
    if-ne v1, v14, :cond_8

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_8
    const/4 v14, 0x0

    .line 194
    goto :goto_7

    .line 195
    :cond_9
    :goto_6
    const/4 v14, 0x1

    .line 196
    :goto_7
    if-eqz v14, :cond_c

    .line 197
    .line 198
    iget v1, v0, La5/c;->e:I

    .line 199
    .line 200
    add-int/lit8 v19, v18, 0x1

    .line 201
    .line 202
    add-int v1, v1, v18

    .line 203
    .line 204
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const/16 v4, 0x2b

    .line 209
    .line 210
    if-eq v1, v4, :cond_b

    .line 211
    .line 212
    if-ne v1, v9, :cond_a

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_a
    move/from16 v18, v19

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_b
    :goto_8
    iget v1, v0, La5/c;->e:I

    .line 219
    .line 220
    add-int/lit8 v18, v18, 0x2

    .line 221
    .line 222
    add-int v1, v1, v19

    .line 223
    .line 224
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    :goto_9
    if-lt v1, v7, :cond_c

    .line 229
    .line 230
    if-gt v1, v11, :cond_c

    .line 231
    .line 232
    iget v1, v0, La5/c;->e:I

    .line 233
    .line 234
    add-int/lit8 v4, v18, 0x1

    .line 235
    .line 236
    add-int v1, v1, v18

    .line 237
    .line 238
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    move/from16 v18, v4

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_c
    iget v4, v0, La5/c;->e:I

    .line 246
    .line 247
    add-int v4, v4, v18

    .line 248
    .line 249
    sub-int/2addr v4, v5

    .line 250
    const/4 v7, 0x1

    .line 251
    sub-int/2addr v4, v7

    .line 252
    if-nez v14, :cond_d

    .line 253
    .line 254
    if-ge v4, v13, :cond_d

    .line 255
    .line 256
    int-to-float v4, v10

    .line 257
    int-to-float v2, v2

    .line 258
    div-float/2addr v4, v2

    .line 259
    if-eqz v17, :cond_e

    .line 260
    .line 261
    neg-float v4, v4

    .line 262
    goto :goto_a

    .line 263
    :cond_d
    invoke-virtual {v0, v5, v4}, La5/c;->r1(II)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    :cond_e
    :goto_a
    array-length v2, v3

    .line 272
    if-lt v15, v2, :cond_f

    .line 273
    .line 274
    array-length v2, v3

    .line 275
    const/4 v5, 0x3

    .line 276
    mul-int/2addr v2, v5

    .line 277
    div-int/lit8 v2, v2, 0x2

    .line 278
    .line 279
    new-array v2, v2, [F

    .line 280
    .line 281
    const/4 v5, 0x0

    .line 282
    invoke-static {v3, v5, v2, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    .line 284
    .line 285
    move-object v3, v2

    .line 286
    :cond_f
    add-int/lit8 v2, v15, 0x1

    .line 287
    .line 288
    aput v4, v3, v15

    .line 289
    .line 290
    const/16 v4, 0x2c

    .line 291
    .line 292
    if-ne v1, v4, :cond_10

    .line 293
    .line 294
    iget v1, v0, La5/c;->e:I

    .line 295
    .line 296
    add-int/lit8 v4, v18, 0x1

    .line 297
    .line 298
    add-int v1, v1, v18

    .line 299
    .line 300
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    move v14, v4

    .line 305
    goto :goto_d

    .line 306
    :cond_10
    const/16 v4, 0x5d

    .line 307
    .line 308
    if-ne v1, v4, :cond_15

    .line 309
    .line 310
    iget v1, v0, La5/c;->e:I

    .line 311
    .line 312
    add-int/lit8 v4, v18, 0x1

    .line 313
    .line 314
    add-int v1, v1, v18

    .line 315
    .line 316
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    array-length v5, v3

    .line 321
    if-eq v2, v5, :cond_11

    .line 322
    .line 323
    new-array v5, v2, [F

    .line 324
    .line 325
    const/4 v7, 0x0

    .line 326
    invoke-static {v3, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    .line 328
    .line 329
    move-object v3, v5

    .line 330
    goto :goto_b

    .line 331
    :cond_11
    const/4 v7, 0x0

    .line 332
    :goto_b
    array-length v5, v6

    .line 333
    if-lt v8, v5, :cond_12

    .line 334
    .line 335
    array-length v5, v6

    .line 336
    const/4 v6, 0x3

    .line 337
    mul-int/2addr v5, v6

    .line 338
    div-int/lit8 v5, v5, 0x2

    .line 339
    .line 340
    new-array v5, v5, [[F

    .line 341
    .line 342
    invoke-static {v3, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    .line 344
    .line 345
    move-object v6, v5

    .line 346
    :cond_12
    add-int/lit8 v5, v8, 0x1

    .line 347
    .line 348
    aput-object v3, v6, v8

    .line 349
    .line 350
    const/16 v2, 0x2c

    .line 351
    .line 352
    if-ne v1, v2, :cond_13

    .line 353
    .line 354
    iget v1, v0, La5/c;->e:I

    .line 355
    .line 356
    add-int/lit8 v18, v18, 0x2

    .line 357
    .line 358
    add-int/2addr v1, v4

    .line 359
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    move v3, v1

    .line 364
    move/from16 v2, v18

    .line 365
    .line 366
    goto :goto_c

    .line 367
    :cond_13
    const/16 v2, 0x5d

    .line 368
    .line 369
    if-ne v1, v2, :cond_14

    .line 370
    .line 371
    iget v1, v0, La5/c;->e:I

    .line 372
    .line 373
    add-int/lit8 v2, v18, 0x2

    .line 374
    .line 375
    add-int/2addr v1, v4

    .line 376
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    move v8, v5

    .line 381
    goto :goto_e

    .line 382
    :cond_14
    move v3, v1

    .line 383
    move v2, v4

    .line 384
    :goto_c
    move v8, v5

    .line 385
    const/4 v1, 0x0

    .line 386
    const/4 v4, 0x0

    .line 387
    const/16 v5, 0x10

    .line 388
    .line 389
    const/16 v7, 0x5b

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_15
    move/from16 v14, v18

    .line 394
    .line 395
    :goto_d
    move v15, v2

    .line 396
    const/4 v4, 0x0

    .line 397
    const/16 v5, 0x10

    .line 398
    .line 399
    const/4 v13, 0x1

    .line 400
    move v2, v1

    .line 401
    const/4 v1, 0x0

    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    :cond_16
    iput v12, v0, La5/c;->n:I

    .line 405
    .line 406
    const/4 v1, 0x0

    .line 407
    return-object v1

    .line 408
    :cond_17
    :goto_e
    array-length v1, v6

    .line 409
    if-eq v8, v1, :cond_18

    .line 410
    .line 411
    new-array v1, v8, [[F

    .line 412
    .line 413
    const/4 v4, 0x0

    .line 414
    invoke-static {v6, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    .line 416
    .line 417
    move-object v6, v1

    .line 418
    :cond_18
    const/16 v1, 0x2c

    .line 419
    .line 420
    if-ne v3, v1, :cond_19

    .line 421
    .line 422
    iget v1, v0, La5/c;->e:I

    .line 423
    .line 424
    const/4 v3, 0x1

    .line 425
    sub-int/2addr v2, v3

    .line 426
    add-int/2addr v1, v2

    .line 427
    iput v1, v0, La5/c;->e:I

    .line 428
    .line 429
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 430
    .line 431
    .line 432
    const/4 v1, 0x3

    .line 433
    iput v1, v0, La5/c;->n:I

    .line 434
    .line 435
    const/16 v1, 0x10

    .line 436
    .line 437
    iput v1, v0, La5/c;->a:I

    .line 438
    .line 439
    return-object v6

    .line 440
    :cond_19
    const/16 v1, 0x10

    .line 441
    .line 442
    const/16 v4, 0x7d

    .line 443
    .line 444
    if-ne v3, v4, :cond_1e

    .line 445
    .line 446
    iget v3, v0, La5/c;->e:I

    .line 447
    .line 448
    add-int/2addr v3, v2

    .line 449
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    const/16 v5, 0x2c

    .line 454
    .line 455
    if-ne v3, v5, :cond_1a

    .line 456
    .line 457
    iput v1, v0, La5/c;->a:I

    .line 458
    .line 459
    iget v1, v0, La5/c;->e:I

    .line 460
    .line 461
    add-int/2addr v1, v2

    .line 462
    iput v1, v0, La5/c;->e:I

    .line 463
    .line 464
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 465
    .line 466
    .line 467
    goto :goto_f

    .line 468
    :cond_1a
    const/16 v1, 0x5d

    .line 469
    .line 470
    if-ne v3, v1, :cond_1b

    .line 471
    .line 472
    const/16 v1, 0xf

    .line 473
    .line 474
    iput v1, v0, La5/c;->a:I

    .line 475
    .line 476
    iget v1, v0, La5/c;->e:I

    .line 477
    .line 478
    add-int/2addr v1, v2

    .line 479
    iput v1, v0, La5/c;->e:I

    .line 480
    .line 481
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 482
    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_1b
    if-ne v3, v4, :cond_1c

    .line 486
    .line 487
    const/16 v1, 0xd

    .line 488
    .line 489
    iput v1, v0, La5/c;->a:I

    .line 490
    .line 491
    iget v1, v0, La5/c;->e:I

    .line 492
    .line 493
    add-int/2addr v1, v2

    .line 494
    iput v1, v0, La5/c;->e:I

    .line 495
    .line 496
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 497
    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_1c
    const/16 v1, 0x1a

    .line 501
    .line 502
    if-ne v3, v1, :cond_1d

    .line 503
    .line 504
    iget v3, v0, La5/c;->e:I

    .line 505
    .line 506
    add-int/2addr v3, v2

    .line 507
    iput v3, v0, La5/c;->e:I

    .line 508
    .line 509
    const/16 v2, 0x14

    .line 510
    .line 511
    iput v2, v0, La5/c;->a:I

    .line 512
    .line 513
    iput-char v1, v0, La5/c;->d:C

    .line 514
    .line 515
    :goto_f
    const/4 v1, 0x4

    .line 516
    iput v1, v0, La5/c;->n:I

    .line 517
    .line 518
    return-object v6

    .line 519
    :cond_1d
    iput v12, v0, La5/c;->n:I

    .line 520
    .line 521
    const/4 v1, 0x0

    .line 522
    return-object v1

    .line 523
    :cond_1e
    const/4 v1, 0x0

    .line 524
    iput v12, v0, La5/c;->n:I

    .line 525
    .line 526
    return-object v1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, La5/c;->g:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x2000

    .line 5
    .line 6
    if-gt v1, v2, :cond_0

    .line 7
    .line 8
    sget-object v1, La5/c;->q:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, La5/c;->g:[C

    .line 15
    .line 16
    return-void
.end method

.method public final d()C
    .locals 1

    .line 1
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    return v0
.end method

.method public final d0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->h:I

    .line 3
    .line 4
    :goto_0
    iget v1, p0, La5/c;->e:I

    .line 5
    .line 6
    iput v1, p0, La5/c;->b:I

    .line 7
    .line 8
    iget-char v1, p0, La5/c;->d:C

    .line 9
    .line 10
    const/16 v2, 0x2f

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, La5/c;->p1()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x22

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, La5/c;->e0()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/16 v2, 0x2c

    .line 27
    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, La5/c;->next()C

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x10

    .line 34
    .line 35
    iput v0, p0, La5/c;->a:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const/16 v2, 0x30

    .line 39
    .line 40
    if-lt v1, v2, :cond_3

    .line 41
    .line 42
    const/16 v2, 0x39

    .line 43
    .line 44
    if-gt v1, v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, La5/c;->q()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const/16 v2, 0x2d

    .line 51
    .line 52
    if-ne v1, v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, La5/c;->q()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, La5/c;->L0()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget v0, p0, La5/c;->a:I

    .line 68
    .line 69
    const/16 v1, 0x14

    .line 70
    .line 71
    if-eq v0, v1, :cond_5

    .line 72
    .line 73
    iput v1, p0, La5/c;->a:I

    .line 74
    .line 75
    iget v0, p0, La5/c;->e:I

    .line 76
    .line 77
    iput v0, p0, La5/c;->b:I

    .line 78
    .line 79
    iput v0, p0, La5/c;->f:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 83
    .line 84
    const-string v1, "EOF error"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_6
    iget-char v1, p0, La5/c;->d:C

    .line 91
    .line 92
    const/16 v2, 0x1f

    .line 93
    .line 94
    if-le v1, v2, :cond_8

    .line 95
    .line 96
    const/16 v2, 0x7f

    .line 97
    .line 98
    if-ne v1, v2, :cond_7

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x1

    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v1, v2, v0

    .line 109
    .line 110
    const-string v0, "illegal.char"

    .line 111
    .line 112
    invoke-virtual {p0, v0, v2}, La5/c;->N0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, La5/c;->next()C

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void

    .line 119
    :cond_8
    :goto_2
    invoke-virtual {p0}, La5/c;->next()C

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :sswitch_0
    invoke-virtual {p0}, La5/c;->next()C

    .line 124
    .line 125
    .line 126
    const/16 v0, 0xd

    .line 127
    .line 128
    iput v0, p0, La5/c;->a:I

    .line 129
    .line 130
    return-void

    .line 131
    :sswitch_1
    invoke-virtual {p0}, La5/c;->next()C

    .line 132
    .line 133
    .line 134
    const/16 v0, 0xc

    .line 135
    .line 136
    iput v0, p0, La5/c;->a:I

    .line 137
    .line 138
    return-void

    .line 139
    :sswitch_2
    invoke-virtual {p0}, La5/c;->h1()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :sswitch_3
    invoke-virtual {p0}, La5/c;->n1()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_4
    invoke-virtual {p0}, La5/c;->j1()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :sswitch_5
    invoke-virtual {p0}, La5/c;->U0()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :sswitch_6
    invoke-virtual {p0}, La5/c;->next()C

    .line 156
    .line 157
    .line 158
    const/16 v0, 0xf

    .line 159
    .line 160
    iput v0, p0, La5/c;->a:I

    .line 161
    .line 162
    return-void

    .line 163
    :sswitch_7
    invoke-virtual {p0}, La5/c;->next()C

    .line 164
    .line 165
    .line 166
    const/16 v0, 0xe

    .line 167
    .line 168
    iput v0, p0, La5/c;->a:I

    .line 169
    .line 170
    return-void

    .line 171
    :sswitch_8
    invoke-virtual {p0}, La5/c;->i1()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :sswitch_9
    invoke-virtual {p0}, La5/c;->next()C

    .line 176
    .line 177
    .line 178
    const/16 v0, 0x18

    .line 179
    .line 180
    iput v0, p0, La5/c;->a:I

    .line 181
    .line 182
    return-void

    .line 183
    :sswitch_a
    invoke-virtual {p0}, La5/c;->next()C

    .line 184
    .line 185
    .line 186
    const/16 v0, 0x11

    .line 187
    .line 188
    iput v0, p0, La5/c;->a:I

    .line 189
    .line 190
    return-void

    .line 191
    :sswitch_b
    invoke-virtual {p0}, La5/c;->next()C

    .line 192
    .line 193
    .line 194
    const/16 v0, 0x19

    .line 195
    .line 196
    iput v0, p0, La5/c;->a:I

    .line 197
    .line 198
    return-void

    .line 199
    :sswitch_c
    invoke-virtual {p0}, La5/c;->next()C

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, La5/c;->q()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :sswitch_d
    invoke-virtual {p0}, La5/c;->next()C

    .line 207
    .line 208
    .line 209
    const/16 v0, 0xb

    .line 210
    .line 211
    iput v0, p0, La5/c;->a:I

    .line 212
    .line 213
    return-void

    .line 214
    :sswitch_e
    invoke-virtual {p0}, La5/c;->next()C

    .line 215
    .line 216
    .line 217
    const/16 v0, 0xa

    .line 218
    .line 219
    iput v0, p0, La5/c;->a:I

    .line 220
    .line 221
    return-void

    .line 222
    :sswitch_f
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 223
    .line 224
    invoke-virtual {p0, v0}, La5/c;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_9

    .line 229
    .line 230
    invoke-direct {p0}, La5/c;->l1()V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 235
    .line 236
    const-string v1, "Feature.AllowSingleQuotes is false"

    .line 237
    .line 238
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :sswitch_10
    invoke-virtual {p0}, La5/c;->next()C

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_10
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x27 -> :sswitch_f
        0x28 -> :sswitch_e
        0x29 -> :sswitch_d
        0x2b -> :sswitch_c
        0x2e -> :sswitch_b
        0x3a -> :sswitch_a
        0x3b -> :sswitch_9
        0x4e -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_8
        0x78 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract d1([C)I
.end method

.method public final e0()V
    .locals 15

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v4, p0, La5/c;->e:I

    .line 6
    .line 7
    iput v4, p0, La5/c;->i:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-boolean v4, p0, La5/c;->j:Z

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, La5/c;->next()C

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/16 v6, 0x22

    .line 17
    .line 18
    if-ne v5, v6, :cond_0

    .line 19
    .line 20
    iput v2, p0, La5/c;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, La5/c;->next()C

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-char v0, p0, La5/c;->d:C

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string v7, "unclosed string : "

    .line 30
    .line 31
    const/16 v8, 0x1a

    .line 32
    .line 33
    if-ne v5, v8, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, La5/c;->L0()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v8}, La5/c;->R0(C)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    const/16 v8, 0x5c

    .line 67
    .line 68
    if-ne v5, v8, :cond_17

    .line 69
    .line 70
    iget-boolean v5, p0, La5/c;->j:Z

    .line 71
    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    iput-boolean v3, p0, La5/c;->j:Z

    .line 75
    .line 76
    iget v5, p0, La5/c;->h:I

    .line 77
    .line 78
    iget-object v9, p0, La5/c;->g:[C

    .line 79
    .line 80
    array-length v10, v9

    .line 81
    if-lt v5, v10, :cond_4

    .line 82
    .line 83
    array-length v10, v9

    .line 84
    mul-int/2addr v10, v1

    .line 85
    if-le v5, v10, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v5, v10

    .line 89
    :goto_1
    new-array v5, v5, [C

    .line 90
    .line 91
    array-length v10, v9

    .line 92
    invoke-static {v9, v4, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    iput-object v5, p0, La5/c;->g:[C

    .line 96
    .line 97
    :cond_4
    iget v5, p0, La5/c;->i:I

    .line 98
    .line 99
    add-int/2addr v5, v3

    .line 100
    iget v9, p0, La5/c;->h:I

    .line 101
    .line 102
    iget-object v10, p0, La5/c;->g:[C

    .line 103
    .line 104
    invoke-virtual {p0, v5, v9, v10}, La5/c;->H0(II[C)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {p0}, La5/c;->next()C

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eq v5, v6, :cond_16

    .line 112
    .line 113
    const/16 v6, 0x27

    .line 114
    .line 115
    if-eq v5, v6, :cond_15

    .line 116
    .line 117
    const/16 v6, 0x46

    .line 118
    .line 119
    if-eq v5, v6, :cond_14

    .line 120
    .line 121
    if-eq v5, v8, :cond_13

    .line 122
    .line 123
    const/16 v8, 0x62

    .line 124
    .line 125
    if-eq v5, v8, :cond_12

    .line 126
    .line 127
    const/16 v8, 0x66

    .line 128
    .line 129
    if-eq v5, v8, :cond_14

    .line 130
    .line 131
    const/16 v9, 0x6e

    .line 132
    .line 133
    if-eq v5, v9, :cond_11

    .line 134
    .line 135
    const/16 v9, 0x72

    .line 136
    .line 137
    if-eq v5, v9, :cond_10

    .line 138
    .line 139
    const/16 v9, 0x78

    .line 140
    .line 141
    const/16 v10, 0x10

    .line 142
    .line 143
    if-eq v5, v9, :cond_6

    .line 144
    .line 145
    packed-switch v5, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    packed-switch v5, :pswitch_data_1

    .line 149
    .line 150
    .line 151
    iput-char v5, p0, La5/c;->d:C

    .line 152
    .line 153
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :pswitch_0
    const/16 v5, 0xb

    .line 175
    .line 176
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_1
    invoke-virtual {p0}, La5/c;->next()C

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    invoke-virtual {p0}, La5/c;->next()C

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-virtual {p0}, La5/c;->next()C

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-virtual {p0}, La5/c;->next()C

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    new-instance v9, Ljava/lang/String;

    .line 198
    .line 199
    new-array v11, v2, [C

    .line 200
    .line 201
    aput-char v5, v11, v4

    .line 202
    .line 203
    aput-char v6, v11, v3

    .line 204
    .line 205
    aput-char v7, v11, v1

    .line 206
    .line 207
    aput-char v8, v11, v0

    .line 208
    .line 209
    invoke-direct {v9, v11}, Ljava/lang/String;-><init>([C)V

    .line 210
    .line 211
    .line 212
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    int-to-char v5, v5

    .line 217
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_2
    const/16 v5, 0x9

    .line 223
    .line 224
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_3
    const/4 v5, 0x7

    .line 230
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_4
    const/4 v5, 0x6

    .line 236
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_5
    const/4 v5, 0x5

    .line 242
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :pswitch_6
    invoke-virtual {p0, v2}, La5/c;->R0(C)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :pswitch_7
    invoke-virtual {p0, v0}, La5/c;->R0(C)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_8
    invoke-virtual {p0, v1}, La5/c;->R0(C)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :pswitch_9
    invoke-virtual {p0, v3}, La5/c;->R0(C)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_a
    invoke-virtual {p0, v4}, La5/c;->R0(C)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :pswitch_b
    const/16 v5, 0x2f

    .line 273
    .line 274
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_6
    invoke-virtual {p0}, La5/c;->next()C

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-virtual {p0}, La5/c;->next()C

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    const/16 v9, 0x41

    .line 288
    .line 289
    const/16 v11, 0x61

    .line 290
    .line 291
    const/16 v12, 0x39

    .line 292
    .line 293
    const/16 v13, 0x30

    .line 294
    .line 295
    if-lt v5, v13, :cond_7

    .line 296
    .line 297
    if-le v5, v12, :cond_9

    .line 298
    .line 299
    :cond_7
    if-lt v5, v11, :cond_8

    .line 300
    .line 301
    if-le v5, v8, :cond_9

    .line 302
    .line 303
    :cond_8
    if-lt v5, v9, :cond_a

    .line 304
    .line 305
    if-gt v5, v6, :cond_a

    .line 306
    .line 307
    :cond_9
    move v14, v3

    .line 308
    goto :goto_2

    .line 309
    :cond_a
    move v14, v4

    .line 310
    :goto_2
    if-lt v7, v13, :cond_b

    .line 311
    .line 312
    if-le v7, v12, :cond_d

    .line 313
    .line 314
    :cond_b
    if-lt v7, v11, :cond_c

    .line 315
    .line 316
    if-le v7, v8, :cond_d

    .line 317
    .line 318
    :cond_c
    if-lt v7, v9, :cond_e

    .line 319
    .line 320
    if-gt v7, v6, :cond_e

    .line 321
    .line 322
    :cond_d
    move v6, v3

    .line 323
    goto :goto_3

    .line 324
    :cond_e
    move v6, v4

    .line 325
    :goto_3
    if-eqz v14, :cond_f

    .line 326
    .line 327
    if-eqz v6, :cond_f

    .line 328
    .line 329
    sget-object v6, La5/c;->s:[I

    .line 330
    .line 331
    aget v5, v6, v5

    .line 332
    .line 333
    mul-int/2addr v5, v10

    .line 334
    aget v6, v6, v7

    .line 335
    .line 336
    add-int/2addr v5, v6

    .line 337
    int-to-char v5, v5

    .line 338
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 344
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v2, "invalid escape character \\x"

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_10
    const/16 v5, 0xd

    .line 370
    .line 371
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_11
    const/16 v5, 0xa

    .line 377
    .line 378
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_12
    const/16 v5, 0x8

    .line 384
    .line 385
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :cond_13
    invoke-virtual {p0, v8}, La5/c;->R0(C)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_14
    const/16 v5, 0xc

    .line 396
    .line 397
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_15
    invoke-virtual {p0, v6}, La5/c;->R0(C)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_16
    invoke-virtual {p0, v6}, La5/c;->R0(C)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :cond_17
    iget-boolean v6, p0, La5/c;->j:Z

    .line 413
    .line 414
    if-nez v6, :cond_18

    .line 415
    .line 416
    iget v5, p0, La5/c;->h:I

    .line 417
    .line 418
    add-int/2addr v5, v3

    .line 419
    iput v5, p0, La5/c;->h:I

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_18
    iget v6, p0, La5/c;->h:I

    .line 424
    .line 425
    iget-object v7, p0, La5/c;->g:[C

    .line 426
    .line 427
    array-length v8, v7

    .line 428
    if-ne v6, v8, :cond_19

    .line 429
    .line 430
    invoke-virtual {p0, v5}, La5/c;->R0(C)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :cond_19
    add-int/lit8 v8, v6, 0x1

    .line 436
    .line 437
    iput v8, p0, La5/c;->h:I

    .line 438
    .line 439
    aput-char v5, v7, v6

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e1([C)[I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, La5/c;->n:I

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, La5/c;->j([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v3, v0, La5/c;->n:I

    .line 15
    .line 16
    return-object v4

    .line 17
    :cond_0
    move-object/from16 v2, p1

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v5, v0, La5/c;->e:I

    .line 21
    .line 22
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v2

    .line 25
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x5b

    .line 30
    .line 31
    if-eq v5, v7, :cond_1

    .line 32
    .line 33
    iput v3, v0, La5/c;->n:I

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget v3, v0, La5/c;->e:I

    .line 37
    .line 38
    add-int/lit8 v5, v2, 0x2

    .line 39
    .line 40
    add-int/2addr v3, v6

    .line 41
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v6, 0x10

    .line 46
    .line 47
    new-array v7, v6, [I

    .line 48
    .line 49
    const/4 v8, -0x1

    .line 50
    const/16 v9, 0x2c

    .line 51
    .line 52
    const/4 v10, 0x3

    .line 53
    const/16 v11, 0x5d

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    if-ne v3, v11, :cond_2

    .line 57
    .line 58
    iget v3, v0, La5/c;->e:I

    .line 59
    .line 60
    add-int/2addr v2, v10

    .line 61
    add-int/2addr v3, v5

    .line 62
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    move v14, v1

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_2
    move v2, v1

    .line 70
    :goto_0
    const/16 v13, 0x2d

    .line 71
    .line 72
    if-ne v3, v13, :cond_3

    .line 73
    .line 74
    iget v3, v0, La5/c;->e:I

    .line 75
    .line 76
    add-int/lit8 v13, v5, 0x1

    .line 77
    .line 78
    add-int/2addr v3, v5

    .line 79
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    move v5, v13

    .line 84
    move v13, v12

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v13, v1

    .line 87
    :goto_1
    const/16 v14, 0x30

    .line 88
    .line 89
    if-lt v3, v14, :cond_10

    .line 90
    .line 91
    const/16 v15, 0x39

    .line 92
    .line 93
    if-gt v3, v15, :cond_10

    .line 94
    .line 95
    add-int/lit8 v3, v3, -0x30

    .line 96
    .line 97
    :goto_2
    iget v4, v0, La5/c;->e:I

    .line 98
    .line 99
    add-int/lit8 v16, v5, 0x1

    .line 100
    .line 101
    add-int/2addr v4, v5

    .line 102
    invoke-virtual {v0, v4}, La5/c;->G0(I)C

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-lt v4, v14, :cond_4

    .line 107
    .line 108
    if-gt v4, v15, :cond_4

    .line 109
    .line 110
    mul-int/lit8 v3, v3, 0xa

    .line 111
    .line 112
    add-int/lit8 v4, v4, -0x30

    .line 113
    .line 114
    add-int/2addr v3, v4

    .line 115
    move/from16 v5, v16

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    array-length v14, v7

    .line 119
    if-lt v2, v14, :cond_5

    .line 120
    .line 121
    array-length v14, v7

    .line 122
    mul-int/2addr v14, v10

    .line 123
    div-int/lit8 v14, v14, 0x2

    .line 124
    .line 125
    new-array v14, v14, [I

    .line 126
    .line 127
    invoke-static {v7, v1, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    .line 129
    .line 130
    move-object v7, v14

    .line 131
    :cond_5
    add-int/lit8 v14, v2, 0x1

    .line 132
    .line 133
    if-eqz v13, :cond_6

    .line 134
    .line 135
    neg-int v3, v3

    .line 136
    :cond_6
    aput v3, v7, v2

    .line 137
    .line 138
    if-ne v4, v9, :cond_7

    .line 139
    .line 140
    iget v2, v0, La5/c;->e:I

    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x2

    .line 143
    .line 144
    add-int v2, v2, v16

    .line 145
    .line 146
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    move v3, v2

    .line 151
    const/4 v2, 0x0

    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :cond_7
    if-ne v4, v11, :cond_f

    .line 155
    .line 156
    iget v2, v0, La5/c;->e:I

    .line 157
    .line 158
    add-int/lit8 v3, v5, 0x2

    .line 159
    .line 160
    add-int v2, v2, v16

    .line 161
    .line 162
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    move/from16 v17, v3

    .line 167
    .line 168
    move v3, v2

    .line 169
    move/from16 v2, v17

    .line 170
    .line 171
    :goto_3
    array-length v4, v7

    .line 172
    if-eq v14, v4, :cond_8

    .line 173
    .line 174
    new-array v4, v14, [I

    .line 175
    .line 176
    invoke-static {v7, v1, v4, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    move-object v7, v4

    .line 180
    :cond_8
    if-ne v3, v9, :cond_9

    .line 181
    .line 182
    iget v1, v0, La5/c;->e:I

    .line 183
    .line 184
    sub-int/2addr v2, v12

    .line 185
    add-int/2addr v1, v2

    .line 186
    iput v1, v0, La5/c;->e:I

    .line 187
    .line 188
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 189
    .line 190
    .line 191
    iput v10, v0, La5/c;->n:I

    .line 192
    .line 193
    iput v6, v0, La5/c;->a:I

    .line 194
    .line 195
    return-object v7

    .line 196
    :cond_9
    const/16 v1, 0x7d

    .line 197
    .line 198
    if-ne v3, v1, :cond_e

    .line 199
    .line 200
    iget v3, v0, La5/c;->e:I

    .line 201
    .line 202
    add-int/2addr v3, v2

    .line 203
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-ne v3, v9, :cond_a

    .line 208
    .line 209
    iput v6, v0, La5/c;->a:I

    .line 210
    .line 211
    iget v1, v0, La5/c;->e:I

    .line 212
    .line 213
    add-int/2addr v1, v2

    .line 214
    iput v1, v0, La5/c;->e:I

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_a
    if-ne v3, v11, :cond_b

    .line 221
    .line 222
    const/16 v1, 0xf

    .line 223
    .line 224
    iput v1, v0, La5/c;->a:I

    .line 225
    .line 226
    iget v1, v0, La5/c;->e:I

    .line 227
    .line 228
    add-int/2addr v1, v2

    .line 229
    iput v1, v0, La5/c;->e:I

    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_b
    if-ne v3, v1, :cond_c

    .line 236
    .line 237
    const/16 v1, 0xd

    .line 238
    .line 239
    iput v1, v0, La5/c;->a:I

    .line 240
    .line 241
    iget v1, v0, La5/c;->e:I

    .line 242
    .line 243
    add-int/2addr v1, v2

    .line 244
    iput v1, v0, La5/c;->e:I

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_c
    const/16 v1, 0x1a

    .line 251
    .line 252
    if-ne v3, v1, :cond_d

    .line 253
    .line 254
    iget v3, v0, La5/c;->e:I

    .line 255
    .line 256
    add-int/2addr v3, v2

    .line 257
    iput v3, v0, La5/c;->e:I

    .line 258
    .line 259
    const/16 v2, 0x14

    .line 260
    .line 261
    iput v2, v0, La5/c;->a:I

    .line 262
    .line 263
    iput-char v1, v0, La5/c;->d:C

    .line 264
    .line 265
    :goto_4
    const/4 v1, 0x4

    .line 266
    iput v1, v0, La5/c;->n:I

    .line 267
    .line 268
    return-object v7

    .line 269
    :cond_d
    iput v8, v0, La5/c;->n:I

    .line 270
    .line 271
    const/4 v2, 0x0

    .line 272
    return-object v2

    .line 273
    :cond_e
    const/4 v2, 0x0

    .line 274
    iput v8, v0, La5/c;->n:I

    .line 275
    .line 276
    return-object v2

    .line 277
    :cond_f
    const/4 v2, 0x0

    .line 278
    move v3, v4

    .line 279
    move/from16 v5, v16

    .line 280
    .line 281
    :goto_5
    move-object v4, v2

    .line 282
    move v2, v14

    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_10
    move-object v2, v4

    .line 286
    iput v8, v0, La5/c;->n:I

    .line 287
    .line 288
    return-object v2
.end method

.method protected abstract f(I[CII)V
.end method

.method public final f0(I)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->h:I

    .line 3
    .line 4
    :goto_0
    const/4 v1, 0x2

    .line 5
    const/16 v2, 0x39

    .line 6
    .line 7
    const/16 v3, 0x30

    .line 8
    .line 9
    const/16 v4, 0x22

    .line 10
    .line 11
    const/16 v5, 0xd

    .line 12
    .line 13
    const/16 v6, 0x7b

    .line 14
    .line 15
    const/16 v7, 0xe

    .line 16
    .line 17
    const/16 v8, 0x5b

    .line 18
    .line 19
    const/16 v9, 0xc

    .line 20
    .line 21
    if-eq p1, v1, :cond_d

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq p1, v1, :cond_9

    .line 25
    .line 26
    if-eq p1, v9, :cond_7

    .line 27
    .line 28
    const/16 v1, 0x12

    .line 29
    .line 30
    if-eq p1, v1, :cond_6

    .line 31
    .line 32
    const/16 v1, 0x1a

    .line 33
    .line 34
    const/16 v2, 0x14

    .line 35
    .line 36
    if-eq p1, v2, :cond_5

    .line 37
    .line 38
    const/16 v3, 0xf

    .line 39
    .line 40
    const/16 v4, 0x5d

    .line 41
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :pswitch_0
    iget-char v6, p0, La5/c;->d:C

    .line 48
    .line 49
    const/16 v7, 0x2c

    .line 50
    .line 51
    if-ne v6, v7, :cond_0

    .line 52
    .line 53
    const/16 p1, 0x10

    .line 54
    .line 55
    iput p1, p0, La5/c;->a:I

    .line 56
    .line 57
    invoke-virtual {p0}, La5/c;->next()C

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    const/16 v7, 0x7d

    .line 62
    .line 63
    if-ne v6, v7, :cond_1

    .line 64
    .line 65
    iput v5, p0, La5/c;->a:I

    .line 66
    .line 67
    invoke-virtual {p0}, La5/c;->next()C

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    if-ne v6, v4, :cond_2

    .line 72
    .line 73
    iput v3, p0, La5/c;->a:I

    .line 74
    .line 75
    invoke-virtual {p0}, La5/c;->next()C

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    if-ne v6, v1, :cond_3

    .line 80
    .line 81
    iput v2, p0, La5/c;->a:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    const/16 v1, 0x6e

    .line 85
    .line 86
    if-ne v6, v1, :cond_11

    .line 87
    .line 88
    invoke-virtual {p0, v0}, La5/c;->k1(Z)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_1
    iget-char v6, p0, La5/c;->d:C

    .line 93
    .line 94
    if-ne v6, v4, :cond_5

    .line 95
    .line 96
    iput v3, p0, La5/c;->a:I

    .line 97
    .line 98
    invoke-virtual {p0}, La5/c;->next()C

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_2
    iget-char v1, p0, La5/c;->d:C

    .line 103
    .line 104
    if-ne v1, v8, :cond_4

    .line 105
    .line 106
    iput v7, p0, La5/c;->a:I

    .line 107
    .line 108
    invoke-virtual {p0}, La5/c;->next()C

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    if-ne v1, v6, :cond_11

    .line 113
    .line 114
    iput v9, p0, La5/c;->a:I

    .line 115
    .line 116
    invoke-virtual {p0}, La5/c;->next()C

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    iget-char v3, p0, La5/c;->d:C

    .line 121
    .line 122
    if-ne v3, v1, :cond_11

    .line 123
    .line 124
    iput v2, p0, La5/c;->a:I

    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    invoke-virtual {p0}, La5/c;->P0()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    iget-char v1, p0, La5/c;->d:C

    .line 132
    .line 133
    if-ne v1, v6, :cond_8

    .line 134
    .line 135
    iput v9, p0, La5/c;->a:I

    .line 136
    .line 137
    invoke-virtual {p0}, La5/c;->next()C

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8
    if-ne v1, v8, :cond_11

    .line 142
    .line 143
    iput v7, p0, La5/c;->a:I

    .line 144
    .line 145
    invoke-virtual {p0}, La5/c;->next()C

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_9
    iget-char v1, p0, La5/c;->d:C

    .line 150
    .line 151
    if-ne v1, v4, :cond_a

    .line 152
    .line 153
    iget p1, p0, La5/c;->e:I

    .line 154
    .line 155
    iput p1, p0, La5/c;->b:I

    .line 156
    .line 157
    invoke-virtual {p0}, La5/c;->e0()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    if-lt v1, v3, :cond_b

    .line 162
    .line 163
    if-gt v1, v2, :cond_b

    .line 164
    .line 165
    iget p1, p0, La5/c;->e:I

    .line 166
    .line 167
    iput p1, p0, La5/c;->b:I

    .line 168
    .line 169
    invoke-virtual {p0}, La5/c;->q()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_b
    if-ne v1, v8, :cond_c

    .line 174
    .line 175
    iput v7, p0, La5/c;->a:I

    .line 176
    .line 177
    invoke-virtual {p0}, La5/c;->next()C

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_c
    if-ne v1, v6, :cond_11

    .line 182
    .line 183
    iput v9, p0, La5/c;->a:I

    .line 184
    .line 185
    invoke-virtual {p0}, La5/c;->next()C

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_d
    iget-char v1, p0, La5/c;->d:C

    .line 190
    .line 191
    if-lt v1, v3, :cond_e

    .line 192
    .line 193
    if-gt v1, v2, :cond_e

    .line 194
    .line 195
    iget p1, p0, La5/c;->e:I

    .line 196
    .line 197
    iput p1, p0, La5/c;->b:I

    .line 198
    .line 199
    invoke-virtual {p0}, La5/c;->q()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_e
    if-ne v1, v4, :cond_f

    .line 204
    .line 205
    iget p1, p0, La5/c;->e:I

    .line 206
    .line 207
    iput p1, p0, La5/c;->b:I

    .line 208
    .line 209
    invoke-virtual {p0}, La5/c;->e0()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_f
    if-ne v1, v8, :cond_10

    .line 214
    .line 215
    iput v7, p0, La5/c;->a:I

    .line 216
    .line 217
    invoke-virtual {p0}, La5/c;->next()C

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_10
    if-ne v1, v6, :cond_11

    .line 222
    .line 223
    iput v9, p0, La5/c;->a:I

    .line 224
    .line 225
    invoke-virtual {p0}, La5/c;->next()C

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_11
    :goto_1
    iget-char v1, p0, La5/c;->d:C

    .line 230
    .line 231
    const/16 v2, 0x20

    .line 232
    .line 233
    if-eq v1, v2, :cond_13

    .line 234
    .line 235
    const/16 v2, 0xa

    .line 236
    .line 237
    if-eq v1, v2, :cond_13

    .line 238
    .line 239
    if-eq v1, v5, :cond_13

    .line 240
    .line 241
    const/16 v2, 0x9

    .line 242
    .line 243
    if-eq v1, v2, :cond_13

    .line 244
    .line 245
    if-eq v1, v9, :cond_13

    .line 246
    .line 247
    const/16 v2, 0x8

    .line 248
    .line 249
    if-ne v1, v2, :cond_12

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_12
    invoke-virtual {p0}, La5/c;->d0()V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_13
    :goto_2
    invoke-virtual {p0}, La5/c;->next()C

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract f1([C)J
.end method

.method public abstract g0()Ljava/math/BigDecimal;
.end method

.method public abstract g1([C)Ljava/lang/String;
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, La5/c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final h0(La5/i;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, La5/c;->x0()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, La5/c;->d:C

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, La5/c;->w(La5/i;C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string v1, "syntax error"

    .line 16
    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, La5/c;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1, v2}, La5/c;->w(La5/i;C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    const/16 v2, 0x7d

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, La5/c;->next()C

    .line 46
    .line 47
    .line 48
    const/16 p1, 0xd

    .line 49
    .line 50
    iput p1, p0, La5/c;->a:I

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_3
    const/16 v2, 0x2c

    .line 54
    .line 55
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, La5/c;->next()C

    .line 58
    .line 59
    .line 60
    const/16 p1, 0x10

    .line 61
    .line 62
    iput p1, p0, La5/c;->a:I

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_4
    const/16 v2, 0x1a

    .line 66
    .line 67
    if-ne v0, v2, :cond_5

    .line 68
    .line 69
    const/16 p1, 0x14

    .line 70
    .line 71
    iput p1, p0, La5/c;->a:I

    .line 72
    .line 73
    return-object v3

    .line 74
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, La5/c;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0, p1}, La5/c;->T(La5/i;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public final h1()V
    .locals 5

    .line 1
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    const/16 v1, 0x78

    .line 4
    .line 5
    const-string v2, "illegal state. "

    .line 6
    .line 7
    if-ne v0, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, La5/c;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, La5/c;->d:C

    .line 13
    .line 14
    const/16 v1, 0x27

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    iget v0, p0, La5/c;->e:I

    .line 19
    .line 20
    iput v0, p0, La5/c;->i:I

    .line 21
    .line 22
    invoke-virtual {p0}, La5/c;->next()C

    .line 23
    .line 24
    .line 25
    iget-char v0, p0, La5/c;->d:C

    .line 26
    .line 27
    const/16 v3, 0x1a

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, La5/c;->next()C

    .line 32
    .line 33
    .line 34
    iput v3, p0, La5/c;->a:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p0}, La5/c;->next()C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v4, 0x30

    .line 42
    .line 43
    if-lt v0, v4, :cond_1

    .line 44
    .line 45
    const/16 v4, 0x39

    .line 46
    .line 47
    if-le v0, v4, :cond_2

    .line 48
    .line 49
    :cond_1
    const/16 v4, 0x41

    .line 50
    .line 51
    if-lt v0, v4, :cond_3

    .line 52
    .line 53
    const/16 v4, 0x46

    .line 54
    .line 55
    if-gt v0, v4, :cond_3

    .line 56
    .line 57
    :cond_2
    iget v0, p0, La5/c;->h:I

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    iput v0, p0, La5/c;->h:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget v0, p0, La5/c;->h:I

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    iput v0, p0, La5/c;->h:I

    .line 71
    .line 72
    invoke-virtual {p0}, La5/c;->next()C

    .line 73
    .line 74
    .line 75
    iput v3, p0, La5/c;->a:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-char v2, p0, La5/c;->d:C

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-char v2, p0, La5/c;->d:C

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method

.method public final i1()V
    .locals 2

    .line 1
    iget v0, p0, La5/c;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, La5/c;->i:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, La5/c;->j:Z

    .line 9
    .line 10
    :goto_0
    iget v0, p0, La5/c;->h:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, La5/c;->h:I

    .line 15
    .line 16
    invoke-virtual {p0}, La5/c;->next()C

    .line 17
    .line 18
    .line 19
    iget-char v0, p0, La5/c;->d:C

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, La5/c;->o0()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "null"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x8

    .line 41
    .line 42
    iput v0, p0, La5/c;->a:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v1, "new"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const/16 v0, 0x9

    .line 54
    .line 55
    iput v0, p0, La5/c;->a:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-string v1, "true"

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    iput v0, p0, La5/c;->a:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const-string v1, "false"

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x7

    .line 79
    iput v0, p0, La5/c;->a:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const-string v1, "undefined"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const/16 v0, 0x17

    .line 91
    .line 92
    iput v0, p0, La5/c;->a:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const-string v1, "Set"

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    const/16 v0, 0x15

    .line 104
    .line 105
    iput v0, p0, La5/c;->a:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    const-string v1, "TreeSet"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    const/16 v0, 0x16

    .line 117
    .line 118
    iput v0, p0, La5/c;->a:I

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    const/16 v0, 0x12

    .line 122
    .line 123
    iput v0, p0, La5/c;->a:I

    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method public final isEnabled(I)Z
    .locals 1

    .line 1
    iget v0, p0, La5/c;->c:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method protected abstract j([C)Z
.end method

.method public final j1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, La5/c;->k1(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public final k1(Z)V
    .locals 13

    .line 1
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    const/16 v1, 0x6e

    .line 4
    .line 5
    if-ne v0, v1, :cond_a

    .line 6
    .line 7
    invoke-virtual {p0}, La5/c;->next()C

    .line 8
    .line 9
    .line 10
    iget-char v0, p0, La5/c;->d:C

    .line 11
    .line 12
    const/16 v1, 0x75

    .line 13
    .line 14
    const/16 v2, 0xc

    .line 15
    .line 16
    const/16 v3, 0x1a

    .line 17
    .line 18
    const/16 v4, 0xd

    .line 19
    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    const/16 v6, 0x5d

    .line 23
    .line 24
    const/16 v7, 0x7d

    .line 25
    .line 26
    const/16 v8, 0x2c

    .line 27
    .line 28
    const/16 v9, 0x20

    .line 29
    .line 30
    const/16 v10, 0x8

    .line 31
    .line 32
    const/16 v11, 0x9

    .line 33
    .line 34
    if-ne v0, v1, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0}, La5/c;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, La5/c;->d:C

    .line 40
    .line 41
    const-string v1, "error parse null"

    .line 42
    .line 43
    const/16 v12, 0x6c

    .line 44
    .line 45
    if-ne v0, v12, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, La5/c;->next()C

    .line 48
    .line 49
    .line 50
    iget-char v0, p0, La5/c;->d:C

    .line 51
    .line 52
    if-ne v0, v12, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, La5/c;->next()C

    .line 55
    .line 56
    .line 57
    iget-char v0, p0, La5/c;->d:C

    .line 58
    .line 59
    if-eq v0, v9, :cond_2

    .line 60
    .line 61
    if-eq v0, v8, :cond_2

    .line 62
    .line 63
    if-eq v0, v7, :cond_2

    .line 64
    .line 65
    if-eq v0, v6, :cond_2

    .line 66
    .line 67
    if-eq v0, v5, :cond_2

    .line 68
    .line 69
    if-eq v0, v4, :cond_2

    .line 70
    .line 71
    if-eq v0, v11, :cond_2

    .line 72
    .line 73
    if-eq v0, v3, :cond_2

    .line 74
    .line 75
    const/16 v1, 0x3a

    .line 76
    .line 77
    if-ne v0, v1, :cond_0

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    :cond_0
    if-eq v0, v2, :cond_2

    .line 82
    .line 83
    if-ne v0, v10, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 87
    .line 88
    const-string v0, "scan null error"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_2
    :goto_0
    iput v10, p0, La5/c;->a:I

    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 98
    .line 99
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 104
    .line 105
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_5
    const/16 p1, 0x65

    .line 110
    .line 111
    const-string v1, "error parse new"

    .line 112
    .line 113
    if-ne v0, p1, :cond_9

    .line 114
    .line 115
    invoke-virtual {p0}, La5/c;->next()C

    .line 116
    .line 117
    .line 118
    iget-char p1, p0, La5/c;->d:C

    .line 119
    .line 120
    const/16 v0, 0x77

    .line 121
    .line 122
    if-ne p1, v0, :cond_8

    .line 123
    .line 124
    invoke-virtual {p0}, La5/c;->next()C

    .line 125
    .line 126
    .line 127
    iget-char p1, p0, La5/c;->d:C

    .line 128
    .line 129
    if-eq p1, v9, :cond_7

    .line 130
    .line 131
    if-eq p1, v8, :cond_7

    .line 132
    .line 133
    if-eq p1, v7, :cond_7

    .line 134
    .line 135
    if-eq p1, v6, :cond_7

    .line 136
    .line 137
    if-eq p1, v5, :cond_7

    .line 138
    .line 139
    if-eq p1, v4, :cond_7

    .line 140
    .line 141
    if-eq p1, v11, :cond_7

    .line 142
    .line 143
    if-eq p1, v3, :cond_7

    .line 144
    .line 145
    if-eq p1, v2, :cond_7

    .line 146
    .line 147
    if-ne p1, v10, :cond_6

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 151
    .line 152
    const-string v0, "scan new error"

    .line 153
    .line 154
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_7
    :goto_1
    iput v11, p0, La5/c;->a:I

    .line 159
    .line 160
    return-void

    .line 161
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 162
    .line 163
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 168
    .line 169
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 174
    .line 175
    const-string v0, "error parse null or new"

    .line 176
    .line 177
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method

.method public final l()J
    .locals 13

    .line 1
    iget v0, p0, La5/c;->i:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, La5/c;->i:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, La5/c;->i:I

    .line 10
    .line 11
    iget v1, p0, La5/c;->h:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2d

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    const-wide/high16 v2, -0x8000000000000000L

    .line 26
    .line 27
    move-wide v3, v2

    .line 28
    move v2, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :goto_0
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v6, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x30

    .line 44
    .line 45
    neg-int v0, v0

    .line 46
    int-to-long v7, v0

    .line 47
    :goto_1
    move v0, v6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    :goto_2
    if-ge v0, v1, :cond_7

    .line 52
    .line 53
    add-int/lit8 v6, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v9, 0x4c

    .line 60
    .line 61
    if-eq v0, v9, :cond_6

    .line 62
    .line 63
    const/16 v9, 0x53

    .line 64
    .line 65
    if-eq v0, v9, :cond_6

    .line 66
    .line 67
    const/16 v9, 0x42

    .line 68
    .line 69
    if-ne v0, v9, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    add-int/lit8 v0, v0, -0x30

    .line 73
    .line 74
    const-wide v9, -0xcccccccccccccccL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmp-long v9, v7, v9

    .line 80
    .line 81
    if-ltz v9, :cond_5

    .line 82
    .line 83
    const-wide/16 v9, 0xa

    .line 84
    .line 85
    mul-long/2addr v7, v9

    .line 86
    int-to-long v9, v0

    .line 87
    add-long v11, v3, v9

    .line 88
    .line 89
    cmp-long v0, v7, v11

    .line 90
    .line 91
    if-ltz v0, :cond_4

    .line 92
    .line 93
    sub-long/2addr v7, v9

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 96
    .line 97
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 106
    .line 107
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_6
    :goto_3
    move v0, v6

    .line 116
    :cond_7
    if-eqz v2, :cond_9

    .line 117
    .line 118
    iget v1, p0, La5/c;->i:I

    .line 119
    .line 120
    add-int/2addr v1, v5

    .line 121
    if-le v0, v1, :cond_8

    .line 122
    .line 123
    return-wide v7

    .line 124
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 125
    .line 126
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_9
    neg-long v0, v7

    .line 135
    return-wide v0
.end method

.method public final m(C)F
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, La5/c;->n:I

    .line 5
    .line 6
    iget v2, v0, La5/c;->e:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    move v5, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v5, v1

    .line 20
    :goto_0
    const/4 v6, 0x2

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget v2, v0, La5/c;->e:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move v7, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v7, v3

    .line 33
    :goto_1
    const/16 v8, 0x2d

    .line 34
    .line 35
    if-ne v2, v8, :cond_2

    .line 36
    .line 37
    move v9, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v9, v1

    .line 40
    :goto_2
    if-eqz v9, :cond_3

    .line 41
    .line 42
    iget v2, v0, La5/c;->e:I

    .line 43
    .line 44
    add-int/lit8 v10, v7, 0x1

    .line 45
    .line 46
    add-int/2addr v2, v7

    .line 47
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    move v7, v10

    .line 52
    :cond_3
    const/16 v10, 0x10

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, -0x1

    .line 56
    const/16 v13, 0x30

    .line 57
    .line 58
    if-lt v2, v13, :cond_12

    .line 59
    .line 60
    const/16 v14, 0x39

    .line 61
    .line 62
    if-gt v2, v14, :cond_12

    .line 63
    .line 64
    sub-int/2addr v2, v13

    .line 65
    int-to-long v1, v2

    .line 66
    :goto_3
    iget v15, v0, La5/c;->e:I

    .line 67
    .line 68
    add-int/lit8 v17, v7, 0x1

    .line 69
    .line 70
    add-int/2addr v15, v7

    .line 71
    invoke-virtual {v0, v15}, La5/c;->G0(I)C

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    const-wide/16 v18, 0xa

    .line 76
    .line 77
    if-lt v15, v13, :cond_4

    .line 78
    .line 79
    if-gt v15, v14, :cond_4

    .line 80
    .line 81
    mul-long v1, v1, v18

    .line 82
    .line 83
    add-int/lit8 v15, v15, -0x30

    .line 84
    .line 85
    int-to-long v3, v15

    .line 86
    add-long/2addr v1, v3

    .line 87
    move/from16 v7, v17

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    const/16 v4, 0x22

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/16 v3, 0x2e

    .line 94
    .line 95
    if-ne v15, v3, :cond_6

    .line 96
    .line 97
    iget v3, v0, La5/c;->e:I

    .line 98
    .line 99
    add-int/2addr v7, v6

    .line 100
    add-int v3, v3, v17

    .line 101
    .line 102
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-lt v3, v13, :cond_5

    .line 107
    .line 108
    if-gt v3, v14, :cond_5

    .line 109
    .line 110
    mul-long v1, v1, v18

    .line 111
    .line 112
    sub-int/2addr v3, v13

    .line 113
    int-to-long v3, v3

    .line 114
    add-long/2addr v1, v3

    .line 115
    move-wide/from16 v3, v18

    .line 116
    .line 117
    :goto_4
    iget v15, v0, La5/c;->e:I

    .line 118
    .line 119
    add-int/lit8 v17, v7, 0x1

    .line 120
    .line 121
    add-int/2addr v15, v7

    .line 122
    invoke-virtual {v0, v15}, La5/c;->G0(I)C

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-lt v15, v13, :cond_7

    .line 127
    .line 128
    if-gt v15, v14, :cond_7

    .line 129
    .line 130
    mul-long v1, v1, v18

    .line 131
    .line 132
    add-int/lit8 v15, v15, -0x30

    .line 133
    .line 134
    int-to-long v6, v15

    .line 135
    add-long/2addr v1, v6

    .line 136
    mul-long v3, v3, v18

    .line 137
    .line 138
    move/from16 v7, v17

    .line 139
    .line 140
    const/4 v6, 0x2

    .line 141
    goto :goto_4

    .line 142
    :cond_5
    iput v12, v0, La5/c;->n:I

    .line 143
    .line 144
    return v11

    .line 145
    :cond_6
    const-wide/16 v3, 0x1

    .line 146
    .line 147
    :cond_7
    const/16 v6, 0x65

    .line 148
    .line 149
    if-eq v15, v6, :cond_9

    .line 150
    .line 151
    const/16 v6, 0x45

    .line 152
    .line 153
    if-ne v15, v6, :cond_8

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_8
    const/16 v16, 0x0

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_9
    :goto_5
    const/16 v16, 0x1

    .line 160
    .line 161
    :goto_6
    if-eqz v16, :cond_c

    .line 162
    .line 163
    iget v6, v0, La5/c;->e:I

    .line 164
    .line 165
    add-int/lit8 v7, v17, 0x1

    .line 166
    .line 167
    add-int v6, v6, v17

    .line 168
    .line 169
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    const/16 v15, 0x2b

    .line 174
    .line 175
    if-eq v6, v15, :cond_b

    .line 176
    .line 177
    if-ne v6, v8, :cond_a

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_a
    move v15, v6

    .line 181
    :goto_7
    move/from16 v17, v7

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_b
    :goto_8
    iget v6, v0, La5/c;->e:I

    .line 185
    .line 186
    add-int/lit8 v17, v17, 0x2

    .line 187
    .line 188
    add-int/2addr v6, v7

    .line 189
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    move v15, v6

    .line 194
    :goto_9
    if-lt v15, v13, :cond_c

    .line 195
    .line 196
    if-gt v15, v14, :cond_c

    .line 197
    .line 198
    iget v6, v0, La5/c;->e:I

    .line 199
    .line 200
    add-int/lit8 v7, v17, 0x1

    .line 201
    .line 202
    add-int v6, v6, v17

    .line 203
    .line 204
    invoke-virtual {v0, v6}, La5/c;->G0(I)C

    .line 205
    .line 206
    .line 207
    move-result v15

    .line 208
    goto :goto_7

    .line 209
    :cond_c
    if-eqz v5, :cond_e

    .line 210
    .line 211
    const/16 v5, 0x22

    .line 212
    .line 213
    if-eq v15, v5, :cond_d

    .line 214
    .line 215
    iput v12, v0, La5/c;->n:I

    .line 216
    .line 217
    return v11

    .line 218
    :cond_d
    iget v5, v0, La5/c;->e:I

    .line 219
    .line 220
    add-int/lit8 v6, v17, 0x1

    .line 221
    .line 222
    add-int v5, v5, v17

    .line 223
    .line 224
    invoke-virtual {v0, v5}, La5/c;->G0(I)C

    .line 225
    .line 226
    .line 227
    move-result v15

    .line 228
    iget v5, v0, La5/c;->e:I

    .line 229
    .line 230
    add-int/lit8 v7, v5, 0x1

    .line 231
    .line 232
    add-int/2addr v5, v6

    .line 233
    sub-int/2addr v5, v7

    .line 234
    const/4 v8, 0x2

    .line 235
    sub-int/2addr v5, v8

    .line 236
    move/from16 v17, v6

    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_e
    iget v7, v0, La5/c;->e:I

    .line 240
    .line 241
    add-int v5, v7, v17

    .line 242
    .line 243
    sub-int/2addr v5, v7

    .line 244
    const/4 v6, 0x1

    .line 245
    sub-int/2addr v5, v6

    .line 246
    :goto_a
    if-nez v16, :cond_10

    .line 247
    .line 248
    const/16 v6, 0x11

    .line 249
    .line 250
    if-ge v5, v6, :cond_10

    .line 251
    .line 252
    long-to-double v1, v1

    .line 253
    long-to-double v3, v3

    .line 254
    div-double/2addr v1, v3

    .line 255
    double-to-float v1, v1

    .line 256
    if-eqz v9, :cond_f

    .line 257
    .line 258
    neg-float v1, v1

    .line 259
    :cond_f
    :goto_b
    move/from16 v2, p1

    .line 260
    .line 261
    goto :goto_c

    .line 262
    :cond_10
    invoke-virtual {v0, v7, v5}, La5/c;->r1(II)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    goto :goto_b

    .line 271
    :goto_c
    if-ne v15, v2, :cond_11

    .line 272
    .line 273
    iget v2, v0, La5/c;->e:I

    .line 274
    .line 275
    add-int v2, v2, v17

    .line 276
    .line 277
    iput v2, v0, La5/c;->e:I

    .line 278
    .line 279
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    iput-char v2, v0, La5/c;->d:C

    .line 284
    .line 285
    const/4 v2, 0x3

    .line 286
    iput v2, v0, La5/c;->n:I

    .line 287
    .line 288
    iput v10, v0, La5/c;->a:I

    .line 289
    .line 290
    return v1

    .line 291
    :cond_11
    iput v12, v0, La5/c;->n:I

    .line 292
    .line 293
    return v1

    .line 294
    :cond_12
    const/16 v1, 0x6e

    .line 295
    .line 296
    if-ne v2, v1, :cond_17

    .line 297
    .line 298
    iget v1, v0, La5/c;->e:I

    .line 299
    .line 300
    add-int/2addr v1, v7

    .line 301
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/16 v2, 0x75

    .line 306
    .line 307
    if-ne v1, v2, :cond_17

    .line 308
    .line 309
    iget v1, v0, La5/c;->e:I

    .line 310
    .line 311
    add-int/2addr v1, v7

    .line 312
    const/4 v2, 0x1

    .line 313
    add-int/2addr v1, v2

    .line 314
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    const/16 v2, 0x6c

    .line 319
    .line 320
    if-ne v1, v2, :cond_17

    .line 321
    .line 322
    iget v1, v0, La5/c;->e:I

    .line 323
    .line 324
    add-int/2addr v1, v7

    .line 325
    const/4 v3, 0x2

    .line 326
    add-int/2addr v1, v3

    .line 327
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-ne v1, v2, :cond_17

    .line 332
    .line 333
    const/4 v1, 0x5

    .line 334
    iput v1, v0, La5/c;->n:I

    .line 335
    .line 336
    add-int/lit8 v2, v7, 0x3

    .line 337
    .line 338
    iget v3, v0, La5/c;->e:I

    .line 339
    .line 340
    add-int/lit8 v4, v7, 0x4

    .line 341
    .line 342
    add-int/2addr v3, v2

    .line 343
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v5, :cond_13

    .line 348
    .line 349
    const/16 v3, 0x22

    .line 350
    .line 351
    if-ne v2, v3, :cond_13

    .line 352
    .line 353
    iget v2, v0, La5/c;->e:I

    .line 354
    .line 355
    add-int/2addr v7, v1

    .line 356
    add-int/2addr v2, v4

    .line 357
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    move v4, v7

    .line 362
    :cond_13
    :goto_d
    const/16 v3, 0x2c

    .line 363
    .line 364
    if-ne v2, v3, :cond_14

    .line 365
    .line 366
    iget v2, v0, La5/c;->e:I

    .line 367
    .line 368
    add-int/2addr v2, v4

    .line 369
    iput v2, v0, La5/c;->e:I

    .line 370
    .line 371
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    iput-char v2, v0, La5/c;->d:C

    .line 376
    .line 377
    iput v1, v0, La5/c;->n:I

    .line 378
    .line 379
    iput v10, v0, La5/c;->a:I

    .line 380
    .line 381
    return v11

    .line 382
    :cond_14
    const/16 v3, 0x5d

    .line 383
    .line 384
    if-ne v2, v3, :cond_15

    .line 385
    .line 386
    iget v2, v0, La5/c;->e:I

    .line 387
    .line 388
    add-int/2addr v2, v4

    .line 389
    iput v2, v0, La5/c;->e:I

    .line 390
    .line 391
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    iput-char v2, v0, La5/c;->d:C

    .line 396
    .line 397
    iput v1, v0, La5/c;->n:I

    .line 398
    .line 399
    const/16 v1, 0xf

    .line 400
    .line 401
    iput v1, v0, La5/c;->a:I

    .line 402
    .line 403
    return v11

    .line 404
    :cond_15
    invoke-static {v2}, La5/c;->M0(C)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_16

    .line 409
    .line 410
    iget v2, v0, La5/c;->e:I

    .line 411
    .line 412
    add-int/lit8 v3, v4, 0x1

    .line 413
    .line 414
    add-int/2addr v2, v4

    .line 415
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    move v4, v3

    .line 420
    goto :goto_d

    .line 421
    :cond_16
    iput v12, v0, La5/c;->n:I

    .line 422
    .line 423
    return v11

    .line 424
    :cond_17
    iput v12, v0, La5/c;->n:I

    .line 425
    .line 426
    return v11
.end method

.method public m1(La5/i;C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->n:I

    .line 3
    .line 4
    iget v1, p0, La5/c;->e:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x6e

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-ne v1, v2, :cond_2

    .line 17
    .line 18
    iget p1, p0, La5/c;->e:I

    .line 19
    .line 20
    add-int/2addr p1, v6

    .line 21
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 v0, 0x75

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    iget p1, p0, La5/c;->e:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x2

    .line 32
    .line 33
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/16 v0, 0x6c

    .line 38
    .line 39
    if-ne p1, v0, :cond_1

    .line 40
    .line 41
    iget p1, p0, La5/c;->e:I

    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    iget p1, p0, La5/c;->e:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x4

    .line 53
    .line 54
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ne p1, p2, :cond_0

    .line 59
    .line 60
    iget p1, p0, La5/c;->e:I

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x5

    .line 63
    .line 64
    iput p1, p0, La5/c;->e:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput-char p1, p0, La5/c;->d:C

    .line 71
    .line 72
    iput v3, p0, La5/c;->n:I

    .line 73
    .line 74
    return-object v5

    .line 75
    :cond_0
    iput v4, p0, La5/c;->n:I

    .line 76
    .line 77
    return-object v5

    .line 78
    :cond_1
    iput v4, p0, La5/c;->n:I

    .line 79
    .line 80
    return-object v5

    .line 81
    :cond_2
    const/16 v2, 0x22

    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    iput v4, p0, La5/c;->n:I

    .line 86
    .line 87
    return-object v5

    .line 88
    :cond_3
    move v1, v6

    .line 89
    :goto_0
    iget v7, p0, La5/c;->e:I

    .line 90
    .line 91
    add-int/lit8 v8, v1, 0x1

    .line 92
    .line 93
    add-int/2addr v7, v1

    .line 94
    invoke-virtual {p0, v7}, La5/c;->G0(I)C

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-ne v7, v2, :cond_6

    .line 99
    .line 100
    iget v2, p0, La5/c;->e:I

    .line 101
    .line 102
    add-int/lit8 v5, v2, 0x1

    .line 103
    .line 104
    add-int/2addr v2, v8

    .line 105
    sub-int/2addr v2, v5

    .line 106
    sub-int/2addr v2, v6

    .line 107
    invoke-virtual {p0, v5, v2, v0, p1}, La5/c;->b(IIILa5/i;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget v0, p0, La5/c;->e:I

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x2

    .line 114
    .line 115
    add-int/2addr v0, v8

    .line 116
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    :goto_1
    if-ne v0, p2, :cond_4

    .line 121
    .line 122
    iget p2, p0, La5/c;->e:I

    .line 123
    .line 124
    add-int/2addr p2, v1

    .line 125
    iput p2, p0, La5/c;->e:I

    .line 126
    .line 127
    invoke-virtual {p0, p2}, La5/c;->G0(I)C

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    iput-char p2, p0, La5/c;->d:C

    .line 132
    .line 133
    iput v3, p0, La5/c;->n:I

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_4
    invoke-static {v0}, La5/c;->M0(C)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    iget v0, p0, La5/c;->e:I

    .line 143
    .line 144
    add-int/lit8 v2, v1, 0x1

    .line 145
    .line 146
    add-int/2addr v0, v1

    .line 147
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    move v1, v2

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iput v4, p0, La5/c;->n:I

    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    .line 157
    .line 158
    add-int/2addr v0, v7

    .line 159
    const/16 v1, 0x5c

    .line 160
    .line 161
    if-ne v7, v1, :cond_7

    .line 162
    .line 163
    iput v4, p0, La5/c;->n:I

    .line 164
    .line 165
    return-object v5

    .line 166
    :cond_7
    move v1, v8

    .line 167
    goto :goto_0
.end method

.method public final n1()V
    .locals 3

    .line 1
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    const/16 v1, 0x74

    .line 4
    .line 5
    const-string v2, "error parse true"

    .line 6
    .line 7
    if-ne v0, v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, La5/c;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, La5/c;->d:C

    .line 13
    .line 14
    const/16 v1, 0x72

    .line 15
    .line 16
    if-ne v0, v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, La5/c;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, La5/c;->d:C

    .line 22
    .line 23
    const/16 v1, 0x75

    .line 24
    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, La5/c;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, La5/c;->d:C

    .line 31
    .line 32
    const/16 v1, 0x65

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, La5/c;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, La5/c;->d:C

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x2c

    .line 46
    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0x7d

    .line 50
    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    const/16 v1, 0x5d

    .line 54
    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    if-eq v0, v1, :cond_1

    .line 60
    .line 61
    const/16 v1, 0xd

    .line 62
    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    if-eq v0, v1, :cond_1

    .line 68
    .line 69
    const/16 v1, 0x1a

    .line 70
    .line 71
    if-eq v0, v1, :cond_1

    .line 72
    .line 73
    const/16 v1, 0xc

    .line 74
    .line 75
    if-eq v0, v1, :cond_1

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    if-eq v0, v1, :cond_1

    .line 80
    .line 81
    const/16 v1, 0x3a

    .line 82
    .line 83
    if-eq v0, v1, :cond_1

    .line 84
    .line 85
    const/16 v1, 0x2f

    .line 86
    .line 87
    if-ne v0, v1, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 91
    .line 92
    const-string v1, "scan true error"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_1
    :goto_0
    const/4 v0, 0x6

    .line 99
    iput v0, p0, La5/c;->a:I

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 109
    .line 110
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0
.end method

.method public abstract next()C
.end method

.method public final o(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 0

    .line 1
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, La5/c;->isEnabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public abstract o0()Ljava/lang/String;
.end method

.method public o1(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/c;->l:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-void
.end method

.method public final p()I
    .locals 12

    .line 1
    iget v0, p0, La5/c;->i:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, La5/c;->i:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, La5/c;->i:I

    .line 10
    .line 11
    iget v1, p0, La5/c;->h:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2d

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    const/high16 v3, -0x80000000

    .line 26
    .line 27
    move v4, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v3, -0x7fffffff

    .line 30
    .line 31
    .line 32
    move v4, v2

    .line 33
    :goto_0
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    add-int/lit8 v2, v0, 0x1

    .line 36
    .line 37
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x30

    .line 42
    .line 43
    neg-int v0, v0

    .line 44
    move v11, v2

    .line 45
    move v2, v0

    .line 46
    move v0, v11

    .line 47
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_7

    .line 48
    .line 49
    add-int/lit8 v6, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v7, 0x4c

    .line 56
    .line 57
    if-eq v0, v7, :cond_6

    .line 58
    .line 59
    const/16 v7, 0x53

    .line 60
    .line 61
    if-eq v0, v7, :cond_6

    .line 62
    .line 63
    const/16 v7, 0x42

    .line 64
    .line 65
    if-ne v0, v7, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    add-int/lit8 v0, v0, -0x30

    .line 69
    .line 70
    int-to-long v7, v2

    .line 71
    const-wide/32 v9, -0xccccccc

    .line 72
    .line 73
    .line 74
    cmp-long v7, v7, v9

    .line 75
    .line 76
    if-ltz v7, :cond_5

    .line 77
    .line 78
    mul-int/lit8 v2, v2, 0xa

    .line 79
    .line 80
    add-int v7, v3, v0

    .line 81
    .line 82
    if-lt v2, v7, :cond_4

    .line 83
    .line 84
    sub-int/2addr v2, v0

    .line 85
    move v0, v6

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 88
    .line 89
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 98
    .line 99
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_6
    :goto_2
    move v0, v6

    .line 108
    :cond_7
    if-eqz v4, :cond_9

    .line 109
    .line 110
    iget v1, p0, La5/c;->i:I

    .line 111
    .line 112
    add-int/2addr v1, v5

    .line 113
    if-le v0, v1, :cond_8

    .line 114
    .line 115
    return v2

    .line 116
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 117
    .line 118
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_9
    neg-int v0, v2

    .line 127
    return v0
.end method

.method public p0()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, La5/c;->l:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-object v0
.end method

.method protected p1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, La5/c;->next()C

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, La5/c;->d:C

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    if-ne v0, v2, :cond_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, La5/c;->next()C

    .line 13
    .line 14
    .line 15
    iget-char v0, p0, La5/c;->d:C

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, La5/c;->next()C

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/16 v3, 0x2a

    .line 29
    .line 30
    if-ne v0, v3, :cond_6

    .line 31
    .line 32
    invoke-virtual {p0}, La5/c;->next()C

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_0
    iget-char v0, p0, La5/c;->d:C

    .line 36
    .line 37
    if-eq v0, v1, :cond_5

    .line 38
    .line 39
    if-ne v0, v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0}, La5/c;->next()C

    .line 42
    .line 43
    .line 44
    iget-char v0, p0, La5/c;->d:C

    .line 45
    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, La5/c;->next()C

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    invoke-virtual {p0}, La5/c;->next()C

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 58
    .line 59
    const-string v1, "invalid comment"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public final q()V
    .locals 10

    .line 1
    iget v0, p0, La5/c;->e:I

    .line 2
    .line 3
    iput v0, p0, La5/c;->i:I

    .line 4
    .line 5
    iget-char v0, p0, La5/c;->d:C

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x2d

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget v0, p0, La5/c;->h:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p0, La5/c;->h:I

    .line 16
    .line 17
    invoke-virtual {p0}, La5/c;->next()C

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-char v0, p0, La5/c;->d:C

    .line 21
    .line 22
    const/16 v3, 0x39

    .line 23
    .line 24
    const/16 v4, 0x30

    .line 25
    .line 26
    if-lt v0, v4, :cond_1

    .line 27
    .line 28
    if-gt v0, v3, :cond_1

    .line 29
    .line 30
    iget v0, p0, La5/c;->h:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    iput v0, p0, La5/c;->h:I

    .line 34
    .line 35
    invoke-virtual {p0}, La5/c;->next()C

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v5, 0x2e

    .line 40
    .line 41
    if-ne v0, v5, :cond_3

    .line 42
    .line 43
    iget v0, p0, La5/c;->h:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, La5/c;->h:I

    .line 47
    .line 48
    invoke-virtual {p0}, La5/c;->next()C

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-char v0, p0, La5/c;->d:C

    .line 52
    .line 53
    if-lt v0, v4, :cond_2

    .line 54
    .line 55
    if-gt v0, v3, :cond_2

    .line 56
    .line 57
    iget v0, p0, La5/c;->h:I

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    iput v0, p0, La5/c;->h:I

    .line 61
    .line 62
    invoke-virtual {p0}, La5/c;->next()C

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v0, v1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v0, 0x0

    .line 69
    :goto_2
    iget v5, p0, La5/c;->h:I

    .line 70
    .line 71
    const v6, 0xffff

    .line 72
    .line 73
    .line 74
    if-gt v5, v6, :cond_11

    .line 75
    .line 76
    iget-char v6, p0, La5/c;->d:C

    .line 77
    .line 78
    const/16 v7, 0x4c

    .line 79
    .line 80
    if-ne v6, v7, :cond_4

    .line 81
    .line 82
    add-int/2addr v5, v1

    .line 83
    iput v5, p0, La5/c;->h:I

    .line 84
    .line 85
    invoke-virtual {p0}, La5/c;->next()C

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/16 v7, 0x53

    .line 90
    .line 91
    if-ne v6, v7, :cond_5

    .line 92
    .line 93
    add-int/2addr v5, v1

    .line 94
    iput v5, p0, La5/c;->h:I

    .line 95
    .line 96
    invoke-virtual {p0}, La5/c;->next()C

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    const/16 v7, 0x42

    .line 101
    .line 102
    if-ne v6, v7, :cond_6

    .line 103
    .line 104
    add-int/2addr v5, v1

    .line 105
    iput v5, p0, La5/c;->h:I

    .line 106
    .line 107
    invoke-virtual {p0}, La5/c;->next()C

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    const/16 v7, 0x46

    .line 112
    .line 113
    if-ne v6, v7, :cond_7

    .line 114
    .line 115
    add-int/2addr v5, v1

    .line 116
    iput v5, p0, La5/c;->h:I

    .line 117
    .line 118
    invoke-virtual {p0}, La5/c;->next()C

    .line 119
    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_7
    const/16 v8, 0x44

    .line 123
    .line 124
    if-ne v6, v8, :cond_8

    .line 125
    .line 126
    add-int/2addr v5, v1

    .line 127
    iput v5, p0, La5/c;->h:I

    .line 128
    .line 129
    invoke-virtual {p0}, La5/c;->next()C

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    const/16 v9, 0x65

    .line 134
    .line 135
    if-eq v6, v9, :cond_a

    .line 136
    .line 137
    const/16 v9, 0x45

    .line 138
    .line 139
    if-ne v6, v9, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    :goto_3
    move v1, v0

    .line 143
    goto :goto_6

    .line 144
    :cond_a
    :goto_4
    add-int/2addr v5, v1

    .line 145
    iput v5, p0, La5/c;->h:I

    .line 146
    .line 147
    invoke-virtual {p0}, La5/c;->next()C

    .line 148
    .line 149
    .line 150
    iget-char v0, p0, La5/c;->d:C

    .line 151
    .line 152
    const/16 v5, 0x2b

    .line 153
    .line 154
    if-eq v0, v5, :cond_b

    .line 155
    .line 156
    if-ne v0, v2, :cond_c

    .line 157
    .line 158
    :cond_b
    iget v0, p0, La5/c;->h:I

    .line 159
    .line 160
    add-int/2addr v0, v1

    .line 161
    iput v0, p0, La5/c;->h:I

    .line 162
    .line 163
    invoke-virtual {p0}, La5/c;->next()C

    .line 164
    .line 165
    .line 166
    :cond_c
    :goto_5
    iget-char v0, p0, La5/c;->d:C

    .line 167
    .line 168
    if-lt v0, v4, :cond_d

    .line 169
    .line 170
    if-gt v0, v3, :cond_d

    .line 171
    .line 172
    iget v0, p0, La5/c;->h:I

    .line 173
    .line 174
    add-int/2addr v0, v1

    .line 175
    iput v0, p0, La5/c;->h:I

    .line 176
    .line 177
    invoke-virtual {p0}, La5/c;->next()C

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_d
    if-eq v0, v8, :cond_e

    .line 182
    .line 183
    if-ne v0, v7, :cond_f

    .line 184
    .line 185
    :cond_e
    iget v0, p0, La5/c;->h:I

    .line 186
    .line 187
    add-int/2addr v0, v1

    .line 188
    iput v0, p0, La5/c;->h:I

    .line 189
    .line 190
    invoke-virtual {p0}, La5/c;->next()C

    .line 191
    .line 192
    .line 193
    :cond_f
    :goto_6
    if-eqz v1, :cond_10

    .line 194
    .line 195
    const/4 v0, 0x3

    .line 196
    iput v0, p0, La5/c;->a:I

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_10
    const/4 v0, 0x2

    .line 200
    iput v0, p0, La5/c;->a:I

    .line 201
    .line 202
    :goto_7
    return-void

    .line 203
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 204
    .line 205
    const-string v1, "scanNumber overflow"

    .line 206
    .line 207
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method public final q1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La5/c;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(I)V
    .locals 0

    .line 1
    const/16 p1, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, p1}, La5/c;->Q0(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r0()Ljava/lang/Number;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La5/c;->i:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iput v3, v0, La5/c;->i:I

    .line 10
    .line 11
    :cond_0
    iget v1, v0, La5/c;->i:I

    .line 12
    .line 13
    iget v2, v0, La5/c;->h:I

    .line 14
    .line 15
    add-int/2addr v2, v1

    .line 16
    add-int/lit8 v4, v2, -0x1

    .line 17
    .line 18
    invoke-virtual {v0, v4}, La5/c;->G0(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x53

    .line 23
    .line 24
    const/16 v6, 0x4c

    .line 25
    .line 26
    const/16 v7, 0x42

    .line 27
    .line 28
    if-eq v4, v7, :cond_3

    .line 29
    .line 30
    if-eq v4, v6, :cond_2

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    move v4, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    move v4, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    move v4, v7

    .line 48
    :goto_0
    iget v8, v0, La5/c;->i:I

    .line 49
    .line 50
    invoke-virtual {v0, v8}, La5/c;->G0(I)C

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const/16 v9, 0x2d

    .line 55
    .line 56
    const/4 v10, 0x1

    .line 57
    if-ne v8, v9, :cond_4

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    const-wide/high16 v8, -0x8000000000000000L

    .line 62
    .line 63
    move v3, v10

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :goto_1
    if-ge v1, v2, :cond_5

    .line 71
    .line 72
    add-int/lit8 v11, v1, 0x1

    .line 73
    .line 74
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/lit8 v1, v1, -0x30

    .line 79
    .line 80
    neg-int v1, v1

    .line 81
    int-to-long v12, v1

    .line 82
    move v1, v11

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    const-wide/16 v12, 0x0

    .line 85
    .line 86
    :goto_2
    if-ge v1, v2, :cond_8

    .line 87
    .line 88
    add-int/lit8 v11, v1, 0x1

    .line 89
    .line 90
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int/lit8 v1, v1, -0x30

    .line 95
    .line 96
    const-wide v14, -0xcccccccccccccccL

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    cmp-long v14, v12, v14

    .line 102
    .line 103
    const/16 v15, 0xa

    .line 104
    .line 105
    if-gez v14, :cond_6

    .line 106
    .line 107
    new-instance v1, Ljava/math/BigInteger;

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, La5/c;->E0()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_6
    const-wide/16 v16, 0xa

    .line 118
    .line 119
    mul-long v12, v12, v16

    .line 120
    .line 121
    int-to-long v5, v1

    .line 122
    add-long v17, v8, v5

    .line 123
    .line 124
    cmp-long v1, v12, v17

    .line 125
    .line 126
    if-gez v1, :cond_7

    .line 127
    .line 128
    new-instance v1, Ljava/math/BigInteger;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, La5/c;->E0()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-direct {v1, v2, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_7
    sub-long/2addr v12, v5

    .line 139
    move v1, v11

    .line 140
    const/16 v5, 0x53

    .line 141
    .line 142
    const/16 v6, 0x4c

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    if-eqz v3, :cond_d

    .line 146
    .line 147
    iget v2, v0, La5/c;->i:I

    .line 148
    .line 149
    add-int/2addr v2, v10

    .line 150
    if-le v1, v2, :cond_c

    .line 151
    .line 152
    const-wide/32 v1, -0x80000000

    .line 153
    .line 154
    .line 155
    cmp-long v1, v12, v1

    .line 156
    .line 157
    if-ltz v1, :cond_b

    .line 158
    .line 159
    const/16 v1, 0x4c

    .line 160
    .line 161
    if-eq v4, v1, :cond_b

    .line 162
    .line 163
    const/16 v1, 0x53

    .line 164
    .line 165
    if-ne v4, v1, :cond_9

    .line 166
    .line 167
    long-to-int v1, v12

    .line 168
    int-to-short v1, v1

    .line 169
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    return-object v1

    .line 174
    :cond_9
    if-ne v4, v7, :cond_a

    .line 175
    .line 176
    long-to-int v1, v12

    .line 177
    int-to-byte v1, v1

    .line 178
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    return-object v1

    .line 183
    :cond_a
    long-to-int v1, v12

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    return-object v1

    .line 189
    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    return-object v1

    .line 194
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 195
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v3, "illegal number format : "

    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, La5/c;->E0()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_d
    neg-long v1, v12

    .line 222
    const-wide/32 v5, 0x7fffffff

    .line 223
    .line 224
    .line 225
    cmp-long v3, v1, v5

    .line 226
    .line 227
    if-gtz v3, :cond_10

    .line 228
    .line 229
    const/16 v3, 0x4c

    .line 230
    .line 231
    if-eq v4, v3, :cond_10

    .line 232
    .line 233
    const/16 v3, 0x53

    .line 234
    .line 235
    if-ne v4, v3, :cond_e

    .line 236
    .line 237
    long-to-int v1, v1

    .line 238
    int-to-short v1, v1

    .line 239
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    return-object v1

    .line 244
    :cond_e
    if-ne v4, v7, :cond_f

    .line 245
    .line 246
    long-to-int v1, v1

    .line 247
    int-to-byte v1, v1

    .line 248
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    return-object v1

    .line 253
    :cond_f
    long-to-int v1, v1

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    return-object v1

    .line 259
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    return-object v1
.end method

.method public abstract r1(II)Ljava/lang/String;
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, La5/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public s0()F
    .locals 4

    .line 1
    invoke-virtual {p0}, La5/c;->E0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    cmpl-float v2, v1, v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 15
    .line 16
    cmpl-float v2, v1, v2

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x30

    .line 26
    .line 27
    if-le v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x39

    .line 30
    .line 31
    if-le v2, v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "float overflow : "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_2
    :goto_0
    return v1
.end method

.method protected abstract s1(II)[C
.end method

.method public final t0()I
    .locals 1

    .line 1
    iget v0, p0, La5/c;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public u(C)Ljava/math/BigDecimal;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, La5/c;->n:I

    .line 5
    .line 6
    iget v2, v0, La5/c;->e:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    move v5, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v5, v1

    .line 20
    :goto_0
    const/4 v6, 0x2

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget v2, v0, La5/c;->e:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move v7, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v7, v3

    .line 33
    :goto_1
    const/16 v8, 0x2d

    .line 34
    .line 35
    if-ne v2, v8, :cond_2

    .line 36
    .line 37
    iget v2, v0, La5/c;->e:I

    .line 38
    .line 39
    add-int/lit8 v9, v7, 0x1

    .line 40
    .line 41
    add-int/2addr v2, v7

    .line 42
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v7, v9

    .line 47
    :cond_2
    const/16 v11, 0x10

    .line 48
    .line 49
    const/16 v12, 0x2c

    .line 50
    .line 51
    const/16 v13, 0x30

    .line 52
    .line 53
    const/4 v14, -0x1

    .line 54
    const/4 v15, 0x0

    .line 55
    if-lt v2, v13, :cond_13

    .line 56
    .line 57
    const/16 v9, 0x39

    .line 58
    .line 59
    if-gt v2, v9, :cond_13

    .line 60
    .line 61
    :goto_2
    iget v2, v0, La5/c;->e:I

    .line 62
    .line 63
    add-int/lit8 v16, v7, 0x1

    .line 64
    .line 65
    add-int/2addr v2, v7

    .line 66
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lt v2, v13, :cond_3

    .line 71
    .line 72
    if-gt v2, v9, :cond_3

    .line 73
    .line 74
    move/from16 v7, v16

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/16 v10, 0x2e

    .line 78
    .line 79
    if-ne v2, v10, :cond_5

    .line 80
    .line 81
    iget v2, v0, La5/c;->e:I

    .line 82
    .line 83
    add-int/2addr v7, v6

    .line 84
    add-int v2, v2, v16

    .line 85
    .line 86
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-lt v2, v13, :cond_4

    .line 91
    .line 92
    if-gt v2, v9, :cond_4

    .line 93
    .line 94
    :goto_3
    iget v2, v0, La5/c;->e:I

    .line 95
    .line 96
    add-int/lit8 v16, v7, 0x1

    .line 97
    .line 98
    add-int/2addr v2, v7

    .line 99
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-lt v2, v13, :cond_5

    .line 104
    .line 105
    if-gt v2, v9, :cond_5

    .line 106
    .line 107
    move/from16 v7, v16

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    iput v14, v0, La5/c;->n:I

    .line 111
    .line 112
    return-object v15

    .line 113
    :cond_5
    const/16 v7, 0x65

    .line 114
    .line 115
    if-eq v2, v7, :cond_6

    .line 116
    .line 117
    const/16 v7, 0x45

    .line 118
    .line 119
    if-ne v2, v7, :cond_9

    .line 120
    .line 121
    :cond_6
    iget v2, v0, La5/c;->e:I

    .line 122
    .line 123
    add-int/lit8 v7, v16, 0x1

    .line 124
    .line 125
    add-int v2, v2, v16

    .line 126
    .line 127
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/16 v10, 0x2b

    .line 132
    .line 133
    if-eq v2, v10, :cond_8

    .line 134
    .line 135
    if-ne v2, v8, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    :goto_4
    move/from16 v16, v7

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_8
    :goto_5
    iget v2, v0, La5/c;->e:I

    .line 142
    .line 143
    add-int/lit8 v16, v16, 0x2

    .line 144
    .line 145
    add-int/2addr v2, v7

    .line 146
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    :goto_6
    if-lt v2, v13, :cond_9

    .line 151
    .line 152
    if-gt v2, v9, :cond_9

    .line 153
    .line 154
    iget v2, v0, La5/c;->e:I

    .line 155
    .line 156
    add-int/lit8 v7, v16, 0x1

    .line 157
    .line 158
    add-int v2, v2, v16

    .line 159
    .line 160
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    goto :goto_4

    .line 165
    :cond_9
    if-eqz v5, :cond_b

    .line 166
    .line 167
    if-eq v2, v4, :cond_a

    .line 168
    .line 169
    iput v14, v0, La5/c;->n:I

    .line 170
    .line 171
    return-object v15

    .line 172
    :cond_a
    iget v2, v0, La5/c;->e:I

    .line 173
    .line 174
    add-int/lit8 v3, v16, 0x1

    .line 175
    .line 176
    add-int v2, v2, v16

    .line 177
    .line 178
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iget v4, v0, La5/c;->e:I

    .line 183
    .line 184
    add-int/lit8 v5, v4, 0x1

    .line 185
    .line 186
    add-int/2addr v4, v3

    .line 187
    sub-int/2addr v4, v5

    .line 188
    sub-int/2addr v4, v6

    .line 189
    move/from16 v16, v3

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_b
    iget v5, v0, La5/c;->e:I

    .line 193
    .line 194
    add-int v4, v5, v16

    .line 195
    .line 196
    sub-int/2addr v4, v5

    .line 197
    sub-int/2addr v4, v3

    .line 198
    :goto_7
    const v3, 0xffff

    .line 199
    .line 200
    .line 201
    if-gt v4, v3, :cond_12

    .line 202
    .line 203
    invoke-virtual {v0, v5, v4}, La5/c;->s1(II)[C

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    new-instance v4, Ljava/math/BigDecimal;

    .line 208
    .line 209
    array-length v5, v3

    .line 210
    sget-object v6, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 211
    .line 212
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 213
    .line 214
    .line 215
    if-ne v2, v12, :cond_c

    .line 216
    .line 217
    iget v1, v0, La5/c;->e:I

    .line 218
    .line 219
    add-int v1, v1, v16

    .line 220
    .line 221
    iput v1, v0, La5/c;->e:I

    .line 222
    .line 223
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iput-char v1, v0, La5/c;->d:C

    .line 228
    .line 229
    const/4 v1, 0x3

    .line 230
    iput v1, v0, La5/c;->n:I

    .line 231
    .line 232
    iput v11, v0, La5/c;->a:I

    .line 233
    .line 234
    return-object v4

    .line 235
    :cond_c
    const/16 v1, 0x5d

    .line 236
    .line 237
    if-ne v2, v1, :cond_11

    .line 238
    .line 239
    iget v2, v0, La5/c;->e:I

    .line 240
    .line 241
    add-int/lit8 v3, v16, 0x1

    .line 242
    .line 243
    add-int v2, v2, v16

    .line 244
    .line 245
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-ne v2, v12, :cond_d

    .line 250
    .line 251
    iput v11, v0, La5/c;->a:I

    .line 252
    .line 253
    iget v1, v0, La5/c;->e:I

    .line 254
    .line 255
    add-int/2addr v1, v3

    .line 256
    iput v1, v0, La5/c;->e:I

    .line 257
    .line 258
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    iput-char v1, v0, La5/c;->d:C

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_d
    if-ne v2, v1, :cond_e

    .line 266
    .line 267
    const/16 v1, 0xf

    .line 268
    .line 269
    iput v1, v0, La5/c;->a:I

    .line 270
    .line 271
    iget v1, v0, La5/c;->e:I

    .line 272
    .line 273
    add-int/2addr v1, v3

    .line 274
    iput v1, v0, La5/c;->e:I

    .line 275
    .line 276
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    iput-char v1, v0, La5/c;->d:C

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_e
    const/16 v1, 0x7d

    .line 284
    .line 285
    if-ne v2, v1, :cond_f

    .line 286
    .line 287
    const/16 v1, 0xd

    .line 288
    .line 289
    iput v1, v0, La5/c;->a:I

    .line 290
    .line 291
    iget v1, v0, La5/c;->e:I

    .line 292
    .line 293
    add-int/2addr v1, v3

    .line 294
    iput v1, v0, La5/c;->e:I

    .line 295
    .line 296
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput-char v1, v0, La5/c;->d:C

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_f
    const/16 v1, 0x1a

    .line 304
    .line 305
    if-ne v2, v1, :cond_10

    .line 306
    .line 307
    const/16 v2, 0x14

    .line 308
    .line 309
    iput v2, v0, La5/c;->a:I

    .line 310
    .line 311
    iget v2, v0, La5/c;->e:I

    .line 312
    .line 313
    add-int v2, v2, v16

    .line 314
    .line 315
    iput v2, v0, La5/c;->e:I

    .line 316
    .line 317
    iput-char v1, v0, La5/c;->d:C

    .line 318
    .line 319
    :goto_8
    const/4 v1, 0x4

    .line 320
    iput v1, v0, La5/c;->n:I

    .line 321
    .line 322
    return-object v4

    .line 323
    :cond_10
    iput v14, v0, La5/c;->n:I

    .line 324
    .line 325
    return-object v15

    .line 326
    :cond_11
    iput v14, v0, La5/c;->n:I

    .line 327
    .line 328
    return-object v15

    .line 329
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 330
    .line 331
    const-string v2, "decimal overflow"

    .line 332
    .line 333
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v1

    .line 337
    :cond_13
    const/16 v1, 0x6e

    .line 338
    .line 339
    if-ne v2, v1, :cond_18

    .line 340
    .line 341
    iget v1, v0, La5/c;->e:I

    .line 342
    .line 343
    add-int/2addr v1, v7

    .line 344
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    const/16 v2, 0x75

    .line 349
    .line 350
    if-ne v1, v2, :cond_18

    .line 351
    .line 352
    iget v1, v0, La5/c;->e:I

    .line 353
    .line 354
    add-int/2addr v1, v7

    .line 355
    add-int/2addr v1, v3

    .line 356
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    const/16 v2, 0x6c

    .line 361
    .line 362
    if-ne v1, v2, :cond_18

    .line 363
    .line 364
    iget v1, v0, La5/c;->e:I

    .line 365
    .line 366
    add-int/2addr v1, v7

    .line 367
    add-int/2addr v1, v6

    .line 368
    invoke-virtual {v0, v1}, La5/c;->G0(I)C

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-ne v1, v2, :cond_18

    .line 373
    .line 374
    const/4 v1, 0x5

    .line 375
    iput v1, v0, La5/c;->n:I

    .line 376
    .line 377
    add-int/lit8 v2, v7, 0x3

    .line 378
    .line 379
    iget v3, v0, La5/c;->e:I

    .line 380
    .line 381
    add-int/lit8 v6, v7, 0x4

    .line 382
    .line 383
    add-int/2addr v3, v2

    .line 384
    invoke-virtual {v0, v3}, La5/c;->G0(I)C

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v5, :cond_14

    .line 389
    .line 390
    if-ne v2, v4, :cond_14

    .line 391
    .line 392
    iget v2, v0, La5/c;->e:I

    .line 393
    .line 394
    add-int/2addr v7, v1

    .line 395
    add-int/2addr v2, v6

    .line 396
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    move v6, v7

    .line 401
    :cond_14
    :goto_9
    if-ne v2, v12, :cond_15

    .line 402
    .line 403
    iget v2, v0, La5/c;->e:I

    .line 404
    .line 405
    add-int/2addr v2, v6

    .line 406
    iput v2, v0, La5/c;->e:I

    .line 407
    .line 408
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    iput-char v2, v0, La5/c;->d:C

    .line 413
    .line 414
    iput v1, v0, La5/c;->n:I

    .line 415
    .line 416
    iput v11, v0, La5/c;->a:I

    .line 417
    .line 418
    return-object v15

    .line 419
    :cond_15
    const/16 v3, 0x7d

    .line 420
    .line 421
    if-ne v2, v3, :cond_16

    .line 422
    .line 423
    iget v2, v0, La5/c;->e:I

    .line 424
    .line 425
    add-int/2addr v2, v6

    .line 426
    iput v2, v0, La5/c;->e:I

    .line 427
    .line 428
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    iput-char v2, v0, La5/c;->d:C

    .line 433
    .line 434
    iput v1, v0, La5/c;->n:I

    .line 435
    .line 436
    const/16 v4, 0xd

    .line 437
    .line 438
    iput v4, v0, La5/c;->a:I

    .line 439
    .line 440
    return-object v15

    .line 441
    :cond_16
    const/16 v4, 0xd

    .line 442
    .line 443
    invoke-static {v2}, La5/c;->M0(C)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_17

    .line 448
    .line 449
    iget v2, v0, La5/c;->e:I

    .line 450
    .line 451
    add-int/lit8 v5, v6, 0x1

    .line 452
    .line 453
    add-int/2addr v2, v6

    .line 454
    invoke-virtual {v0, v2}, La5/c;->G0(I)C

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    move v6, v5

    .line 459
    goto :goto_9

    .line 460
    :cond_17
    iput v14, v0, La5/c;->n:I

    .line 461
    .line 462
    return-object v15

    .line 463
    :cond_18
    iput v14, v0, La5/c;->n:I

    .line 464
    .line 465
    return-object v15
.end method

.method public u0(C)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->n:I

    .line 3
    .line 4
    iget v1, p0, La5/c;->e:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x6e

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iget v0, p0, La5/c;->e:I

    .line 18
    .line 19
    add-int/2addr v0, v5

    .line 20
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x75

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget v0, p0, La5/c;->e:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x6c

    .line 38
    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    .line 41
    iget v0, p0, La5/c;->e:I

    .line 42
    .line 43
    add-int/2addr v0, v3

    .line 44
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    iget v0, p0, La5/c;->e:I

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x4

    .line 53
    .line 54
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, p1, :cond_0

    .line 59
    .line 60
    iget p1, p0, La5/c;->e:I

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x5

    .line 63
    .line 64
    iput p1, p0, La5/c;->e:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput-char p1, p0, La5/c;->d:C

    .line 71
    .line 72
    iput v3, p0, La5/c;->n:I

    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_0
    iput v4, p0, La5/c;->n:I

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_1
    iput v4, p0, La5/c;->n:I

    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_2
    move v2, v5

    .line 82
    :goto_0
    const/16 v6, 0x22

    .line 83
    .line 84
    if-ne v1, v6, :cond_a

    .line 85
    .line 86
    iget v1, p0, La5/c;->e:I

    .line 87
    .line 88
    add-int/2addr v1, v2

    .line 89
    invoke-virtual {p0, v6, v1}, La5/c;->K0(CI)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eq v7, v4, :cond_9

    .line 94
    .line 95
    iget v8, p0, La5/c;->e:I

    .line 96
    .line 97
    add-int/2addr v8, v2

    .line 98
    sub-int v9, v7, v1

    .line 99
    .line 100
    invoke-virtual {p0, v8, v9}, La5/c;->r1(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const/16 v9, 0x5c

    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eq v10, v4, :cond_5

    .line 111
    .line 112
    :goto_1
    add-int/lit8 v8, v7, -0x1

    .line 113
    .line 114
    move v10, v0

    .line 115
    :goto_2
    if-ltz v8, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0, v8}, La5/c;->G0(I)C

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-ne v11, v9, :cond_3

    .line 122
    .line 123
    add-int/lit8 v10, v10, 0x1

    .line 124
    .line 125
    add-int/lit8 v8, v8, -0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    rem-int/lit8 v10, v10, 0x2

    .line 129
    .line 130
    if-nez v10, :cond_4

    .line 131
    .line 132
    sub-int v0, v7, v1

    .line 133
    .line 134
    iget v6, p0, La5/c;->e:I

    .line 135
    .line 136
    add-int/2addr v6, v5

    .line 137
    invoke-virtual {p0, v6, v0}, La5/c;->s1(II)[C

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v6, v0}, La5/c;->S0([CI)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 147
    .line 148
    invoke-virtual {p0, v6, v7}, La5/c;->K0(CI)I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    :goto_3
    sub-int/2addr v7, v1

    .line 154
    add-int/2addr v7, v5

    .line 155
    add-int/2addr v2, v7

    .line 156
    iget v0, p0, La5/c;->e:I

    .line 157
    .line 158
    add-int/lit8 v1, v2, 0x1

    .line 159
    .line 160
    add-int/2addr v0, v2

    .line 161
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    :goto_4
    if-ne v0, p1, :cond_6

    .line 166
    .line 167
    iget p1, p0, La5/c;->e:I

    .line 168
    .line 169
    add-int/2addr p1, v1

    .line 170
    iput p1, p0, La5/c;->e:I

    .line 171
    .line 172
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput-char p1, p0, La5/c;->d:C

    .line 177
    .line 178
    iput v3, p0, La5/c;->n:I

    .line 179
    .line 180
    const/16 p1, 0x10

    .line 181
    .line 182
    iput p1, p0, La5/c;->a:I

    .line 183
    .line 184
    return-object v8

    .line 185
    :cond_6
    invoke-static {v0}, La5/c;->M0(C)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_7

    .line 190
    .line 191
    iget v0, p0, La5/c;->e:I

    .line 192
    .line 193
    add-int/lit8 v2, v1, 0x1

    .line 194
    .line 195
    add-int/2addr v0, v1

    .line 196
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    move v1, v2

    .line 201
    goto :goto_4

    .line 202
    :cond_7
    const/16 p1, 0x5d

    .line 203
    .line 204
    if-ne v0, p1, :cond_8

    .line 205
    .line 206
    iget p1, p0, La5/c;->e:I

    .line 207
    .line 208
    add-int/2addr p1, v1

    .line 209
    iput p1, p0, La5/c;->e:I

    .line 210
    .line 211
    invoke-virtual {p0, p1}, La5/c;->G0(I)C

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iput-char p1, p0, La5/c;->d:C

    .line 216
    .line 217
    iput v4, p0, La5/c;->n:I

    .line 218
    .line 219
    :cond_8
    return-object v8

    .line 220
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 221
    .line 222
    const-string v0, "unclosed str"

    .line 223
    .line 224
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_a
    invoke-static {v1}, La5/c;->M0(C)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_b

    .line 233
    .line 234
    iget v1, p0, La5/c;->e:I

    .line 235
    .line 236
    add-int/lit8 v6, v2, 0x1

    .line 237
    .line 238
    add-int/2addr v1, v2

    .line 239
    invoke-virtual {p0, v1}, La5/c;->G0(I)C

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    move v2, v6

    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_b
    iput v4, p0, La5/c;->n:I

    .line 247
    .line 248
    invoke-virtual {p0}, La5/c;->q1()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    return-object p1
.end method

.method public final v()V
    .locals 1

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, v0}, La5/c;->Q0(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final w(La5/i;C)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x1

    .line 9
    iget v6, v0, La5/c;->e:I

    .line 10
    .line 11
    iput v6, v0, La5/c;->i:I

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    iput v6, v0, La5/c;->h:I

    .line 15
    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    move/from16 v10, p2

    .line 23
    .line 24
    if-ne v9, v10, :cond_2

    .line 25
    .line 26
    iput v4, v0, La5/c;->a:I

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    iget v2, v0, La5/c;->i:I

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    move v2, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/2addr v2, v5

    .line 38
    :goto_1
    iget v3, v0, La5/c;->h:I

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3, v8, v1}, La5/c;->b(IIILa5/i;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v2, v0, La5/c;->g:[C

    .line 46
    .line 47
    iget v3, v0, La5/c;->h:I

    .line 48
    .line 49
    invoke-virtual {v1, v2, v6, v3, v8}, La5/i;->c([CIII)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_2
    iput v6, v0, La5/c;->h:I

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_2
    const/16 v11, 0x1a

    .line 60
    .line 61
    if-eq v9, v11, :cond_11

    .line 62
    .line 63
    const/16 v11, 0x5c

    .line 64
    .line 65
    if-ne v9, v11, :cond_e

    .line 66
    .line 67
    if-nez v7, :cond_5

    .line 68
    .line 69
    iget v7, v0, La5/c;->h:I

    .line 70
    .line 71
    iget-object v9, v0, La5/c;->g:[C

    .line 72
    .line 73
    array-length v12, v9

    .line 74
    if-lt v7, v12, :cond_4

    .line 75
    .line 76
    array-length v12, v9

    .line 77
    mul-int/2addr v12, v3

    .line 78
    if-le v7, v12, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    move v7, v12

    .line 82
    :goto_3
    new-array v7, v7, [C

    .line 83
    .line 84
    array-length v12, v9

    .line 85
    invoke-static {v9, v6, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    iput-object v7, v0, La5/c;->g:[C

    .line 89
    .line 90
    :cond_4
    iget v7, v0, La5/c;->i:I

    .line 91
    .line 92
    add-int/2addr v7, v5

    .line 93
    iget-object v9, v0, La5/c;->g:[C

    .line 94
    .line 95
    iget v12, v0, La5/c;->h:I

    .line 96
    .line 97
    invoke-virtual {v0, v7, v9, v6, v12}, La5/c;->f(I[CII)V

    .line 98
    .line 99
    .line 100
    move v7, v5

    .line 101
    :cond_5
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    const/16 v12, 0x22

    .line 106
    .line 107
    if-eq v9, v12, :cond_d

    .line 108
    .line 109
    const/16 v12, 0x27

    .line 110
    .line 111
    if-eq v9, v12, :cond_c

    .line 112
    .line 113
    const/16 v12, 0x46

    .line 114
    .line 115
    if-eq v9, v12, :cond_b

    .line 116
    .line 117
    if-eq v9, v11, :cond_a

    .line 118
    .line 119
    const/16 v11, 0x62

    .line 120
    .line 121
    if-eq v9, v11, :cond_9

    .line 122
    .line 123
    const/16 v11, 0x66

    .line 124
    .line 125
    if-eq v9, v11, :cond_b

    .line 126
    .line 127
    const/16 v11, 0x6e

    .line 128
    .line 129
    if-eq v9, v11, :cond_8

    .line 130
    .line 131
    const/16 v11, 0x72

    .line 132
    .line 133
    if-eq v9, v11, :cond_7

    .line 134
    .line 135
    const/16 v11, 0x78

    .line 136
    .line 137
    if-eq v9, v11, :cond_6

    .line 138
    .line 139
    packed-switch v9, :pswitch_data_0

    .line 140
    .line 141
    .line 142
    packed-switch v9, :pswitch_data_1

    .line 143
    .line 144
    .line 145
    iput-char v9, v0, La5/c;->d:C

    .line 146
    .line 147
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 148
    .line 149
    const-string v2, "unclosed.str.lit"

    .line 150
    .line 151
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :pswitch_0
    mul-int/lit8 v8, v8, 0x1f

    .line 156
    .line 157
    const/16 v9, 0xb

    .line 158
    .line 159
    add-int/2addr v8, v9

    .line 160
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    new-instance v15, Ljava/lang/String;

    .line 182
    .line 183
    new-array v12, v4, [C

    .line 184
    .line 185
    aput-char v9, v12, v6

    .line 186
    .line 187
    aput-char v11, v12, v5

    .line 188
    .line 189
    aput-char v13, v12, v3

    .line 190
    .line 191
    aput-char v14, v12, v2

    .line 192
    .line 193
    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([C)V

    .line 194
    .line 195
    .line 196
    const/16 v9, 0x10

    .line 197
    .line 198
    invoke-static {v15, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    mul-int/lit8 v8, v8, 0x1f

    .line 203
    .line 204
    add-int/2addr v8, v9

    .line 205
    int-to-char v9, v9

    .line 206
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :pswitch_2
    mul-int/lit8 v8, v8, 0x1f

    .line 212
    .line 213
    const/16 v9, 0x9

    .line 214
    .line 215
    add-int/2addr v8, v9

    .line 216
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_3
    mul-int/lit8 v8, v8, 0x1f

    .line 222
    .line 223
    add-int/2addr v8, v9

    .line 224
    const/4 v9, 0x7

    .line 225
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :pswitch_4
    mul-int/lit8 v8, v8, 0x1f

    .line 231
    .line 232
    add-int/2addr v8, v9

    .line 233
    const/4 v9, 0x6

    .line 234
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_5
    mul-int/lit8 v8, v8, 0x1f

    .line 240
    .line 241
    add-int/2addr v8, v9

    .line 242
    const/4 v9, 0x5

    .line 243
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :pswitch_6
    mul-int/lit8 v8, v8, 0x1f

    .line 249
    .line 250
    add-int/2addr v8, v9

    .line 251
    invoke-virtual {v0, v4}, La5/c;->R0(C)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_7
    mul-int/lit8 v8, v8, 0x1f

    .line 257
    .line 258
    add-int/2addr v8, v9

    .line 259
    invoke-virtual {v0, v2}, La5/c;->R0(C)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_8
    mul-int/lit8 v8, v8, 0x1f

    .line 265
    .line 266
    add-int/2addr v8, v9

    .line 267
    invoke-virtual {v0, v3}, La5/c;->R0(C)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :pswitch_9
    mul-int/lit8 v8, v8, 0x1f

    .line 273
    .line 274
    add-int/2addr v8, v9

    .line 275
    invoke-virtual {v0, v5}, La5/c;->R0(C)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :pswitch_a
    mul-int/lit8 v8, v8, 0x1f

    .line 281
    .line 282
    add-int/2addr v8, v9

    .line 283
    invoke-virtual {v0, v6}, La5/c;->R0(C)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :pswitch_b
    mul-int/lit8 v8, v8, 0x1f

    .line 289
    .line 290
    const/16 v9, 0x2f

    .line 291
    .line 292
    add-int/2addr v8, v9

    .line 293
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_6
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    iput-char v9, v0, La5/c;->d:C

    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, La5/c;->next()C

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    iput-char v11, v0, La5/c;->d:C

    .line 309
    .line 310
    sget-object v12, La5/c;->s:[I

    .line 311
    .line 312
    aget v9, v12, v9

    .line 313
    .line 314
    const/16 v13, 0x10

    .line 315
    .line 316
    mul-int/2addr v9, v13

    .line 317
    aget v11, v12, v11

    .line 318
    .line 319
    add-int/2addr v9, v11

    .line 320
    int-to-char v9, v9

    .line 321
    mul-int/lit8 v8, v8, 0x1f

    .line 322
    .line 323
    add-int/2addr v8, v9

    .line 324
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_7
    mul-int/lit8 v8, v8, 0x1f

    .line 330
    .line 331
    const/16 v9, 0xd

    .line 332
    .line 333
    add-int/2addr v8, v9

    .line 334
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_8
    mul-int/lit8 v8, v8, 0x1f

    .line 340
    .line 341
    const/16 v9, 0xa

    .line 342
    .line 343
    add-int/2addr v8, v9

    .line 344
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_9
    mul-int/lit8 v8, v8, 0x1f

    .line 350
    .line 351
    const/16 v9, 0x8

    .line 352
    .line 353
    add-int/2addr v8, v9

    .line 354
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_a
    mul-int/lit8 v8, v8, 0x1f

    .line 360
    .line 361
    add-int/2addr v8, v11

    .line 362
    invoke-virtual {v0, v11}, La5/c;->R0(C)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_b
    mul-int/lit8 v8, v8, 0x1f

    .line 368
    .line 369
    const/16 v9, 0xc

    .line 370
    .line 371
    add-int/2addr v8, v9

    .line 372
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :cond_c
    mul-int/lit8 v8, v8, 0x1f

    .line 378
    .line 379
    add-int/2addr v8, v12

    .line 380
    invoke-virtual {v0, v12}, La5/c;->R0(C)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :cond_d
    mul-int/lit8 v8, v8, 0x1f

    .line 386
    .line 387
    add-int/2addr v8, v12

    .line 388
    invoke-virtual {v0, v12}, La5/c;->R0(C)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_e
    mul-int/lit8 v8, v8, 0x1f

    .line 394
    .line 395
    add-int/2addr v8, v9

    .line 396
    if-nez v7, :cond_f

    .line 397
    .line 398
    iget v9, v0, La5/c;->h:I

    .line 399
    .line 400
    add-int/2addr v9, v5

    .line 401
    iput v9, v0, La5/c;->h:I

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_f
    iget v11, v0, La5/c;->h:I

    .line 406
    .line 407
    iget-object v12, v0, La5/c;->g:[C

    .line 408
    .line 409
    array-length v13, v12

    .line 410
    if-ne v11, v13, :cond_10

    .line 411
    .line 412
    invoke-virtual {v0, v9}, La5/c;->R0(C)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_10
    add-int/lit8 v13, v11, 0x1

    .line 418
    .line 419
    iput v13, v0, La5/c;->h:I

    .line 420
    .line 421
    aput-char v9, v12, v11

    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 426
    .line 427
    const-string v2, "unclosed.str"

    .line 428
    .line 429
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v1

    .line 433
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, La5/c;->a:I

    .line 2
    .line 3
    invoke-static {v0}, La5/f;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final x0()V
    .locals 3

    .line 1
    :goto_0
    iget-char v0, p0, La5/c;->d:C

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0xd

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/16 v2, 0xc

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-ne v0, v2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, La5/c;->p1()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {p0}, La5/c;->next()C

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final y()Z
    .locals 5

    .line 1
    iget v0, p0, La5/c;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p0, La5/c;->i:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    add-int/2addr v0, v3

    .line 12
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    if-ne v0, v4, :cond_1

    .line 19
    .line 20
    iget v0, p0, La5/c;->i:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v4, 0x72

    .line 29
    .line 30
    if-ne v0, v4, :cond_1

    .line 31
    .line 32
    iget v0, p0, La5/c;->i:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x3

    .line 35
    .line 36
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v4, 0x65

    .line 41
    .line 42
    if-ne v0, v4, :cond_1

    .line 43
    .line 44
    iget v0, p0, La5/c;->i:I

    .line 45
    .line 46
    add-int/2addr v0, v2

    .line 47
    invoke-virtual {p0, v0}, La5/c;->G0(I)C

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v2, 0x66

    .line 52
    .line 53
    if-ne v0, v2, :cond_1

    .line 54
    .line 55
    move v1, v3

    .line 56
    :cond_1
    return v1
.end method

.method public final y0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La5/c;->h:I

    .line 3
    .line 4
    return-void
.end method
