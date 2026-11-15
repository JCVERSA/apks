.class public Lc5/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/a$a;
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String;

.field static final h:Ljava/lang/String;

.field static final i:Ljava/lang/String;

.field static final j:Ljava/lang/String;

.field static final k:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/alibaba/fastjson/util/a;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lc5/o0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-class v0, Lc5/z0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lc5/a;->d:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "L"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ";"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sput-object v1, Lc5/a;->e:Ljava/lang/String;

    .line 40
    .line 41
    const-class v1, Lc5/j1;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lc5/a;->f:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sput-object v1, Lc5/a;->g:Ljava/lang/String;

    .line 68
    .line 69
    const-class v1, Lc5/p0;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    sput-object v3, Lc5/a;->h:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lc5/a;->i:Ljava/lang/String;

    .line 100
    .line 101
    const-class v0, Lc5/e1;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lc5/a;->j:Ljava/lang/String;

    .line 108
    .line 109
    const-class v0, Lc5/i1;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lc5/a;->k:Ljava/lang/String;

    .line 116
    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/alibaba/fastjson/util/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc5/a;->a:Lcom/alibaba/fastjson/util/a;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lc5/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    return-void
.end method

.method private A(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;[Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 10
    .line 11
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v5, 0x19

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-interface {v1, v5, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 22
    .line 23
    .line 24
    sget-object v8, Lc5/a;->c:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v10, "("

    .line 32
    .line 33
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v10, Lc5/a;->k:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v10, ")Z"

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const/16 v10, 0xb6

    .line 51
    .line 52
    const-string v11, "hasPropertyFilters"

    .line 53
    .line 54
    invoke-interface {v1, v10, v8, v11, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/16 v9, 0x9a

    .line 58
    .line 59
    invoke-interface {v1, v9, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v5, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 66
    .line 67
    .line 68
    const/4 v9, 0x2

    .line 69
    invoke-interface {v1, v5, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 70
    .line 71
    .line 72
    const/4 v9, 0x3

    .line 73
    invoke-interface {v1, v5, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 74
    .line 75
    .line 76
    const/4 v9, 0x4

    .line 77
    invoke-interface {v1, v5, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 78
    .line 79
    .line 80
    const/4 v9, 0x5

    .line 81
    const/16 v11, 0x15

    .line 82
    .line 83
    invoke-interface {v1, v11, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 84
    .line 85
    .line 86
    sget-object v9, Lc5/a;->h:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v13, "(L"

    .line 94
    .line 95
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 102
    .line 103
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    const/16 v14, 0xb7

    .line 111
    .line 112
    const-string v15, "writeNoneASM"

    .line 113
    .line 114
    invoke-interface {v1, v14, v9, v15, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/16 v9, 0xb1

    .line 118
    .line 119
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 123
    .line 124
    .line 125
    const-string v4, "out"

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    invoke-interface {v1, v5, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 132
    .line 133
    .line 134
    const/16 v9, 0x5b

    .line 135
    .line 136
    const/16 v12, 0x10

    .line 137
    .line 138
    invoke-interface {v1, v12, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 139
    .line 140
    .line 141
    sget-object v9, Lc5/a;->f:Ljava/lang/String;

    .line 142
    .line 143
    const-string v14, "write"

    .line 144
    .line 145
    const-string v15, "(I)V"

    .line 146
    .line 147
    invoke-interface {v1, v10, v9, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    array-length v6, v2

    .line 151
    if-nez v6, :cond_0

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-interface {v1, v5, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 158
    .line 159
    .line 160
    const/16 v2, 0x5d

    .line 161
    .line 162
    invoke-interface {v1, v12, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v1, v10, v9, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_0
    move v9, v7

    .line 170
    :goto_0
    if-ge v9, v6, :cond_19

    .line 171
    .line 172
    add-int/lit8 v11, v6, -0x1

    .line 173
    .line 174
    if-ne v9, v11, :cond_1

    .line 175
    .line 176
    const/16 v11, 0x5d

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    const/16 v11, 0x2c

    .line 180
    .line 181
    :goto_1
    aget-object v7, v2, v9

    .line 182
    .line 183
    iget-object v12, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 184
    .line 185
    iget-object v10, v7, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    sget v10, Lc5/a$a;->h:I

    .line 191
    .line 192
    const/16 v5, 0x3a

    .line 193
    .line 194
    invoke-interface {v1, v5, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 195
    .line 196
    .line 197
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 198
    .line 199
    const/16 v5, 0x59

    .line 200
    .line 201
    if-eq v12, v10, :cond_2

    .line 202
    .line 203
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 204
    .line 205
    if-eq v12, v10, :cond_2

    .line 206
    .line 207
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 208
    .line 209
    if-ne v12, v10, :cond_3

    .line 210
    .line 211
    :cond_2
    move-object v0, v4

    .line 212
    move/from16 v20, v6

    .line 213
    .line 214
    move/from16 v21, v9

    .line 215
    .line 216
    move-object v5, v13

    .line 217
    move-object v2, v15

    .line 218
    const/16 v4, 0x19

    .line 219
    .line 220
    const/4 v6, 0x0

    .line 221
    const/4 v9, 0x1

    .line 222
    const/16 v10, 0xb6

    .line 223
    .line 224
    goto/16 :goto_12

    .line 225
    .line 226
    :cond_3
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 227
    .line 228
    if-ne v12, v10, :cond_4

    .line 229
    .line 230
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    const/16 v12, 0x19

    .line 235
    .line 236
    invoke-interface {v1, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 243
    .line 244
    .line 245
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 246
    .line 247
    const-string v7, "writeLong"

    .line 248
    .line 249
    const-string v10, "(J)V"

    .line 250
    .line 251
    const/16 v12, 0xb6

    .line 252
    .line 253
    invoke-interface {v1, v12, v5, v7, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const/16 v7, 0x10

    .line 257
    .line 258
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v1, v12, v5, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_2
    move/from16 v20, v6

    .line 265
    .line 266
    move/from16 v21, v9

    .line 267
    .line 268
    move v10, v12

    .line 269
    move-object v5, v13

    .line 270
    move-object v2, v15

    .line 271
    const/4 v6, 0x0

    .line 272
    const/4 v9, 0x1

    .line 273
    const/16 v13, 0x10

    .line 274
    .line 275
    :goto_3
    move-object v12, v0

    .line 276
    move-object v0, v4

    .line 277
    const/16 v4, 0x19

    .line 278
    .line 279
    goto/16 :goto_13

    .line 280
    .line 281
    :cond_4
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 282
    .line 283
    if-ne v12, v10, :cond_5

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    const/16 v12, 0x19

    .line 290
    .line 291
    invoke-interface {v1, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 298
    .line 299
    .line 300
    const/4 v5, 0x4

    .line 301
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 302
    .line 303
    .line 304
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 305
    .line 306
    const-string v7, "writeFloat"

    .line 307
    .line 308
    const-string v10, "(FZ)V"

    .line 309
    .line 310
    const/16 v12, 0xb6

    .line 311
    .line 312
    invoke-interface {v1, v12, v5, v7, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const/16 v7, 0x10

    .line 316
    .line 317
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v1, v12, v5, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_5
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 325
    .line 326
    if-ne v12, v10, :cond_6

    .line 327
    .line 328
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    const/16 v12, 0x19

    .line 333
    .line 334
    invoke-interface {v1, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 335
    .line 336
    .line 337
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 341
    .line 342
    .line 343
    const/4 v5, 0x4

    .line 344
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 345
    .line 346
    .line 347
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 348
    .line 349
    const-string v7, "writeDouble"

    .line 350
    .line 351
    const-string v10, "(DZ)V"

    .line 352
    .line 353
    const/16 v12, 0xb6

    .line 354
    .line 355
    invoke-interface {v1, v12, v5, v7, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/16 v7, 0x10

    .line 359
    .line 360
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v1, v12, v5, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_6
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 368
    .line 369
    if-ne v12, v10, :cond_7

    .line 370
    .line 371
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    const/16 v12, 0x19

    .line 376
    .line 377
    invoke-interface {v1, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 378
    .line 379
    .line 380
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 381
    .line 382
    .line 383
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 384
    .line 385
    .line 386
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 387
    .line 388
    const-string v7, "(Z)V"

    .line 389
    .line 390
    const/16 v10, 0xb6

    .line 391
    .line 392
    invoke-interface {v1, v10, v5, v14, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    const/16 v7, 0x10

    .line 396
    .line 397
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 398
    .line 399
    .line 400
    invoke-interface {v1, v10, v5, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_4
    move-object v12, v0

    .line 404
    move-object v0, v4

    .line 405
    move/from16 v20, v6

    .line 406
    .line 407
    move/from16 v21, v9

    .line 408
    .line 409
    move-object v5, v13

    .line 410
    move-object v2, v15

    .line 411
    :goto_5
    const/16 v4, 0x19

    .line 412
    .line 413
    const/4 v6, 0x0

    .line 414
    const/4 v9, 0x1

    .line 415
    :goto_6
    const/16 v13, 0x10

    .line 416
    .line 417
    goto/16 :goto_13

    .line 418
    .line 419
    :cond_7
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 420
    .line 421
    const/16 v5, 0xb8

    .line 422
    .line 423
    if-ne v12, v10, :cond_8

    .line 424
    .line 425
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    const/16 v12, 0x19

    .line 430
    .line 431
    invoke-interface {v1, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 432
    .line 433
    .line 434
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 435
    .line 436
    .line 437
    const-string v7, "toString"

    .line 438
    .line 439
    const-string v10, "(C)Ljava/lang/String;"

    .line 440
    .line 441
    const-string v12, "java/lang/Character"

    .line 442
    .line 443
    invoke-interface {v1, v5, v12, v7, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const/16 v10, 0x10

    .line 447
    .line 448
    invoke-interface {v1, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 449
    .line 450
    .line 451
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 452
    .line 453
    const-string v7, "writeString"

    .line 454
    .line 455
    const-string v11, "(Ljava/lang/String;C)V"

    .line 456
    .line 457
    const/16 v12, 0xb6

    .line 458
    .line 459
    invoke-interface {v1, v12, v5, v7, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    move/from16 v20, v6

    .line 463
    .line 464
    move/from16 v21, v9

    .line 465
    .line 466
    move-object v5, v13

    .line 467
    move-object v2, v15

    .line 468
    const/4 v6, 0x0

    .line 469
    const/4 v9, 0x1

    .line 470
    move v13, v10

    .line 471
    move v10, v12

    .line 472
    goto/16 :goto_3

    .line 473
    .line 474
    :cond_8
    const/16 v10, 0x10

    .line 475
    .line 476
    const-class v5, Ljava/lang/String;

    .line 477
    .line 478
    if-ne v12, v5, :cond_9

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    const/16 v12, 0x19

    .line 485
    .line 486
    invoke-interface {v1, v12, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 487
    .line 488
    .line 489
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 490
    .line 491
    .line 492
    invoke-interface {v1, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 493
    .line 494
    .line 495
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 496
    .line 497
    const-string v7, "writeString"

    .line 498
    .line 499
    const-string v10, "(Ljava/lang/String;C)V"

    .line 500
    .line 501
    const/16 v11, 0xb6

    .line 502
    .line 503
    invoke-interface {v1, v11, v5, v7, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    move/from16 v20, v6

    .line 507
    .line 508
    move/from16 v21, v9

    .line 509
    .line 510
    move v10, v11

    .line 511
    move-object v5, v13

    .line 512
    move-object v2, v15

    .line 513
    const/4 v6, 0x0

    .line 514
    const/4 v9, 0x1

    .line 515
    const/16 v13, 0x10

    .line 516
    .line 517
    move/from16 v33, v12

    .line 518
    .line 519
    move-object v12, v0

    .line 520
    move-object v0, v4

    .line 521
    move/from16 v4, v33

    .line 522
    .line 523
    goto/16 :goto_13

    .line 524
    .line 525
    :cond_9
    const/16 v5, 0x19

    .line 526
    .line 527
    const/16 v10, 0xb6

    .line 528
    .line 529
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    .line 530
    .line 531
    .line 532
    move-result v16

    .line 533
    if-eqz v16, :cond_a

    .line 534
    .line 535
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    move-result v12

    .line 539
    invoke-interface {v1, v5, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 540
    .line 541
    .line 542
    const/16 v5, 0x59

    .line 543
    .line 544
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 545
    .line 546
    .line 547
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 548
    .line 549
    .line 550
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 551
    .line 552
    const-string v7, "writeEnum"

    .line 553
    .line 554
    const-string v12, "(Ljava/lang/Enum;)V"

    .line 555
    .line 556
    invoke-interface {v1, v10, v5, v7, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    const/16 v7, 0x10

    .line 560
    .line 561
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v1, v10, v5, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_4

    .line 568
    .line 569
    :cond_a
    const-class v5, Ljava/util/List;

    .line 570
    .line 571
    invoke-virtual {v5, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 572
    .line 573
    .line 574
    move-result v5

    .line 575
    const-string v10, "writeWithFieldName"

    .line 576
    .line 577
    if-eqz v5, :cond_15

    .line 578
    .line 579
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 580
    .line 581
    instance-of v12, v5, Ljava/lang/Class;

    .line 582
    .line 583
    if-eqz v12, :cond_b

    .line 584
    .line 585
    const-class v5, Ljava/lang/Object;

    .line 586
    .line 587
    goto :goto_7

    .line 588
    :cond_b
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 589
    .line 590
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    const/4 v12, 0x0

    .line 595
    aget-object v5, v5, v12

    .line 596
    .line 597
    :goto_7
    instance-of v12, v5, Ljava/lang/Class;

    .line 598
    .line 599
    if-eqz v12, :cond_c

    .line 600
    .line 601
    move-object v12, v5

    .line 602
    check-cast v12, Ljava/lang/Class;

    .line 603
    .line 604
    const-class v2, Ljava/lang/Object;

    .line 605
    .line 606
    if-ne v12, v2, :cond_d

    .line 607
    .line 608
    :cond_c
    const/4 v12, 0x0

    .line 609
    :cond_d
    invoke-direct {v0, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 610
    .line 611
    .line 612
    const/16 v2, 0xc0

    .line 613
    .line 614
    move/from16 v20, v6

    .line 615
    .line 616
    const-string v6, "java/util/List"

    .line 617
    .line 618
    invoke-interface {v1, v2, v6}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    const-string v2, "list"

    .line 622
    .line 623
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    move/from16 v21, v9

    .line 628
    .line 629
    const/16 v9, 0x3a

    .line 630
    .line 631
    invoke-interface {v1, v9, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 632
    .line 633
    .line 634
    const-class v6, Ljava/lang/String;

    .line 635
    .line 636
    if-ne v12, v6, :cond_e

    .line 637
    .line 638
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 639
    .line 640
    .line 641
    move-result v6

    .line 642
    if-eqz v6, :cond_e

    .line 643
    .line 644
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    const/16 v6, 0x19

    .line 649
    .line 650
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    invoke-interface {v1, v6, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 658
    .line 659
    .line 660
    sget-object v2, Lc5/a;->f:Ljava/lang/String;

    .line 661
    .line 662
    const-string v5, "(Ljava/util/List;)V"

    .line 663
    .line 664
    const/16 v6, 0xb6

    .line 665
    .line 666
    invoke-interface {v1, v6, v2, v14, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    move-object v0, v4

    .line 670
    move v4, v6

    .line 671
    move/from16 v22, v11

    .line 672
    .line 673
    move-object v5, v13

    .line 674
    move-object v9, v15

    .line 675
    const/16 v2, 0x15

    .line 676
    .line 677
    const/16 v6, 0x19

    .line 678
    .line 679
    const/16 v7, 0x10

    .line 680
    .line 681
    goto/16 :goto_e

    .line 682
    .line 683
    :cond_e
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 684
    .line 685
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 686
    .line 687
    .line 688
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 689
    .line 690
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 691
    .line 692
    .line 693
    move/from16 v22, v11

    .line 694
    .line 695
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    move-result v11

    .line 699
    move-object/from16 v23, v10

    .line 700
    .line 701
    const/16 v10, 0x19

    .line 702
    .line 703
    invoke-interface {v1, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 704
    .line 705
    .line 706
    const/16 v11, 0xc7

    .line 707
    .line 708
    invoke-interface {v1, v11, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 712
    .line 713
    .line 714
    move-result v11

    .line 715
    invoke-interface {v1, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 716
    .line 717
    .line 718
    sget-object v11, Lc5/a;->f:Ljava/lang/String;

    .line 719
    .line 720
    const-string v10, "writeNull"

    .line 721
    .line 722
    move-object/from16 v18, v5

    .line 723
    .line 724
    const-string v5, "()V"

    .line 725
    .line 726
    move-object/from16 v24, v8

    .line 727
    .line 728
    const/16 v8, 0xb6

    .line 729
    .line 730
    invoke-interface {v1, v8, v11, v10, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    const/16 v5, 0xa7

    .line 734
    .line 735
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 736
    .line 737
    .line 738
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    move-result v5

    .line 745
    const/16 v8, 0x19

    .line 746
    .line 747
    invoke-interface {v1, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 748
    .line 749
    .line 750
    const-string v5, "size"

    .line 751
    .line 752
    const-string v9, "()I"

    .line 753
    .line 754
    const-string v10, "java/util/List"

    .line 755
    .line 756
    const/16 v8, 0xb9

    .line 757
    .line 758
    invoke-interface {v1, v8, v10, v5, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    const-string v5, "size"

    .line 762
    .line 763
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v5

    .line 767
    const/16 v8, 0x36

    .line 768
    .line 769
    invoke-interface {v1, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    const/16 v8, 0x19

    .line 777
    .line 778
    invoke-interface {v1, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 779
    .line 780
    .line 781
    const/16 v5, 0x5b

    .line 782
    .line 783
    const/16 v8, 0x10

    .line 784
    .line 785
    invoke-interface {v1, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 786
    .line 787
    .line 788
    const/16 v5, 0xb6

    .line 789
    .line 790
    invoke-interface {v1, v5, v11, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 794
    .line 795
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 796
    .line 797
    .line 798
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 799
    .line 800
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 801
    .line 802
    .line 803
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 804
    .line 805
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 806
    .line 807
    .line 808
    const/4 v10, 0x3

    .line 809
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 810
    .line 811
    .line 812
    const/16 v10, 0x36

    .line 813
    .line 814
    move-object/from16 v25, v6

    .line 815
    .line 816
    const-string v6, "i"

    .line 817
    .line 818
    move-object/from16 v26, v13

    .line 819
    .line 820
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 821
    .line 822
    .line 823
    move-result v13

    .line 824
    invoke-interface {v1, v10, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 825
    .line 826
    .line 827
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 831
    .line 832
    .line 833
    move-result v10

    .line 834
    const/16 v13, 0x15

    .line 835
    .line 836
    invoke-interface {v1, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 837
    .line 838
    .line 839
    const-string v10, "size"

    .line 840
    .line 841
    invoke-virtual {v3, v10}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v10

    .line 845
    invoke-interface {v1, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 846
    .line 847
    .line 848
    const/16 v10, 0xa2

    .line 849
    .line 850
    invoke-interface {v1, v10, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    move-result v10

    .line 857
    invoke-interface {v1, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 858
    .line 859
    .line 860
    const/16 v10, 0x99

    .line 861
    .line 862
    invoke-interface {v1, v10, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    move-result v10

    .line 869
    const/16 v13, 0x19

    .line 870
    .line 871
    invoke-interface {v1, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 872
    .line 873
    .line 874
    const/16 v10, 0x2c

    .line 875
    .line 876
    const/16 v13, 0x10

    .line 877
    .line 878
    invoke-interface {v1, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 879
    .line 880
    .line 881
    const/16 v10, 0xb6

    .line 882
    .line 883
    invoke-interface {v1, v10, v11, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 890
    .line 891
    .line 892
    move-result v2

    .line 893
    const/16 v8, 0x19

    .line 894
    .line 895
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 899
    .line 900
    .line 901
    move-result v2

    .line 902
    const/16 v8, 0x15

    .line 903
    .line 904
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 905
    .line 906
    .line 907
    const-string v2, "get"

    .line 908
    .line 909
    const-string v8, "(I)Ljava/lang/Object;"

    .line 910
    .line 911
    const-string v10, "java/util/List"

    .line 912
    .line 913
    const/16 v13, 0xb9

    .line 914
    .line 915
    invoke-interface {v1, v13, v10, v2, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    const-string v2, "list_item"

    .line 919
    .line 920
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    move-result v8

    .line 924
    const/16 v10, 0x3a

    .line 925
    .line 926
    invoke-interface {v1, v10, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 927
    .line 928
    .line 929
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 930
    .line 931
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 932
    .line 933
    .line 934
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 935
    .line 936
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 940
    .line 941
    .line 942
    move-result v13

    .line 943
    move-object/from16 v27, v15

    .line 944
    .line 945
    const/16 v15, 0x19

    .line 946
    .line 947
    invoke-interface {v1, v15, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 948
    .line 949
    .line 950
    const/16 v13, 0xc7

    .line 951
    .line 952
    invoke-interface {v1, v13, v10}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 956
    .line 957
    .line 958
    move-result v13

    .line 959
    invoke-interface {v1, v15, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 960
    .line 961
    .line 962
    const-string v13, "writeNull"

    .line 963
    .line 964
    const-string v15, "()V"

    .line 965
    .line 966
    move-object/from16 v28, v4

    .line 967
    .line 968
    const/16 v4, 0xb6

    .line 969
    .line 970
    invoke-interface {v1, v4, v11, v13, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    const/16 v4, 0xa7

    .line 974
    .line 975
    invoke-interface {v1, v4, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 976
    .line 977
    .line 978
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 979
    .line 980
    .line 981
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 982
    .line 983
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 984
    .line 985
    .line 986
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 987
    .line 988
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 989
    .line 990
    .line 991
    if-eqz v12, :cond_12

    .line 992
    .line 993
    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    .line 994
    .line 995
    .line 996
    move-result v13

    .line 997
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 998
    .line 999
    .line 1000
    move-result v13

    .line 1001
    if-eqz v13, :cond_12

    .line 1002
    .line 1003
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1004
    .line 1005
    .line 1006
    move-result v13

    .line 1007
    const/16 v15, 0x19

    .line 1008
    .line 1009
    invoke-interface {v1, v15, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1010
    .line 1011
    .line 1012
    const-string v13, "getClass"

    .line 1013
    .line 1014
    const-string v15, "()Ljava/lang/Class;"

    .line 1015
    .line 1016
    move-object/from16 v29, v11

    .line 1017
    .line 1018
    const-string v11, "java/lang/Object"

    .line 1019
    .line 1020
    move-object/from16 v30, v9

    .line 1021
    .line 1022
    const/16 v9, 0xb6

    .line 1023
    .line 1024
    invoke-interface {v1, v9, v11, v13, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v9

    .line 1031
    invoke-static {v9}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v9

    .line 1035
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    const/16 v9, 0xa6

    .line 1039
    .line 1040
    invoke-interface {v1, v9, v10}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-direct {v0, v3, v1, v7, v12}, Lc5/a;->k(Lc5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V

    .line 1044
    .line 1045
    .line 1046
    const-string v9, "list_item_desc"

    .line 1047
    .line 1048
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1049
    .line 1050
    .line 1051
    move-result v11

    .line 1052
    const/16 v13, 0x3a

    .line 1053
    .line 1054
    invoke-interface {v1, v13, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1055
    .line 1056
    .line 1057
    new-instance v11, Lcom/alibaba/fastjson/asm/f;

    .line 1058
    .line 1059
    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1060
    .line 1061
    .line 1062
    new-instance v13, Lcom/alibaba/fastjson/asm/f;

    .line 1063
    .line 1064
    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v15

    .line 1071
    if-eqz v15, :cond_10

    .line 1072
    .line 1073
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1074
    .line 1075
    .line 1076
    move-result v15

    .line 1077
    const/16 v0, 0x19

    .line 1078
    .line 1079
    invoke-interface {v1, v0, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1080
    .line 1081
    .line 1082
    sget-object v15, Lc5/a;->h:Ljava/lang/String;

    .line 1083
    .line 1084
    const/16 v0, 0xc1

    .line 1085
    .line 1086
    invoke-interface {v1, v0, v15}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    const/16 v0, 0x99

    .line 1090
    .line 1091
    invoke-interface {v1, v0, v11}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    move-object/from16 v17, v5

    .line 1099
    .line 1100
    const/16 v5, 0x19

    .line 1101
    .line 1102
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1103
    .line 1104
    .line 1105
    const/16 v0, 0xc0

    .line 1106
    .line 1107
    invoke-interface {v1, v0, v15}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    const/4 v0, 0x1

    .line 1111
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1119
    .line 1120
    .line 1121
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v0

    .line 1125
    if-eqz v0, :cond_f

    .line 1126
    .line 1127
    const/4 v0, 0x1

    .line 1128
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1129
    .line 1130
    .line 1131
    move-object/from16 v31, v8

    .line 1132
    .line 1133
    move-object/from16 v32, v10

    .line 1134
    .line 1135
    goto :goto_8

    .line 1136
    :cond_f
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1137
    .line 1138
    .line 1139
    move-result v0

    .line 1140
    const/16 v5, 0x15

    .line 1141
    .line 1142
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1143
    .line 1144
    .line 1145
    const-string v0, "valueOf"

    .line 1146
    .line 1147
    const-string v5, "(I)Ljava/lang/Integer;"

    .line 1148
    .line 1149
    move-object/from16 v31, v8

    .line 1150
    .line 1151
    const-string v8, "java/lang/Integer"

    .line 1152
    .line 1153
    move-object/from16 v32, v10

    .line 1154
    .line 1155
    const/16 v10, 0xb8

    .line 1156
    .line 1157
    invoke-interface {v1, v10, v8, v0, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    :goto_8
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1169
    .line 1170
    .line 1171
    iget v0, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 1172
    .line 1173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    move-object/from16 v5, v26

    .line 1186
    .line 1187
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    sget-object v8, Lc5/a;->c:Ljava/lang/String;

    .line 1191
    .line 1192
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    move-object/from16 v8, v24

    .line 1196
    .line 1197
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    const-string v10, "writeAsArrayNonContext"

    .line 1205
    .line 1206
    move-object/from16 v24, v4

    .line 1207
    .line 1208
    const/16 v4, 0xb6

    .line 1209
    .line 1210
    invoke-interface {v1, v4, v15, v10, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    const/16 v0, 0xa7

    .line 1214
    .line 1215
    invoke-interface {v1, v0, v13}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-interface {v1, v11}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1219
    .line 1220
    .line 1221
    goto :goto_9

    .line 1222
    :cond_10
    move-object/from16 v17, v5

    .line 1223
    .line 1224
    move-object/from16 v31, v8

    .line 1225
    .line 1226
    move-object/from16 v32, v10

    .line 1227
    .line 1228
    move-object/from16 v8, v24

    .line 1229
    .line 1230
    move-object/from16 v5, v26

    .line 1231
    .line 1232
    move-object/from16 v24, v4

    .line 1233
    .line 1234
    :goto_9
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    const/16 v4, 0x19

    .line 1239
    .line 1240
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1241
    .line 1242
    .line 1243
    const/4 v0, 0x1

    .line 1244
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1248
    .line 1249
    .line 1250
    move-result v9

    .line 1251
    invoke-interface {v1, v4, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1252
    .line 1253
    .line 1254
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v4

    .line 1258
    if-eqz v4, :cond_11

    .line 1259
    .line 1260
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_a

    .line 1264
    :cond_11
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1265
    .line 1266
    .line 1267
    move-result v0

    .line 1268
    const/16 v4, 0x15

    .line 1269
    .line 1270
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1271
    .line 1272
    .line 1273
    const-string v0, "valueOf"

    .line 1274
    .line 1275
    const-string v4, "(I)Ljava/lang/Integer;"

    .line 1276
    .line 1277
    const-string v9, "java/lang/Integer"

    .line 1278
    .line 1279
    const/16 v10, 0xb8

    .line 1280
    .line 1281
    invoke-interface {v1, v10, v9, v0, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    :goto_a
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1293
    .line 1294
    .line 1295
    iget v0, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 1296
    .line 1297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1302
    .line 1303
    .line 1304
    sget-object v0, Lc5/a;->d:Ljava/lang/String;

    .line 1305
    .line 1306
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    sget-object v9, Lc5/a;->c:Ljava/lang/String;

    .line 1315
    .line 1316
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v4

    .line 1326
    const/16 v9, 0xb9

    .line 1327
    .line 1328
    invoke-interface {v1, v9, v0, v14, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1332
    .line 1333
    .line 1334
    move-object/from16 v4, v24

    .line 1335
    .line 1336
    const/16 v0, 0xa7

    .line 1337
    .line 1338
    invoke-interface {v1, v0, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1339
    .line 1340
    .line 1341
    move-object/from16 v0, v32

    .line 1342
    .line 1343
    goto :goto_b

    .line 1344
    :cond_12
    move-object/from16 v17, v5

    .line 1345
    .line 1346
    move-object/from16 v31, v8

    .line 1347
    .line 1348
    move-object/from16 v30, v9

    .line 1349
    .line 1350
    move-object/from16 v29, v11

    .line 1351
    .line 1352
    move-object/from16 v8, v24

    .line 1353
    .line 1354
    move-object/from16 v5, v26

    .line 1355
    .line 1356
    move-object v0, v10

    .line 1357
    :goto_b
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1358
    .line 1359
    .line 1360
    const/16 v0, 0x19

    .line 1361
    .line 1362
    const/4 v9, 0x1

    .line 1363
    invoke-interface {v1, v0, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1367
    .line 1368
    .line 1369
    move-result v2

    .line 1370
    invoke-interface {v1, v0, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1371
    .line 1372
    .line 1373
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v0

    .line 1377
    if-eqz v0, :cond_13

    .line 1378
    .line 1379
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1380
    .line 1381
    .line 1382
    const/16 v2, 0x15

    .line 1383
    .line 1384
    goto :goto_c

    .line 1385
    :cond_13
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1386
    .line 1387
    .line 1388
    move-result v0

    .line 1389
    const/16 v2, 0x15

    .line 1390
    .line 1391
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1392
    .line 1393
    .line 1394
    const-string v0, "valueOf"

    .line 1395
    .line 1396
    const-string v9, "(I)Ljava/lang/Integer;"

    .line 1397
    .line 1398
    const-string v10, "java/lang/Integer"

    .line 1399
    .line 1400
    const/16 v11, 0xb8

    .line 1401
    .line 1402
    invoke-interface {v1, v11, v10, v0, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    :goto_c
    if-eqz v12, :cond_14

    .line 1406
    .line 1407
    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-eqz v0, :cond_14

    .line 1416
    .line 1417
    move-object/from16 v0, v18

    .line 1418
    .line 1419
    check-cast v0, Ljava/lang/Class;

    .line 1420
    .line 1421
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v0

    .line 1425
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1430
    .line 1431
    .line 1432
    iget v0, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 1433
    .line 1434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1439
    .line 1440
    .line 1441
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 1442
    .line 1443
    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 1444
    .line 1445
    move-object/from16 v10, v23

    .line 1446
    .line 1447
    const/16 v9, 0xb6

    .line 1448
    .line 1449
    invoke-interface {v1, v9, v0, v10, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_d

    .line 1453
    :cond_14
    move-object/from16 v10, v23

    .line 1454
    .line 1455
    const/16 v9, 0xb6

    .line 1456
    .line 1457
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 1458
    .line 1459
    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 1460
    .line 1461
    invoke-interface {v1, v9, v0, v10, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    :goto_d
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1465
    .line 1466
    .line 1467
    move-object/from16 v0, v31

    .line 1468
    .line 1469
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1473
    .line 1474
    .line 1475
    move-result v0

    .line 1476
    const/4 v4, 0x1

    .line 1477
    invoke-interface {v1, v0, v4}, Lcom/alibaba/fastjson/asm/h;->e(II)V

    .line 1478
    .line 1479
    .line 1480
    move-object/from16 v4, v17

    .line 1481
    .line 1482
    const/16 v0, 0xa7

    .line 1483
    .line 1484
    invoke-interface {v1, v0, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1485
    .line 1486
    .line 1487
    move-object/from16 v0, v30

    .line 1488
    .line 1489
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1490
    .line 1491
    .line 1492
    move-object/from16 v0, v28

    .line 1493
    .line 1494
    invoke-virtual {v3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1495
    .line 1496
    .line 1497
    move-result v4

    .line 1498
    const/16 v6, 0x19

    .line 1499
    .line 1500
    invoke-interface {v1, v6, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1501
    .line 1502
    .line 1503
    const/16 v4, 0x5d

    .line 1504
    .line 1505
    const/16 v7, 0x10

    .line 1506
    .line 1507
    invoke-interface {v1, v7, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1508
    .line 1509
    .line 1510
    move-object/from16 v9, v27

    .line 1511
    .line 1512
    move-object/from16 v10, v29

    .line 1513
    .line 1514
    const/16 v4, 0xb6

    .line 1515
    .line 1516
    invoke-interface {v1, v4, v10, v14, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    move-object/from16 v10, v25

    .line 1520
    .line 1521
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1522
    .line 1523
    .line 1524
    :goto_e
    invoke-virtual {v3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1525
    .line 1526
    .line 1527
    move-result v10

    .line 1528
    invoke-interface {v1, v6, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1529
    .line 1530
    .line 1531
    move/from16 v11, v22

    .line 1532
    .line 1533
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1534
    .line 1535
    .line 1536
    sget-object v6, Lc5/a;->f:Ljava/lang/String;

    .line 1537
    .line 1538
    invoke-interface {v1, v4, v6, v14, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    move-object/from16 v12, p0

    .line 1542
    .line 1543
    move v10, v4

    .line 1544
    move-object v2, v9

    .line 1545
    goto/16 :goto_5

    .line 1546
    .line 1547
    :cond_15
    move-object v0, v4

    .line 1548
    move/from16 v20, v6

    .line 1549
    .line 1550
    move/from16 v21, v9

    .line 1551
    .line 1552
    move-object v5, v13

    .line 1553
    move-object v9, v15

    .line 1554
    const/16 v2, 0x15

    .line 1555
    .line 1556
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 1557
    .line 1558
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1559
    .line 1560
    .line 1561
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 1562
    .line 1563
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1564
    .line 1565
    .line 1566
    move-object/from16 v13, p0

    .line 1567
    .line 1568
    invoke-direct {v13, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 1569
    .line 1570
    .line 1571
    const/16 v15, 0x59

    .line 1572
    .line 1573
    invoke-interface {v1, v15}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1574
    .line 1575
    .line 1576
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    const-string v2, "field_"

    .line 1582
    .line 1583
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    move-object/from16 v27, v9

    .line 1587
    .line 1588
    iget-object v9, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 1589
    .line 1590
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v9

    .line 1594
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v9

    .line 1601
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1602
    .line 1603
    .line 1604
    move-result v9

    .line 1605
    const/16 v15, 0x3a

    .line 1606
    .line 1607
    invoke-interface {v1, v15, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1608
    .line 1609
    .line 1610
    const/16 v9, 0xc7

    .line 1611
    .line 1612
    invoke-interface {v1, v9, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {v3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1616
    .line 1617
    .line 1618
    move-result v9

    .line 1619
    const/16 v15, 0x19

    .line 1620
    .line 1621
    invoke-interface {v1, v15, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1622
    .line 1623
    .line 1624
    sget-object v9, Lc5/a;->f:Ljava/lang/String;

    .line 1625
    .line 1626
    const-string v15, "writeNull"

    .line 1627
    .line 1628
    move/from16 v22, v11

    .line 1629
    .line 1630
    const-string v11, "()V"

    .line 1631
    .line 1632
    move-object/from16 v28, v0

    .line 1633
    .line 1634
    const/16 v0, 0xb6

    .line 1635
    .line 1636
    invoke-interface {v1, v0, v9, v15, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    .line 1638
    .line 1639
    const/16 v0, 0xa7

    .line 1640
    .line 1641
    invoke-interface {v1, v0, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1642
    .line 1643
    .line 1644
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1645
    .line 1646
    .line 1647
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 1648
    .line 1649
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1650
    .line 1651
    .line 1652
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 1653
    .line 1654
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1655
    .line 1656
    .line 1657
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1660
    .line 1661
    .line 1662
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    .line 1664
    .line 1665
    iget-object v15, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 1666
    .line 1667
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v15

    .line 1671
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v11

    .line 1678
    invoke-virtual {v3, v11}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1679
    .line 1680
    .line 1681
    move-result v11

    .line 1682
    const/16 v15, 0x19

    .line 1683
    .line 1684
    invoke-interface {v1, v15, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1685
    .line 1686
    .line 1687
    const-string v11, "getClass"

    .line 1688
    .line 1689
    const-string v15, "()Ljava/lang/Class;"

    .line 1690
    .line 1691
    move-object/from16 v18, v9

    .line 1692
    .line 1693
    const-string v9, "java/lang/Object"

    .line 1694
    .line 1695
    move-object/from16 v19, v4

    .line 1696
    .line 1697
    const/16 v4, 0xb6

    .line 1698
    .line 1699
    invoke-interface {v1, v4, v9, v11, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v4

    .line 1706
    invoke-static {v4}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v4

    .line 1710
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1711
    .line 1712
    .line 1713
    const/16 v4, 0xa6

    .line 1714
    .line 1715
    invoke-interface {v1, v4, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1716
    .line 1717
    .line 1718
    invoke-direct {v13, v3, v1, v7}, Lc5/a;->j(Lc5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 1719
    .line 1720
    .line 1721
    const-string v4, "fied_ser"

    .line 1722
    .line 1723
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1724
    .line 1725
    .line 1726
    move-result v4

    .line 1727
    const/16 v9, 0x3a

    .line 1728
    .line 1729
    invoke-interface {v1, v9, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1730
    .line 1731
    .line 1732
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 1733
    .line 1734
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1735
    .line 1736
    .line 1737
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 1738
    .line 1739
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1740
    .line 1741
    .line 1742
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v11

    .line 1746
    if-eqz v11, :cond_16

    .line 1747
    .line 1748
    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    .line 1749
    .line 1750
    .line 1751
    move-result v11

    .line 1752
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v11

    .line 1756
    if-eqz v11, :cond_16

    .line 1757
    .line 1758
    const-string v11, "fied_ser"

    .line 1759
    .line 1760
    invoke-virtual {v3, v11}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1761
    .line 1762
    .line 1763
    move-result v11

    .line 1764
    const/16 v15, 0x19

    .line 1765
    .line 1766
    invoke-interface {v1, v15, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1767
    .line 1768
    .line 1769
    sget-object v11, Lc5/a;->h:Ljava/lang/String;

    .line 1770
    .line 1771
    const/16 v15, 0xc1

    .line 1772
    .line 1773
    invoke-interface {v1, v15, v11}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1774
    .line 1775
    .line 1776
    const/16 v15, 0x99

    .line 1777
    .line 1778
    invoke-interface {v1, v15, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1779
    .line 1780
    .line 1781
    const-string v15, "fied_ser"

    .line 1782
    .line 1783
    invoke-virtual {v3, v15}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1784
    .line 1785
    .line 1786
    move-result v15

    .line 1787
    const/16 v13, 0x19

    .line 1788
    .line 1789
    invoke-interface {v1, v13, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1790
    .line 1791
    .line 1792
    const/16 v15, 0xc0

    .line 1793
    .line 1794
    invoke-interface {v1, v15, v11}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1795
    .line 1796
    .line 1797
    const/4 v15, 0x1

    .line 1798
    invoke-interface {v1, v13, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1799
    .line 1800
    .line 1801
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1802
    .line 1803
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    iget-object v13, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 1810
    .line 1811
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v13

    .line 1815
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    .line 1817
    .line 1818
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v13

    .line 1822
    invoke-virtual {v3, v13}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1823
    .line 1824
    .line 1825
    move-result v13

    .line 1826
    const/16 v15, 0x19

    .line 1827
    .line 1828
    invoke-interface {v1, v15, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1829
    .line 1830
    .line 1831
    sget v13, Lc5/a$a;->h:I

    .line 1832
    .line 1833
    invoke-interface {v1, v15, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1834
    .line 1835
    .line 1836
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v13

    .line 1840
    invoke-static {v13}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v13

    .line 1844
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1845
    .line 1846
    .line 1847
    iget v13, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 1848
    .line 1849
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v13

    .line 1853
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1854
    .line 1855
    .line 1856
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    .line 1863
    .line 1864
    sget-object v15, Lc5/a;->c:Ljava/lang/String;

    .line 1865
    .line 1866
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    .line 1868
    .line 1869
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    .line 1871
    .line 1872
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v13

    .line 1876
    const-string v15, "writeAsArrayNonContext"

    .line 1877
    .line 1878
    move-object/from16 v23, v10

    .line 1879
    .line 1880
    const/16 v10, 0xb6

    .line 1881
    .line 1882
    invoke-interface {v1, v10, v11, v15, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    const/16 v10, 0xa7

    .line 1886
    .line 1887
    invoke-interface {v1, v10, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1888
    .line 1889
    .line 1890
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1891
    .line 1892
    .line 1893
    goto :goto_f

    .line 1894
    :cond_16
    move-object/from16 v23, v10

    .line 1895
    .line 1896
    :goto_f
    const-string v4, "fied_ser"

    .line 1897
    .line 1898
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1899
    .line 1900
    .line 1901
    move-result v4

    .line 1902
    const/16 v10, 0x19

    .line 1903
    .line 1904
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1905
    .line 1906
    .line 1907
    const/4 v4, 0x1

    .line 1908
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1909
    .line 1910
    .line 1911
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1912
    .line 1913
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    .line 1918
    .line 1919
    iget-object v11, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 1920
    .line 1921
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v11

    .line 1925
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v4

    .line 1932
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1933
    .line 1934
    .line 1935
    move-result v4

    .line 1936
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1937
    .line 1938
    .line 1939
    sget v4, Lc5/a$a;->h:I

    .line 1940
    .line 1941
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1942
    .line 1943
    .line 1944
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v4

    .line 1948
    invoke-static {v4}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v4

    .line 1952
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1953
    .line 1954
    .line 1955
    iget v4, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 1956
    .line 1957
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v4

    .line 1961
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1962
    .line 1963
    .line 1964
    sget-object v4, Lc5/a;->d:Ljava/lang/String;

    .line 1965
    .line 1966
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1967
    .line 1968
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    .line 1973
    .line 1974
    sget-object v11, Lc5/a;->c:Ljava/lang/String;

    .line 1975
    .line 1976
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    .line 1981
    .line 1982
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v10

    .line 1986
    const/16 v12, 0xb9

    .line 1987
    .line 1988
    invoke-interface {v1, v12, v4, v14, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    .line 1990
    .line 1991
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1992
    .line 1993
    .line 1994
    const/16 v4, 0xa7

    .line 1995
    .line 1996
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1997
    .line 1998
    .line 1999
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/d;->k()Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v4

    .line 2006
    const/16 v6, 0x19

    .line 2007
    .line 2008
    const/4 v9, 0x1

    .line 2009
    invoke-interface {v1, v6, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2010
    .line 2011
    .line 2012
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2013
    .line 2014
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2015
    .line 2016
    .line 2017
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    .line 2019
    .line 2020
    iget-object v2, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 2021
    .line 2022
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v2

    .line 2026
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    .line 2028
    .line 2029
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v2

    .line 2033
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 2034
    .line 2035
    .line 2036
    move-result v2

    .line 2037
    invoke-interface {v1, v6, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2038
    .line 2039
    .line 2040
    if-eqz v4, :cond_17

    .line 2041
    .line 2042
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 2043
    .line 2044
    .line 2045
    const-string v2, "writeWithFormat"

    .line 2046
    .line 2047
    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;)V"

    .line 2048
    .line 2049
    const/16 v10, 0xb6

    .line 2050
    .line 2051
    invoke-interface {v1, v10, v11, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    .line 2053
    .line 2054
    :goto_10
    const/4 v6, 0x0

    .line 2055
    goto :goto_11

    .line 2056
    :cond_17
    const/16 v10, 0xb6

    .line 2057
    .line 2058
    sget v2, Lc5/a$a;->h:I

    .line 2059
    .line 2060
    invoke-interface {v1, v6, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2061
    .line 2062
    .line 2063
    iget-object v2, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 2064
    .line 2065
    instance-of v4, v2, Ljava/lang/Class;

    .line 2066
    .line 2067
    if-eqz v4, :cond_18

    .line 2068
    .line 2069
    check-cast v2, Ljava/lang/Class;

    .line 2070
    .line 2071
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 2072
    .line 2073
    .line 2074
    move-result v2

    .line 2075
    if-eqz v2, :cond_18

    .line 2076
    .line 2077
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 2078
    .line 2079
    move-object/from16 v4, v23

    .line 2080
    .line 2081
    invoke-interface {v1, v10, v11, v4, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    .line 2083
    .line 2084
    goto :goto_10

    .line 2085
    :cond_18
    move-object/from16 v4, v23

    .line 2086
    .line 2087
    const/16 v2, 0x19

    .line 2088
    .line 2089
    const/4 v6, 0x0

    .line 2090
    invoke-interface {v1, v2, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2091
    .line 2092
    .line 2093
    invoke-static/range {p4 .. p4}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v2

    .line 2097
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2098
    .line 2099
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2100
    .line 2101
    .line 2102
    iget-object v12, v7, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 2103
    .line 2104
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    .line 2106
    .line 2107
    const-string v12, "_asm_fieldType"

    .line 2108
    .line 2109
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v10

    .line 2116
    const-string v12, "Ljava/lang/reflect/Type;"

    .line 2117
    .line 2118
    const/16 v13, 0xb4

    .line 2119
    .line 2120
    invoke-interface {v1, v13, v2, v10, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    .line 2122
    .line 2123
    iget v2, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 2124
    .line 2125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v2

    .line 2129
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 2130
    .line 2131
    .line 2132
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 2133
    .line 2134
    const/16 v10, 0xb6

    .line 2135
    .line 2136
    invoke-interface {v1, v10, v11, v4, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    .line 2138
    .line 2139
    :goto_11
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 2140
    .line 2141
    .line 2142
    move-object/from16 v0, v19

    .line 2143
    .line 2144
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 2145
    .line 2146
    .line 2147
    move-object/from16 v0, v28

    .line 2148
    .line 2149
    invoke-virtual {v3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 2150
    .line 2151
    .line 2152
    move-result v2

    .line 2153
    const/16 v4, 0x19

    .line 2154
    .line 2155
    invoke-interface {v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2156
    .line 2157
    .line 2158
    move/from16 v11, v22

    .line 2159
    .line 2160
    const/16 v2, 0x10

    .line 2161
    .line 2162
    invoke-interface {v1, v2, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2163
    .line 2164
    .line 2165
    move-object/from16 v7, v18

    .line 2166
    .line 2167
    move-object/from16 v2, v27

    .line 2168
    .line 2169
    invoke-interface {v1, v10, v7, v14, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    .line 2171
    .line 2172
    move-object/from16 v12, p0

    .line 2173
    .line 2174
    goto/16 :goto_6

    .line 2175
    .line 2176
    :goto_12
    invoke-virtual {v3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 2177
    .line 2178
    .line 2179
    move-result v12

    .line 2180
    invoke-interface {v1, v4, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2181
    .line 2182
    .line 2183
    const/16 v12, 0x59

    .line 2184
    .line 2185
    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 2186
    .line 2187
    .line 2188
    move-object/from16 v12, p0

    .line 2189
    .line 2190
    invoke-direct {v12, v1, v3, v7}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 2191
    .line 2192
    .line 2193
    sget-object v7, Lc5/a;->f:Ljava/lang/String;

    .line 2194
    .line 2195
    const-string v13, "writeInt"

    .line 2196
    .line 2197
    invoke-interface {v1, v10, v7, v13, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    .line 2199
    .line 2200
    const/16 v13, 0x10

    .line 2201
    .line 2202
    invoke-interface {v1, v13, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 2203
    .line 2204
    .line 2205
    invoke-interface {v1, v10, v7, v14, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    .line 2207
    .line 2208
    :goto_13
    add-int/lit8 v7, v21, 0x1

    .line 2209
    .line 2210
    move-object v15, v2

    .line 2211
    move v9, v7

    .line 2212
    const/16 v11, 0x15

    .line 2213
    .line 2214
    move-object/from16 v2, p3

    .line 2215
    .line 2216
    move v7, v6

    .line 2217
    move/from16 v6, v20

    .line 2218
    .line 2219
    move/from16 v33, v4

    .line 2220
    .line 2221
    move-object v4, v0

    .line 2222
    move-object v0, v12

    .line 2223
    move v12, v13

    .line 2224
    move-object v13, v5

    .line 2225
    move/from16 v5, v33

    .line 2226
    .line 2227
    goto/16 :goto_0

    .line 2228
    .line 2229
    :cond_19
    move-object v12, v0

    .line 2230
    return-void
.end method

.method private B(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;[Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v11, p4

    .line 10
    .line 11
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    .line 12
    .line 13
    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v13, v10

    .line 17
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 22
    .line 23
    const-string v2, "(I)Z"

    .line 24
    .line 25
    const-string v3, "isEnabled"

    .line 26
    .line 27
    const-string v14, "write"

    .line 28
    .line 29
    const-string v4, "(L"

    .line 30
    .line 31
    const-string v5, "out"

    .line 32
    .line 33
    const/16 v15, 0x19

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 43
    .line 44
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 45
    .line 46
    .line 47
    move-object/from16 v19, v12

    .line 48
    .line 49
    invoke-virtual {v11, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    invoke-interface {v9, v15, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 54
    .line 55
    .line 56
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 57
    .line 58
    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 59
    .line 60
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-interface {v9, v12}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object v12, Lc5/a;->f:Ljava/lang/String;

    .line 68
    .line 69
    const/16 v15, 0xb6

    .line 70
    .line 71
    invoke-interface {v9, v15, v12, v3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/16 v12, 0x9a

    .line 75
    .line 76
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    array-length v12, v10

    .line 80
    const/4 v15, 0x0

    .line 81
    :goto_0
    if-ge v15, v12, :cond_1

    .line 82
    .line 83
    move/from16 v20, v12

    .line 84
    .line 85
    aget-object v12, v10, v15

    .line 86
    .line 87
    iget-object v12, v12, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    invoke-virtual {v11, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    const/16 v15, 0x19

    .line 96
    .line 97
    invoke-interface {v9, v15, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 98
    .line 99
    .line 100
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 101
    .line 102
    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 103
    .line 104
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-interface {v9, v12}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object v12, Lc5/a;->f:Ljava/lang/String;

    .line 112
    .line 113
    const/16 v15, 0xb6

    .line 114
    .line 115
    invoke-interface {v9, v15, v12, v3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v12, 0x99

    .line 119
    .line 120
    invoke-interface {v9, v12, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 125
    .line 126
    move/from16 v12, v20

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const/16 v12, 0xa7

    .line 130
    .line 131
    invoke-interface {v9, v12, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 135
    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    const/16 v12, 0x19

    .line 139
    .line 140
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 141
    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 145
    .line 146
    .line 147
    const/4 v6, 0x2

    .line 148
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 149
    .line 150
    .line 151
    const/4 v6, 0x3

    .line 152
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 153
    .line 154
    .line 155
    const/4 v6, 0x4

    .line 156
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 157
    .line 158
    .line 159
    const/4 v6, 0x5

    .line 160
    const/16 v12, 0x15

    .line 161
    .line 162
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 163
    .line 164
    .line 165
    sget-object v6, Lc5/a;->h:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    sget-object v15, Lc5/a;->c:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    const/16 v15, 0xb7

    .line 188
    .line 189
    invoke-interface {v9, v15, v6, v14, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v6, 0xb1

    .line 193
    .line 194
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_2
    move-object/from16 v19, v12

    .line 202
    .line 203
    :goto_2
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_3

    .line 208
    .line 209
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 210
    .line 211
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 212
    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    const/16 v12, 0x19

    .line 216
    .line 217
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 218
    .line 219
    .line 220
    const/4 v6, 0x1

    .line 221
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 222
    .line 223
    .line 224
    const/4 v6, 0x2

    .line 225
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 226
    .line 227
    .line 228
    const/4 v6, 0x5

    .line 229
    const/16 v12, 0x15

    .line 230
    .line 231
    invoke-interface {v9, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 232
    .line 233
    .line 234
    sget-object v6, Lc5/a;->h:Ljava/lang/String;

    .line 235
    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    sget-object v15, Lc5/a;->c:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v15, ";Ljava/lang/Object;I)Z"

    .line 250
    .line 251
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    const-string v15, "writeReference"

    .line 259
    .line 260
    const/16 v8, 0xb6

    .line 261
    .line 262
    invoke-interface {v9, v8, v6, v15, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const/16 v6, 0x99

    .line 266
    .line 267
    invoke-interface {v9, v6, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 268
    .line 269
    .line 270
    const/16 v6, 0xb1

    .line 271
    .line 272
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 276
    .line 277
    .line 278
    :cond_3
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_5

    .line 283
    .line 284
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_4

    .line 289
    .line 290
    const-string v0, "writeAsArrayNonContext"

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_4
    const-string v0, "writeAsArray"

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_5
    const-string v0, "writeAsArrayNormal"

    .line 297
    .line 298
    :goto_3
    invoke-static/range {p4 .. p4}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    iget v6, v6, Lc5/f1;->g:I

    .line 303
    .line 304
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 305
    .line 306
    iget v12, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 307
    .line 308
    and-int/2addr v6, v12

    .line 309
    if-nez v6, :cond_6

    .line 310
    .line 311
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 312
    .line 313
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    const/16 v15, 0x19

    .line 321
    .line 322
    invoke-interface {v9, v15, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 323
    .line 324
    .line 325
    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 326
    .line 327
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    invoke-interface {v9, v8}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    sget-object v8, Lc5/a;->f:Ljava/lang/String;

    .line 335
    .line 336
    const/16 v12, 0xb6

    .line 337
    .line 338
    invoke-interface {v9, v12, v8, v3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const/16 v2, 0x99

    .line 342
    .line 343
    invoke-interface {v9, v2, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 344
    .line 345
    .line 346
    const/4 v2, 0x0

    .line 347
    invoke-interface {v9, v15, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 348
    .line 349
    .line 350
    const/4 v2, 0x1

    .line 351
    invoke-interface {v9, v15, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x2

    .line 355
    invoke-interface {v9, v15, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 356
    .line 357
    .line 358
    const/4 v2, 0x3

    .line 359
    invoke-interface {v9, v15, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 360
    .line 361
    .line 362
    const/4 v2, 0x4

    .line 363
    invoke-interface {v9, v15, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 364
    .line 365
    .line 366
    const/4 v2, 0x5

    .line 367
    const/16 v3, 0x15

    .line 368
    .line 369
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 370
    .line 371
    .line 372
    invoke-static/range {p4 .. p4}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    sget-object v8, Lc5/a;->c:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    const/16 v3, 0xb6

    .line 397
    .line 398
    invoke-interface {v9, v3, v2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const/16 v0, 0xb1

    .line 402
    .line 403
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 407
    .line 408
    .line 409
    const/16 v6, 0x15

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_6
    const/4 v2, 0x0

    .line 413
    const/16 v3, 0x19

    .line 414
    .line 415
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 416
    .line 417
    .line 418
    const/4 v2, 0x1

    .line 419
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 420
    .line 421
    .line 422
    const/4 v2, 0x2

    .line 423
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 424
    .line 425
    .line 426
    const/4 v2, 0x3

    .line 427
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 428
    .line 429
    .line 430
    const/4 v2, 0x4

    .line 431
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 432
    .line 433
    .line 434
    const/4 v2, 0x5

    .line 435
    const/16 v6, 0x15

    .line 436
    .line 437
    invoke-interface {v9, v6, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 438
    .line 439
    .line 440
    invoke-static/range {p4 .. p4}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    sget-object v8, Lc5/a;->c:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    const/16 v3, 0xb6

    .line 465
    .line 466
    invoke-interface {v9, v3, v2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const/16 v0, 0xb1

    .line 470
    .line 471
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 472
    .line 473
    .line 474
    :goto_4
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    const-string v8, "parent"

    .line 479
    .line 480
    const-string v12, "("

    .line 481
    .line 482
    if-nez v0, :cond_7

    .line 483
    .line 484
    const/4 v0, 0x1

    .line 485
    const/16 v1, 0x19

    .line 486
    .line 487
    invoke-interface {v9, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 488
    .line 489
    .line 490
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 491
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v2, "()"

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    sget-object v2, Lc5/a;->j:Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    const-string v3, "getContext"

    .line 512
    .line 513
    const/16 v15, 0xb6

    .line 514
    .line 515
    invoke-interface {v9, v15, v0, v3, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v11, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    const/16 v3, 0x3a

    .line 523
    .line 524
    invoke-interface {v9, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 525
    .line 526
    .line 527
    const/4 v1, 0x1

    .line 528
    const/16 v3, 0x19

    .line 529
    .line 530
    invoke-interface {v9, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v11, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    invoke-interface {v9, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 538
    .line 539
    .line 540
    const/4 v1, 0x2

    .line 541
    invoke-interface {v9, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 542
    .line 543
    .line 544
    const/4 v1, 0x3

    .line 545
    invoke-interface {v9, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 546
    .line 547
    .line 548
    invoke-static/range {p4 .. p4}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    iget v1, v1, Lc5/f1;->g:I

    .line 553
    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v2, "Ljava/lang/Object;Ljava/lang/Object;I)V"

    .line 573
    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    const-string v2, "setContext"

    .line 582
    .line 583
    const/16 v3, 0xb6

    .line 584
    .line 585
    invoke-interface {v9, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    :cond_7
    invoke-static/range {p4 .. p4}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    iget v0, v0, Lc5/f1;->g:I

    .line 593
    .line 594
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 595
    .line 596
    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 597
    .line 598
    and-int/2addr v0, v1

    .line 599
    if-eqz v0, :cond_8

    .line 600
    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_5

    .line 603
    :cond_8
    const/4 v0, 0x0

    .line 604
    :goto_5
    const/16 v15, 0x7b

    .line 605
    .line 606
    const/16 v3, 0x10

    .line 607
    .line 608
    if-nez v0, :cond_a

    .line 609
    .line 610
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    if-nez v1, :cond_9

    .line 615
    .line 616
    goto :goto_6

    .line 617
    :cond_9
    invoke-interface {v9, v3, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 618
    .line 619
    .line 620
    move-object/from16 v18, v8

    .line 621
    .line 622
    goto/16 :goto_b

    .line 623
    .line 624
    :cond_a
    :goto_6
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 625
    .line 626
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 627
    .line 628
    .line 629
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 630
    .line 631
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 632
    .line 633
    .line 634
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 635
    .line 636
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 637
    .line 638
    .line 639
    if-nez v0, :cond_b

    .line 640
    .line 641
    const/4 v0, 0x1

    .line 642
    const/16 v3, 0x19

    .line 643
    .line 644
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 645
    .line 646
    .line 647
    const/4 v0, 0x4

    .line 648
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 649
    .line 650
    .line 651
    const/4 v15, 0x2

    .line 652
    invoke-interface {v9, v3, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 653
    .line 654
    .line 655
    sget-object v15, Lc5/a;->c:Ljava/lang/String;

    .line 656
    .line 657
    const-string v0, "isWriteClassName"

    .line 658
    .line 659
    const-string v3, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    .line 660
    .line 661
    move-object/from16 v18, v8

    .line 662
    .line 663
    const/16 v8, 0xb6

    .line 664
    .line 665
    invoke-interface {v9, v8, v15, v0, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    const/16 v0, 0x99

    .line 669
    .line 670
    invoke-interface {v9, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 671
    .line 672
    .line 673
    :goto_7
    const/4 v0, 0x4

    .line 674
    const/16 v3, 0x19

    .line 675
    .line 676
    goto :goto_8

    .line 677
    :cond_b
    move-object/from16 v18, v8

    .line 678
    .line 679
    const/16 v8, 0xb6

    .line 680
    .line 681
    goto :goto_7

    .line 682
    :goto_8
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 683
    .line 684
    .line 685
    const/4 v0, 0x2

    .line 686
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 687
    .line 688
    .line 689
    const-string v0, "getClass"

    .line 690
    .line 691
    const-string v15, "()Ljava/lang/Class;"

    .line 692
    .line 693
    const-string v3, "java/lang/Object"

    .line 694
    .line 695
    invoke-interface {v9, v8, v3, v0, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    const/16 v0, 0xa5

    .line 699
    .line 700
    invoke-interface {v9, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 701
    .line 702
    .line 703
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v11, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    const/16 v3, 0x19

    .line 711
    .line 712
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 713
    .line 714
    .line 715
    const/16 v0, 0x7b

    .line 716
    .line 717
    const/16 v6, 0x10

    .line 718
    .line 719
    invoke-interface {v9, v6, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 720
    .line 721
    .line 722
    sget-object v0, Lc5/a;->f:Ljava/lang/String;

    .line 723
    .line 724
    const-string v6, "(I)V"

    .line 725
    .line 726
    invoke-interface {v9, v8, v0, v14, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    const/4 v0, 0x0

    .line 730
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 731
    .line 732
    .line 733
    const/4 v0, 0x1

    .line 734
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 735
    .line 736
    .line 737
    invoke-static/range {p4 .. p4}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 738
    .line 739
    .line 740
    move-result-object v6

    .line 741
    iget-object v6, v6, Lc5/f1;->c:Ljava/lang/String;

    .line 742
    .line 743
    if-eqz v6, :cond_c

    .line 744
    .line 745
    invoke-static/range {p4 .. p4}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 746
    .line 747
    .line 748
    move-result-object v6

    .line 749
    iget-object v6, v6, Lc5/f1;->c:Ljava/lang/String;

    .line 750
    .line 751
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    :goto_9
    const/4 v0, 0x2

    .line 755
    goto :goto_a

    .line 756
    :cond_c
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 757
    .line 758
    .line 759
    goto :goto_9

    .line 760
    :goto_a
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 761
    .line 762
    .line 763
    sget-object v0, Lc5/a;->h:Ljava/lang/String;

    .line 764
    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    sget-object v4, Lc5/a;->c:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    const-string v4, ";Ljava/lang/String;Ljava/lang/Object;)V"

    .line 779
    .line 780
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    const-string v4, "writeClassName"

    .line 788
    .line 789
    const/16 v6, 0xb6

    .line 790
    .line 791
    invoke-interface {v9, v6, v0, v4, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    const/16 v0, 0x2c

    .line 795
    .line 796
    const/16 v3, 0x10

    .line 797
    .line 798
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 799
    .line 800
    .line 801
    const/16 v0, 0xa7

    .line 802
    .line 803
    invoke-interface {v9, v0, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 804
    .line 805
    .line 806
    invoke-interface {v9, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 807
    .line 808
    .line 809
    const/16 v0, 0x7b

    .line 810
    .line 811
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 812
    .line 813
    .line 814
    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 815
    .line 816
    .line 817
    :goto_b
    const-string v0, "seperator"

    .line 818
    .line 819
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    const/16 v1, 0x36

    .line 824
    .line 825
    invoke-interface {v9, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 826
    .line 827
    .line 828
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-nez v0, :cond_d

    .line 833
    .line 834
    invoke-direct {v7, v9, v11}, Lc5/a;->c(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 835
    .line 836
    .line 837
    :cond_d
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    if-nez v0, :cond_e

    .line 842
    .line 843
    invoke-virtual {v11, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    const/16 v2, 0x19

    .line 848
    .line 849
    invoke-interface {v9, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 850
    .line 851
    .line 852
    sget-object v0, Lc5/a;->f:Ljava/lang/String;

    .line 853
    .line 854
    const-string v4, "isNotWriteDefaultValue"

    .line 855
    .line 856
    const-string v6, "()Z"

    .line 857
    .line 858
    const/16 v8, 0xb6

    .line 859
    .line 860
    invoke-interface {v9, v8, v0, v4, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    const-string v0, "notWriteDefaultValue"

    .line 864
    .line 865
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    invoke-interface {v9, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 870
    .line 871
    .line 872
    const/4 v0, 0x1

    .line 873
    invoke-interface {v9, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 874
    .line 875
    .line 876
    const/4 v0, 0x0

    .line 877
    invoke-interface {v9, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 878
    .line 879
    .line 880
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 881
    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    sget-object v4, Lc5/a;->k:Ljava/lang/String;

    .line 891
    .line 892
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    const-string v6, ")Z"

    .line 896
    .line 897
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    const-string v6, "checkValue"

    .line 905
    .line 906
    const/16 v8, 0xb6

    .line 907
    .line 908
    invoke-interface {v9, v8, v0, v6, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    const-string v2, "checkValue"

    .line 912
    .line 913
    invoke-virtual {v11, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    invoke-interface {v9, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 918
    .line 919
    .line 920
    const/16 v2, 0x19

    .line 921
    .line 922
    const/4 v6, 0x1

    .line 923
    invoke-interface {v9, v2, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 924
    .line 925
    .line 926
    const/4 v8, 0x0

    .line 927
    invoke-interface {v9, v2, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 928
    .line 929
    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    const-string v4, ")Z"

    .line 942
    .line 943
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    const-string v4, "hasNameFilters"

    .line 951
    .line 952
    const/16 v15, 0xb6

    .line 953
    .line 954
    invoke-interface {v9, v15, v0, v4, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    const-string v0, "hasNameFilters"

    .line 958
    .line 959
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    invoke-interface {v9, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 964
    .line 965
    .line 966
    goto :goto_c

    .line 967
    :cond_e
    const/4 v6, 0x1

    .line 968
    const/4 v8, 0x0

    .line 969
    goto/16 :goto_10

    .line 970
    .line 971
    :goto_c
    if-ge v8, v13, :cond_1a

    .line 972
    .line 973
    aget-object v4, v10, v8

    .line 974
    .line 975
    iget-object v0, v4, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 976
    .line 977
    iget-object v1, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 978
    .line 979
    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 980
    .line 981
    .line 982
    const/16 v1, 0x3a

    .line 983
    .line 984
    sget v2, Lc5/a$a;->h:I

    .line 985
    .line 986
    invoke-interface {v9, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 987
    .line 988
    .line 989
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 990
    .line 991
    if-eq v0, v1, :cond_f

    .line 992
    .line 993
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 994
    .line 995
    if-eq v0, v1, :cond_f

    .line 996
    .line 997
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 998
    .line 999
    if-ne v0, v1, :cond_10

    .line 1000
    .line 1001
    :cond_f
    move-object/from16 v15, p1

    .line 1002
    .line 1003
    move-object/from16 v21, v5

    .line 1004
    .line 1005
    const/16 v10, 0x15

    .line 1006
    .line 1007
    goto/16 :goto_e

    .line 1008
    .line 1009
    :cond_10
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 1010
    .line 1011
    if-ne v0, v1, :cond_11

    .line 1012
    .line 1013
    move-object/from16 v2, p1

    .line 1014
    .line 1015
    invoke-direct {v7, v2, v9, v4, v11}, Lc5/a;->p(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1016
    .line 1017
    .line 1018
    :goto_d
    move-object v15, v2

    .line 1019
    move-object/from16 v21, v5

    .line 1020
    .line 1021
    const/16 v10, 0x15

    .line 1022
    .line 1023
    goto/16 :goto_f

    .line 1024
    .line 1025
    :cond_11
    move-object/from16 v2, p1

    .line 1026
    .line 1027
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 1028
    .line 1029
    if-ne v0, v1, :cond_12

    .line 1030
    .line 1031
    invoke-direct {v7, v2, v9, v4, v11}, Lc5/a;->h(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_d

    .line 1035
    :cond_12
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 1036
    .line 1037
    if-ne v0, v1, :cond_13

    .line 1038
    .line 1039
    invoke-direct {v7, v2, v9, v4, v11}, Lc5/a;->e(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_d

    .line 1043
    :cond_13
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1044
    .line 1045
    if-ne v0, v1, :cond_14

    .line 1046
    .line 1047
    const-string v0, "boolean"

    .line 1048
    .line 1049
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v16

    .line 1053
    const/16 v17, 0x5a

    .line 1054
    .line 1055
    move-object/from16 v0, p0

    .line 1056
    .line 1057
    move-object/from16 v1, p1

    .line 1058
    .line 1059
    move-object v15, v2

    .line 1060
    move-object/from16 v2, p2

    .line 1061
    .line 1062
    move-object v3, v4

    .line 1063
    move-object/from16 v4, p4

    .line 1064
    .line 1065
    move-object/from16 v21, v5

    .line 1066
    .line 1067
    const/16 v10, 0x15

    .line 1068
    .line 1069
    move/from16 v5, v16

    .line 1070
    .line 1071
    move/from16 v6, v17

    .line 1072
    .line 1073
    invoke-direct/range {v0 .. v6}, Lc5/a;->m(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;IC)V

    .line 1074
    .line 1075
    .line 1076
    goto/16 :goto_f

    .line 1077
    .line 1078
    :cond_14
    move-object v15, v2

    .line 1079
    move-object/from16 v21, v5

    .line 1080
    .line 1081
    const/16 v10, 0x15

    .line 1082
    .line 1083
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 1084
    .line 1085
    if-ne v0, v1, :cond_15

    .line 1086
    .line 1087
    const-string v0, "char"

    .line 1088
    .line 1089
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1090
    .line 1091
    .line 1092
    move-result v5

    .line 1093
    const/16 v6, 0x43

    .line 1094
    .line 1095
    move-object/from16 v0, p0

    .line 1096
    .line 1097
    move-object/from16 v1, p1

    .line 1098
    .line 1099
    move-object/from16 v2, p2

    .line 1100
    .line 1101
    move-object v3, v4

    .line 1102
    move-object/from16 v4, p4

    .line 1103
    .line 1104
    invoke-direct/range {v0 .. v6}, Lc5/a;->m(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;IC)V

    .line 1105
    .line 1106
    .line 1107
    goto :goto_f

    .line 1108
    :cond_15
    const-class v1, Ljava/lang/String;

    .line 1109
    .line 1110
    if-ne v0, v1, :cond_16

    .line 1111
    .line 1112
    invoke-direct {v7, v15, v9, v4, v11}, Lc5/a;->w(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1113
    .line 1114
    .line 1115
    goto :goto_f

    .line 1116
    :cond_16
    const-class v1, Ljava/math/BigDecimal;

    .line 1117
    .line 1118
    if-ne v0, v1, :cond_17

    .line 1119
    .line 1120
    invoke-direct {v7, v15, v9, v4, v11}, Lc5/a;->d(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_f

    .line 1124
    :cond_17
    const-class v1, Ljava/util/List;

    .line 1125
    .line 1126
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v1

    .line 1130
    if-eqz v1, :cond_18

    .line 1131
    .line 1132
    invoke-direct {v7, v15, v9, v4, v11}, Lc5/a;->o(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1133
    .line 1134
    .line 1135
    goto :goto_f

    .line 1136
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 1137
    .line 1138
    .line 1139
    move-result v0

    .line 1140
    if-eqz v0, :cond_19

    .line 1141
    .line 1142
    invoke-direct {v7, v15, v9, v4, v11}, Lc5/a;->f(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_f

    .line 1146
    :cond_19
    invoke-direct {v7, v15, v9, v4, v11}, Lc5/a;->s(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1147
    .line 1148
    .line 1149
    goto :goto_f

    .line 1150
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1155
    .line 1156
    .line 1157
    move-result v5

    .line 1158
    const/16 v6, 0x49

    .line 1159
    .line 1160
    move-object/from16 v0, p0

    .line 1161
    .line 1162
    move-object/from16 v1, p1

    .line 1163
    .line 1164
    move-object/from16 v2, p2

    .line 1165
    .line 1166
    move-object v3, v4

    .line 1167
    move-object/from16 v4, p4

    .line 1168
    .line 1169
    invoke-direct/range {v0 .. v6}, Lc5/a;->m(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;IC)V

    .line 1170
    .line 1171
    .line 1172
    :goto_f
    add-int/lit8 v8, v8, 0x1

    .line 1173
    .line 1174
    move-object/from16 v10, p3

    .line 1175
    .line 1176
    move-object/from16 v5, v21

    .line 1177
    .line 1178
    const/16 v3, 0x10

    .line 1179
    .line 1180
    const/4 v6, 0x1

    .line 1181
    :goto_10
    const/16 v15, 0xb6

    .line 1182
    .line 1183
    goto/16 :goto_c

    .line 1184
    .line 1185
    :cond_1a
    move-object/from16 v21, v5

    .line 1186
    .line 1187
    const/16 v10, 0x15

    .line 1188
    .line 1189
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    if-nez v0, :cond_1b

    .line 1194
    .line 1195
    invoke-direct {v7, v9, v11}, Lc5/a;->a(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 1196
    .line 1197
    .line 1198
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 1199
    .line 1200
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1201
    .line 1202
    .line 1203
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 1204
    .line 1205
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    const-string v2, "seperator"

    .line 1209
    .line 1210
    invoke-virtual {v11, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1211
    .line 1212
    .line 1213
    move-result v2

    .line 1214
    invoke-interface {v9, v10, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1215
    .line 1216
    .line 1217
    const/16 v2, 0x7b

    .line 1218
    .line 1219
    const/16 v3, 0x10

    .line 1220
    .line 1221
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    .line 1222
    .line 1223
    .line 1224
    const/16 v4, 0xa0

    .line 1225
    .line 1226
    invoke-interface {v9, v4, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1227
    .line 1228
    .line 1229
    move-object/from16 v4, v21

    .line 1230
    .line 1231
    invoke-virtual {v11, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1232
    .line 1233
    .line 1234
    move-result v5

    .line 1235
    const/16 v6, 0x19

    .line 1236
    .line 1237
    invoke-interface {v9, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1238
    .line 1239
    .line 1240
    invoke-interface {v9, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1241
    .line 1242
    .line 1243
    sget-object v2, Lc5/a;->f:Ljava/lang/String;

    .line 1244
    .line 1245
    const-string v5, "(I)V"

    .line 1246
    .line 1247
    const/16 v8, 0xb6

    .line 1248
    .line 1249
    invoke-interface {v9, v8, v2, v14, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v11, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    invoke-interface {v9, v6, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1260
    .line 1261
    .line 1262
    const/16 v0, 0x7d

    .line 1263
    .line 1264
    invoke-interface {v9, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1265
    .line 1266
    .line 1267
    const-string v0, "(I)V"

    .line 1268
    .line 1269
    invoke-interface {v9, v8, v2, v14, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1273
    .line 1274
    .line 1275
    move-object/from16 v0, v19

    .line 1276
    .line 1277
    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    if-nez v0, :cond_1c

    .line 1285
    .line 1286
    const/4 v0, 0x1

    .line 1287
    invoke-interface {v9, v6, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1288
    .line 1289
    .line 1290
    move-object/from16 v0, v18

    .line 1291
    .line 1292
    invoke-virtual {v11, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1293
    .line 1294
    .line 1295
    move-result v0

    .line 1296
    invoke-interface {v9, v6, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1297
    .line 1298
    .line 1299
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 1300
    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    sget-object v2, Lc5/a;->j:Ljava/lang/String;

    .line 1310
    .line 1311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    const-string v2, ")V"

    .line 1315
    .line 1316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    const-string v2, "setContext"

    .line 1324
    .line 1325
    invoke-interface {v9, v8, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    :cond_1c
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x19

    .line 3
    .line 4
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 13
    .line 14
    .line 15
    const-string v0, "seperator"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x15

    .line 22
    .line 23
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lc5/a;->h:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "(L"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget-object v3, Lc5/a;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ";Ljava/lang/Object;C)C"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/16 v3, 0xb6

    .line 53
    .line 54
    const-string v4, "writeAfter"

    .line 55
    .line 56
    invoke-interface {p1, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x36

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 6

    .line 1
    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x19

    .line 5
    .line 6
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 15
    .line 16
    .line 17
    sget v2, Lc5/a$a;->h:I

    .line 18
    .line 19
    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    const/16 v3, 0x15

    .line 25
    .line 26
    const-string v4, "valueOf"

    .line 27
    .line 28
    const/16 v5, 0xb8

    .line 29
    .line 30
    if-ne p2, v2, :cond_0

    .line 31
    .line 32
    const-string p2, "byte"

    .line 33
    .line 34
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 39
    .line 40
    .line 41
    const-string p2, "java/lang/Byte"

    .line 42
    .line 43
    const-string p3, "(B)Ljava/lang/Byte;"

    .line 44
    .line 45
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne p2, v2, :cond_1

    .line 53
    .line 54
    const-string p2, "short"

    .line 55
    .line 56
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 61
    .line 62
    .line 63
    const-string p2, "java/lang/Short"

    .line 64
    .line 65
    const-string p3, "(S)Ljava/lang/Short;"

    .line 66
    .line 67
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    if-ne p2, v2, :cond_2

    .line 75
    .line 76
    const-string p2, "int"

    .line 77
    .line 78
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 83
    .line 84
    .line 85
    const-string p2, "java/lang/Integer"

    .line 86
    .line 87
    const-string p3, "(I)Ljava/lang/Integer;"

    .line 88
    .line 89
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_2
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 95
    .line 96
    if-ne p2, v2, :cond_3

    .line 97
    .line 98
    const-string p2, "char"

    .line 99
    .line 100
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 105
    .line 106
    .line 107
    const-string p2, "java/lang/Character"

    .line 108
    .line 109
    const-string p3, "(C)Ljava/lang/Character;"

    .line 110
    .line 111
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    if-ne p2, v2, :cond_4

    .line 119
    .line 120
    const-string p2, "long"

    .line 121
    .line 122
    invoke-virtual {p3, p2, v0}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    const/16 p3, 0x16

    .line 127
    .line 128
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 129
    .line 130
    .line 131
    const-string p2, "java/lang/Long"

    .line 132
    .line 133
    const-string p3, "(J)Ljava/lang/Long;"

    .line 134
    .line 135
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 141
    .line 142
    if-ne p2, v2, :cond_5

    .line 143
    .line 144
    const-string p2, "float"

    .line 145
    .line 146
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    const/16 p3, 0x17

    .line 151
    .line 152
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 153
    .line 154
    .line 155
    const-string p2, "java/lang/Float"

    .line 156
    .line 157
    const-string p3, "(F)Ljava/lang/Float;"

    .line 158
    .line 159
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 165
    .line 166
    if-ne p2, v2, :cond_6

    .line 167
    .line 168
    const-string p2, "double"

    .line 169
    .line 170
    invoke-virtual {p3, p2, v0}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    const/16 p3, 0x18

    .line 175
    .line 176
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 177
    .line 178
    .line 179
    const-string p2, "java/lang/Double"

    .line 180
    .line 181
    const-string p3, "(D)Ljava/lang/Double;"

    .line 182
    .line 183
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 188
    .line 189
    if-ne p2, v0, :cond_7

    .line 190
    .line 191
    const-string p2, "boolean"

    .line 192
    .line 193
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 198
    .line 199
    .line 200
    const-string p2, "java/lang/Boolean"

    .line 201
    .line 202
    const-string p3, "(Z)Ljava/lang/Boolean;"

    .line 203
    .line 204
    invoke-interface {p1, v5, p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_7
    const-class v0, Ljava/math/BigDecimal;

    .line 209
    .line 210
    if-ne p2, v0, :cond_8

    .line 211
    .line 212
    const-string p2, "decimal"

    .line 213
    .line 214
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_8
    const-class v0, Ljava/lang/String;

    .line 223
    .line 224
    if-ne p2, v0, :cond_9

    .line 225
    .line 226
    const-string p2, "string"

    .line 227
    .line 228
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    const-string p2, "enum"

    .line 243
    .line 244
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_a
    const-class v0, Ljava/util/List;

    .line 253
    .line 254
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_b

    .line 259
    .line 260
    const-string p2, "list"

    .line 261
    .line 262
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_b
    const-string p2, "object"

    .line 271
    .line 272
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 277
    .line 278
    .line 279
    :goto_0
    sget-object p2, Lc5/a;->h:Ljava/lang/String;

    .line 280
    .line 281
    new-instance p3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v0, "(L"

    .line 287
    .line 288
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v0, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 297
    .line 298
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    const/16 v0, 0xb6

    .line 306
    .line 307
    const-string v1, "apply"

    .line 308
    .line 309
    invoke-interface {p1, v0, p2, v1, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x19

    .line 3
    .line 4
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 13
    .line 14
    .line 15
    const-string v0, "seperator"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x15

    .line 22
    .line 23
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lc5/a;->h:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "(L"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget-object v3, Lc5/a;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ";Ljava/lang/Object;C)C"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/16 v3, 0xb6

    .line 53
    .line 54
    const-string v4, "writeBefore"

    .line 55
    .line 56
    invoke-interface {p1, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x36

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private d(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 5

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "decimal"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x3a

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 37
    .line 38
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x19

    .line 49
    .line 50
    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0xc7

    .line 54
    .line 55
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p2, p3, p4}, Lc5/a;->l(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 59
    .line 60
    .line 61
    const/16 p3, 0xa7

    .line 62
    .line 63
    invoke-interface {p2, p3, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "out"

    .line 70
    .line 71
    invoke-virtual {p4, v1}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 76
    .line 77
    .line 78
    const-string v1, "seperator"

    .line 79
    .line 80
    invoke-virtual {p4, v1}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/16 v2, 0x15

    .line 85
    .line 86
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 87
    .line 88
    .line 89
    sget v1, Lc5/a$a;->h:I

    .line 90
    .line 91
    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lc5/a;->f:Ljava/lang/String;

    .line 102
    .line 103
    const-string v1, "writeFieldValue"

    .line 104
    .line 105
    const-string v2, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    .line 106
    .line 107
    const/16 v4, 0xb6

    .line 108
    .line 109
    invoke-interface {p2, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p2, p3, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private e(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "double"

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p4, v0, v1}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x39

    .line 20
    .line 21
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 25
    .line 26
    .line 27
    const-string p3, "out"

    .line 28
    .line 29
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/16 v2, 0x19

    .line 34
    .line 35
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 36
    .line 37
    .line 38
    const-string p3, "seperator"

    .line 39
    .line 40
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/16 v3, 0x15

    .line 45
    .line 46
    invoke-interface {p2, v3, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 47
    .line 48
    .line 49
    sget p3, Lc5/a$a;->h:I

    .line 50
    .line 51
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 52
    .line 53
    .line 54
    const/16 p3, 0x18

    .line 55
    .line 56
    invoke-virtual {p4, v0, v1}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 61
    .line 62
    .line 63
    sget-object p3, Lc5/a;->f:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "writeFieldValue"

    .line 66
    .line 67
    const-string v1, "(CLjava/lang/String;D)V"

    .line 68
    .line 69
    const/16 v2, 0xb6

    .line 70
    .line 71
    invoke-interface {p2, v2, p3, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private f(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 9

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2, p3, p4, v1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0xc0

    .line 23
    .line 24
    const-string v3, "java/lang/Enum"

    .line 25
    .line 26
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "enum"

    .line 30
    .line 31
    invoke-virtual {p4, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v5, 0x3a

    .line 36
    .line 37
    invoke-interface {p2, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p2, p3, p4, v1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x19

    .line 48
    .line 49
    invoke-interface {p2, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 50
    .line 51
    .line 52
    const/16 v4, 0xc7

    .line 53
    .line 54
    invoke-interface {p2, v4, p1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p2, p3, p4}, Lc5/a;->l(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 58
    .line 59
    .line 60
    const/16 v4, 0xa7

    .line 61
    .line 62
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const-string v4, "seperator"

    .line 73
    .line 74
    const/16 v6, 0x15

    .line 75
    .line 76
    const-string v7, "out"

    .line 77
    .line 78
    const/16 v8, 0xb6

    .line 79
    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    invoke-virtual {p4, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-interface {p2, v6, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 94
    .line 95
    .line 96
    sget p1, Lc5/a$a;->h:I

    .line 97
    .line 98
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 106
    .line 107
    .line 108
    const-string p1, "name"

    .line 109
    .line 110
    const-string p3, "()Ljava/lang/String;"

    .line 111
    .line 112
    invoke-interface {p2, v8, v3, p1, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lc5/a;->f:Ljava/lang/String;

    .line 116
    .line 117
    const-string p3, "writeFieldValueStringWithDoubleQuote"

    .line 118
    .line 119
    const-string v2, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 120
    .line 121
    invoke-interface {p2, v8, p1, p3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p4, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p4, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-interface {p2, v6, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lc5/a;->f:Ljava/lang/String;

    .line 140
    .line 141
    const-string v3, "write"

    .line 142
    .line 143
    const-string v4, "(I)V"

    .line 144
    .line 145
    invoke-interface {p2, v8, p1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p4, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 153
    .line 154
    .line 155
    sget v3, Lc5/a$a;->h:I

    .line 156
    .line 157
    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x3

    .line 161
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 162
    .line 163
    .line 164
    const-string v3, "writeFieldName"

    .line 165
    .line 166
    const-string v4, "(Ljava/lang/String;Z)V"

    .line 167
    .line 168
    invoke-interface {p2, v8, p1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x1

    .line 172
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p4, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 180
    .line 181
    .line 182
    sget p1, Lc5/a$a;->h:I

    .line 183
    .line 184
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget p1, p3, Lcom/alibaba/fastjson/util/d;->i:I

    .line 201
    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    sget-object p1, Lc5/a;->c:Ljava/lang/String;

    .line 210
    .line 211
    const-string p3, "writeWithFieldName"

    .line 212
    .line 213
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 214
    .line 215
    invoke-interface {p2, v8, p1, p3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :goto_0
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method private g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lcom/alibaba/fastjson/util/d;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "out"

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x19

    .line 12
    .line 13
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 17
    .line 18
    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lc5/a;->f:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "isEnabled"

    .line 30
    .line 31
    const-string v2, "(I)Z"

    .line 32
    .line 33
    const/16 v3, 0xb6

    .line 34
    .line 35
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x9a

    .line 39
    .line 40
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc5/a;->r(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lc5/a;->b(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0x99

    .line 57
    .line 58
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lc5/a;->t(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lc5/a;->u(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private h(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "float"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x38

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 46
    .line 47
    .line 48
    sget p3, Lc5/a$a;->h:I

    .line 49
    .line 50
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 51
    .line 52
    .line 53
    const/16 p3, 0x17

    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 60
    .line 61
    .line 62
    sget-object p3, Lc5/a;->f:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "writeFieldValue"

    .line 65
    .line 66
    const-string v1, "(CLjava/lang/String;F)V"

    .line 67
    .line 68
    const/16 v2, 0xb6

    .line 69
    .line 70
    invoke-interface {p2, v2, p3, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V
    .locals 5

    .line 1
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    const-string v2, "entity"

    .line 6
    .line 7
    const/16 v3, 0x19

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/16 v2, 0xb9

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v2, 0xb6

    .line 32
    .line 33
    :goto_0
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {p1, v2, p2, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p2, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p3, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 78
    .line 79
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/16 v4, 0xb4

    .line 98
    .line 99
    invoke-interface {p1, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-nez p2, :cond_2

    .line 113
    .line 114
    iget-object p2, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 115
    .line 116
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_1
    return-void
.end method

.method private j(Lc5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v5, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, "_asm_ser_"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v6, Lc5/a;->e:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v7, 0xb4

    .line 38
    .line 39
    invoke-interface {p2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0xc7

    .line 43
    .line 44
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object v3, Lc5/a;->c:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v8, "(Ljava/lang/Class;)"

    .line 75
    .line 76
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const/16 v8, 0xb6

    .line 87
    .line 88
    const-string v9, "getObjectWriter"

    .line 89
    .line 90
    invoke-interface {p2, v8, v3, v9, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v8, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const/16 v8, 0xb5

    .line 115
    .line 116
    invoke-interface {p2, v8, v3, v4, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object p3, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-interface {p2, v7, p1, p3, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method private k(Lc5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v5, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, "_asm_list_item_ser_"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v6, Lc5/a;->e:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v7, 0xb4

    .line 38
    .line 39
    invoke-interface {p2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0xc7

    .line 43
    .line 44
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 52
    .line 53
    .line 54
    invoke-static {p4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    invoke-interface {p2, p4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p4, Lc5/a;->c:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "(Ljava/lang/Class;)"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const/16 v4, 0xb6

    .line 85
    .line 86
    const-string v8, "getObjectWriter"

    .line 87
    .line 88
    invoke-interface {p2, v4, p4, v8, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v4, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const/16 v4, 0xb5

    .line 113
    .line 114
    invoke-interface {p2, v4, p4, v3, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object p3, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-interface {p2, v7, p1, p3, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private l(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 10
    .line 11
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 12
    .line 13
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 17
    .line 18
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v7, Lcom/alibaba/fastjson/asm/f;

    .line 22
    .line 23
    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 27
    .line 28
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/util/d;->e()Lz4/b;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-static/range {p3 .. p3}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    iget-object v9, v9, Lc5/f1;->d:Lz4/d;

    .line 55
    .line 56
    if-eqz v9, :cond_1

    .line 57
    .line 58
    invoke-interface {v9}, Lz4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    or-int/2addr v2, v9

    .line 67
    :cond_1
    const-class v9, Ljava/lang/Boolean;

    .line 68
    .line 69
    const-class v10, Ljava/util/Collection;

    .line 70
    .line 71
    const-class v11, Ljava/lang/Number;

    .line 72
    .line 73
    const-class v12, Ljava/lang/String;

    .line 74
    .line 75
    if-ne v4, v12, :cond_2

    .line 76
    .line 77
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 78
    .line 79
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 84
    .line 85
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    :goto_1
    or-int/2addr v13, v14

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-eqz v13, :cond_3

    .line 96
    .line 97
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 98
    .line 99
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 104
    .line 105
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    if-eqz v13, :cond_4

    .line 115
    .line 116
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 117
    .line 118
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 123
    .line 124
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    if-ne v9, v4, :cond_5

    .line 130
    .line 131
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 132
    .line 133
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 138
    .line 139
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    sget v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    .line 145
    .line 146
    :goto_2
    and-int v14, v2, v13

    .line 147
    .line 148
    const-string v5, "out"

    .line 149
    .line 150
    const/16 v15, 0x19

    .line 151
    .line 152
    if-nez v14, :cond_6

    .line 153
    .line 154
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    invoke-interface {v1, v15, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 159
    .line 160
    .line 161
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object v13, Lc5/a;->f:Ljava/lang/String;

    .line 169
    .line 170
    const-string v14, "isEnabled"

    .line 171
    .line 172
    const-string v15, "(I)Z"

    .line 173
    .line 174
    move-object/from16 v16, v8

    .line 175
    .line 176
    const/16 v8, 0xb6

    .line 177
    .line 178
    invoke-interface {v1, v8, v13, v14, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/16 v8, 0x99

    .line 182
    .line 183
    invoke-interface {v1, v8, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    move-object/from16 v16, v8

    .line 188
    .line 189
    :goto_3
    invoke-interface {v1, v7}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    const/16 v8, 0x19

    .line 197
    .line 198
    invoke-interface {v1, v8, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 199
    .line 200
    .line 201
    const-string v7, "seperator"

    .line 202
    .line 203
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    const/16 v13, 0x15

    .line 208
    .line 209
    invoke-interface {v1, v13, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 210
    .line 211
    .line 212
    sget-object v7, Lc5/a;->f:Ljava/lang/String;

    .line 213
    .line 214
    const-string v13, "write"

    .line 215
    .line 216
    const-string v14, "(I)V"

    .line 217
    .line 218
    const/16 v15, 0xb6

    .line 219
    .line 220
    invoke-interface {v1, v15, v7, v13, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v1, v3}, Lc5/a;->x(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-interface {v1, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 231
    .line 232
    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    if-eq v4, v12, :cond_c

    .line 241
    .line 242
    const-class v2, Ljava/lang/Character;

    .line 243
    .line 244
    if-ne v4, v2, :cond_7

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_7
    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_8

    .line 252
    .line 253
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 254
    .line 255
    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 256
    .line 257
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_8
    if-ne v4, v9, :cond_9

    .line 266
    .line 267
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 268
    .line 269
    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 270
    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_9
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_b

    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_a

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_a
    const/4 v2, 0x0

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_b
    :goto_4
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 302
    .line 303
    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 304
    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_c
    :goto_5
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 314
    .line 315
    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 316
    .line 317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :goto_6
    const-string v2, "writeNull"

    .line 325
    .line 326
    const-string v4, "(II)V"

    .line 327
    .line 328
    const/16 v5, 0xb6

    .line 329
    .line 330
    invoke-interface {v1, v5, v7, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-direct {v0, v1, v3}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 334
    .line 335
    .line 336
    const/16 v2, 0xa7

    .line 337
    .line 338
    move-object/from16 v3, v16

    .line 339
    .line 340
    invoke-interface {v1, v2, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method private m(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;IC)V
    .locals 2

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x36

    .line 13
    .line 14
    invoke-interface {p2, v0, p5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 18
    .line 19
    .line 20
    const-string p3, "out"

    .line 21
    .line 22
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    const/16 v0, 0x19

    .line 27
    .line 28
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 29
    .line 30
    .line 31
    const-string p3, "seperator"

    .line 32
    .line 33
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/16 v1, 0x15

    .line 38
    .line 39
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 40
    .line 41
    .line 42
    sget p3, Lc5/a$a;->h:I

    .line 43
    .line 44
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v1, p5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 48
    .line 49
    .line 50
    sget-object p3, Lc5/a;->f:Ljava/lang/String;

    .line 51
    .line 52
    new-instance p5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "(CLjava/lang/String;"

    .line 58
    .line 59
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p6, ")V"

    .line 66
    .line 67
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p5

    .line 74
    const/16 p6, 0xb6

    .line 75
    .line 76
    const-string v0, "writeFieldValue"

    .line 77
    .line 78
    invoke-interface {p2, p6, p3, v0, p5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private n(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    const/4 p3, 0x0

    .line 2
    const/16 v0, 0x19

    .line 3
    .line 4
    invoke-interface {p1, v0, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 5
    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    invoke-interface {p1, v0, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->k:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lc5/a;->h:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "(L"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ";Ljava/lang/String;)Z"

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    const/16 v0, 0xb6

    .line 43
    .line 44
    const-string v1, "applyLabel"

    .line 45
    .line 46
    invoke-interface {p1, v0, p2, v1, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x99

    .line 50
    .line 51
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private o(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    instance-of v5, v4, Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    move-object v5, v4

    .line 21
    check-cast v5, Ljava/lang/Class;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v5, v6

    .line 25
    :goto_0
    const-class v7, Ljava/lang/Object;

    .line 26
    .line 27
    if-eq v5, v7, :cond_2

    .line 28
    .line 29
    const-class v7, Ljava/io/Serializable;

    .line 30
    .line 31
    if-ne v5, v7, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v6, v5

    .line 35
    :cond_2
    :goto_1
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 36
    .line 37
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v7, Lcom/alibaba/fastjson/asm/f;

    .line 41
    .line 42
    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 46
    .line 47
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v3, v5}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1, v3, v2}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 54
    .line 55
    .line 56
    const/16 v9, 0xc0

    .line 57
    .line 58
    const-string v10, "java/util/List"

    .line 59
    .line 60
    invoke-interface {v1, v9, v10}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v9, "list"

    .line 64
    .line 65
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const/16 v12, 0x3a

    .line 70
    .line 71
    invoke-interface {v1, v12, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1, v2, v3, v5}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const/16 v13, 0x19

    .line 82
    .line 83
    invoke-interface {v1, v13, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 84
    .line 85
    .line 86
    const/16 v11, 0xc7

    .line 87
    .line 88
    invoke-interface {v1, v11, v7}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1, v2, v3}, Lc5/a;->l(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 92
    .line 93
    .line 94
    const/16 v11, 0xa7

    .line 95
    .line 96
    invoke-interface {v1, v11, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v7}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 100
    .line 101
    .line 102
    const-string v7, "out"

    .line 103
    .line 104
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    invoke-interface {v1, v13, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 109
    .line 110
    .line 111
    const-string v14, "seperator"

    .line 112
    .line 113
    invoke-virtual {v3, v14}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    const/16 v15, 0x15

    .line 118
    .line 119
    invoke-interface {v1, v15, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 120
    .line 121
    .line 122
    sget-object v14, Lc5/a;->f:Ljava/lang/String;

    .line 123
    .line 124
    const/16 v12, 0xb6

    .line 125
    .line 126
    const-string v11, "write"

    .line 127
    .line 128
    const-string v15, "(I)V"

    .line 129
    .line 130
    invoke-interface {v1, v12, v14, v11, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1, v3}, Lc5/a;->x(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    invoke-interface {v1, v13, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 141
    .line 142
    .line 143
    const-string v12, "()I"

    .line 144
    .line 145
    const/16 v13, 0xb9

    .line 146
    .line 147
    move-object/from16 v16, v5

    .line 148
    .line 149
    const-string v5, "size"

    .line 150
    .line 151
    invoke-interface {v1, v13, v10, v5, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/16 v12, 0x36

    .line 155
    .line 156
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    invoke-interface {v1, v12, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 161
    .line 162
    .line 163
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    .line 164
    .line 165
    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v13, Lcom/alibaba/fastjson/asm/f;

    .line 169
    .line 170
    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 171
    .line 172
    .line 173
    move-object/from16 v17, v8

    .line 174
    .line 175
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    const/16 v0, 0x15

    .line 180
    .line 181
    invoke-interface {v1, v0, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 182
    .line 183
    .line 184
    const/4 v0, 0x3

    .line 185
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 186
    .line 187
    .line 188
    const/16 v0, 0xa0

    .line 189
    .line 190
    invoke-interface {v1, v0, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const/16 v8, 0x19

    .line 198
    .line 199
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 200
    .line 201
    .line 202
    const-string v0, "[]"

    .line 203
    .line 204
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    const-string v0, "(Ljava/lang/String;)V"

    .line 208
    .line 209
    const/16 v8, 0xb6

    .line 210
    .line 211
    invoke-interface {v1, v8, v14, v11, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/16 v0, 0xa7

    .line 215
    .line 216
    invoke-interface {v1, v0, v13}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 220
    .line 221
    .line 222
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    const/4 v8, 0x1

    .line 227
    if-nez v0, :cond_3

    .line 228
    .line 229
    const/16 v0, 0x19

    .line 230
    .line 231
    invoke-interface {v1, v0, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    invoke-interface {v1, v0, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 239
    .line 240
    .line 241
    sget v12, Lc5/a$a;->h:I

    .line 242
    .line 243
    invoke-interface {v1, v0, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 244
    .line 245
    .line 246
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 247
    .line 248
    const-string v12, "setContext"

    .line 249
    .line 250
    const-string v8, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 251
    .line 252
    move-object/from16 v18, v13

    .line 253
    .line 254
    const/16 v13, 0xb6

    .line 255
    .line 256
    invoke-interface {v1, v13, v0, v12, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_3
    move-object/from16 v18, v13

    .line 261
    .line 262
    :goto_2
    const-class v0, Ljava/lang/String;

    .line 263
    .line 264
    if-ne v4, v0, :cond_4

    .line 265
    .line 266
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_4

    .line 271
    .line 272
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    const/16 v8, 0x19

    .line 277
    .line 278
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 286
    .line 287
    .line 288
    const-string v0, "(Ljava/util/List;)V"

    .line 289
    .line 290
    const/16 v12, 0xb6

    .line 291
    .line 292
    invoke-interface {v1, v12, v14, v11, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    move v4, v8

    .line 296
    move v5, v12

    .line 297
    const/4 v2, 0x1

    .line 298
    goto/16 :goto_a

    .line 299
    .line 300
    :cond_4
    const/16 v8, 0x19

    .line 301
    .line 302
    const/16 v12, 0xb6

    .line 303
    .line 304
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 309
    .line 310
    .line 311
    const/16 v0, 0x5b

    .line 312
    .line 313
    const/16 v8, 0x10

    .line 314
    .line 315
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v1, v12, v14, v11, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 322
    .line 323
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 324
    .line 325
    .line 326
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    .line 327
    .line 328
    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 329
    .line 330
    .line 331
    new-instance v13, Lcom/alibaba/fastjson/asm/f;

    .line 332
    .line 333
    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 334
    .line 335
    .line 336
    const/4 v8, 0x3

    .line 337
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 338
    .line 339
    .line 340
    const/16 v8, 0x36

    .line 341
    .line 342
    move-object/from16 v19, v4

    .line 343
    .line 344
    const-string v4, "i"

    .line 345
    .line 346
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    const/16 v8, 0x15

    .line 361
    .line 362
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 370
    .line 371
    .line 372
    const/16 v2, 0xa2

    .line 373
    .line 374
    invoke-interface {v1, v2, v13}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 382
    .line 383
    .line 384
    const/16 v2, 0x99

    .line 385
    .line 386
    invoke-interface {v1, v2, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    const/16 v5, 0x19

    .line 394
    .line 395
    invoke-interface {v1, v5, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 396
    .line 397
    .line 398
    const/16 v2, 0x2c

    .line 399
    .line 400
    const/16 v8, 0x10

    .line 401
    .line 402
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 403
    .line 404
    .line 405
    const/16 v2, 0xb6

    .line 406
    .line 407
    invoke-interface {v1, v2, v14, v11, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3, v9}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    invoke-interface {v1, v5, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    const/16 v5, 0x15

    .line 425
    .line 426
    invoke-interface {v1, v5, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 427
    .line 428
    .line 429
    const-string v2, "get"

    .line 430
    .line 431
    const-string v5, "(I)Ljava/lang/Object;"

    .line 432
    .line 433
    const/16 v8, 0xb9

    .line 434
    .line 435
    invoke-interface {v1, v8, v10, v2, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    const-string v2, "list_item"

    .line 439
    .line 440
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    const/16 v8, 0x3a

    .line 445
    .line 446
    invoke-interface {v1, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 447
    .line 448
    .line 449
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 450
    .line 451
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 452
    .line 453
    .line 454
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 455
    .line 456
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    const/16 v10, 0x19

    .line 464
    .line 465
    invoke-interface {v1, v10, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 466
    .line 467
    .line 468
    const/16 v9, 0xc7

    .line 469
    .line 470
    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    invoke-interface {v1, v10, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 478
    .line 479
    .line 480
    const-string v9, "writeNull"

    .line 481
    .line 482
    const-string v10, "()V"

    .line 483
    .line 484
    const/16 v12, 0xb6

    .line 485
    .line 486
    invoke-interface {v1, v12, v14, v9, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    const/16 v9, 0xa7

    .line 490
    .line 491
    invoke-interface {v1, v9, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 492
    .line 493
    .line 494
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 495
    .line 496
    .line 497
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 498
    .line 499
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 500
    .line 501
    .line 502
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 503
    .line 504
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 505
    .line 506
    .line 507
    const-string v10, "(I)Ljava/lang/Integer;"

    .line 508
    .line 509
    const-string v12, "valueOf"

    .line 510
    .line 511
    move-object/from16 v20, v14

    .line 512
    .line 513
    const-string v14, "java/lang/Integer"

    .line 514
    .line 515
    move-object/from16 v21, v15

    .line 516
    .line 517
    if-eqz v6, :cond_9

    .line 518
    .line 519
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    .line 520
    .line 521
    .line 522
    move-result v22

    .line 523
    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 524
    .line 525
    .line 526
    move-result v22

    .line 527
    if-eqz v22, :cond_9

    .line 528
    .line 529
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    move-result v15

    .line 533
    move-object/from16 v23, v7

    .line 534
    .line 535
    const/16 v7, 0x19

    .line 536
    .line 537
    invoke-interface {v1, v7, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 538
    .line 539
    .line 540
    const-string v7, "getClass"

    .line 541
    .line 542
    const-string v15, "()Ljava/lang/Class;"

    .line 543
    .line 544
    move-object/from16 v24, v13

    .line 545
    .line 546
    const-string v13, "java/lang/Object"

    .line 547
    .line 548
    move-object/from16 v25, v0

    .line 549
    .line 550
    const/16 v0, 0xb6

    .line 551
    .line 552
    invoke-interface {v1, v0, v13, v7, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    const/16 v0, 0xa6

    .line 567
    .line 568
    invoke-interface {v1, v0, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 569
    .line 570
    .line 571
    move-object/from16 v0, p0

    .line 572
    .line 573
    move-object/from16 v7, p3

    .line 574
    .line 575
    invoke-direct {v0, v3, v1, v7, v6}, Lc5/a;->k(Lc5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V

    .line 576
    .line 577
    .line 578
    const-string v13, "list_item_desc"

    .line 579
    .line 580
    invoke-virtual {v3, v13}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    move-result v15

    .line 584
    const/16 v0, 0x3a

    .line 585
    .line 586
    invoke-interface {v1, v0, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 587
    .line 588
    .line 589
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 590
    .line 591
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 592
    .line 593
    .line 594
    new-instance v15, Lcom/alibaba/fastjson/asm/f;

    .line 595
    .line 596
    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 600
    .line 601
    .line 602
    move-result v26

    .line 603
    if-eqz v26, :cond_7

    .line 604
    .line 605
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 606
    .line 607
    .line 608
    move-result v26

    .line 609
    if-eqz v26, :cond_5

    .line 610
    .line 611
    invoke-static/range {p4 .. p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 612
    .line 613
    .line 614
    move-result v26

    .line 615
    if-eqz v26, :cond_5

    .line 616
    .line 617
    const-string v26, "writeDirectNonContext"

    .line 618
    .line 619
    move-object/from16 p1, v5

    .line 620
    .line 621
    move-object/from16 v5, v26

    .line 622
    .line 623
    move-object/from16 v26, v9

    .line 624
    .line 625
    goto :goto_3

    .line 626
    :cond_5
    move-object/from16 p1, v5

    .line 627
    .line 628
    move-object/from16 v26, v9

    .line 629
    .line 630
    move-object v5, v11

    .line 631
    :goto_3
    invoke-virtual {v3, v13}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    move-result v9

    .line 635
    move-object/from16 v27, v8

    .line 636
    .line 637
    const/16 v8, 0x19

    .line 638
    .line 639
    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 640
    .line 641
    .line 642
    sget-object v9, Lc5/a;->h:Ljava/lang/String;

    .line 643
    .line 644
    const/16 v8, 0xc1

    .line 645
    .line 646
    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 647
    .line 648
    .line 649
    const/16 v8, 0x99

    .line 650
    .line 651
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v13}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    move-result v8

    .line 658
    move-object/from16 v28, v11

    .line 659
    .line 660
    const/16 v11, 0x19

    .line 661
    .line 662
    invoke-interface {v1, v11, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 663
    .line 664
    .line 665
    const/16 v8, 0xc0

    .line 666
    .line 667
    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 668
    .line 669
    .line 670
    const/4 v8, 0x1

    .line 671
    invoke-interface {v1, v11, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    move-result v8

    .line 678
    invoke-interface {v1, v11, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 679
    .line 680
    .line 681
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 682
    .line 683
    .line 684
    move-result v8

    .line 685
    if-eqz v8, :cond_6

    .line 686
    .line 687
    const/4 v8, 0x1

    .line 688
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 689
    .line 690
    .line 691
    goto :goto_4

    .line 692
    :cond_6
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 693
    .line 694
    .line 695
    move-result v8

    .line 696
    const/16 v11, 0x15

    .line 697
    .line 698
    invoke-interface {v1, v11, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 699
    .line 700
    .line 701
    const/16 v8, 0xb8

    .line 702
    .line 703
    invoke-interface {v1, v8, v14, v12, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    :goto_4
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v8

    .line 710
    invoke-static {v8}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 711
    .line 712
    .line 713
    move-result-object v8

    .line 714
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    iget v8, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 718
    .line 719
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v8

    .line 723
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    new-instance v8, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .line 730
    .line 731
    const-string v11, "(L"

    .line 732
    .line 733
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    sget-object v11, Lc5/a;->c:Ljava/lang/String;

    .line 737
    .line 738
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const-string v11, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 742
    .line 743
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    const/16 v11, 0xb6

    .line 751
    .line 752
    invoke-interface {v1, v11, v9, v5, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    const/16 v5, 0xa7

    .line 756
    .line 757
    invoke-interface {v1, v5, v15}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 758
    .line 759
    .line 760
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 761
    .line 762
    .line 763
    goto :goto_5

    .line 764
    :cond_7
    move-object/from16 p1, v5

    .line 765
    .line 766
    move-object/from16 v27, v8

    .line 767
    .line 768
    move-object/from16 v26, v9

    .line 769
    .line 770
    move-object/from16 v28, v11

    .line 771
    .line 772
    :goto_5
    invoke-virtual {v3, v13}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    const/16 v5, 0x19

    .line 777
    .line 778
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 779
    .line 780
    .line 781
    const/4 v0, 0x1

    .line 782
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    move-result v8

    .line 789
    invoke-interface {v1, v5, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 790
    .line 791
    .line 792
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    if-eqz v5, :cond_8

    .line 797
    .line 798
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 799
    .line 800
    .line 801
    goto :goto_6

    .line 802
    :cond_8
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    const/16 v5, 0x15

    .line 807
    .line 808
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 809
    .line 810
    .line 811
    const/16 v0, 0xb8

    .line 812
    .line 813
    invoke-interface {v1, v0, v14, v12, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    :goto_6
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    iget v0, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 828
    .line 829
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 834
    .line 835
    .line 836
    sget-object v0, Lc5/a;->d:Ljava/lang/String;

    .line 837
    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    .line 839
    .line 840
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .line 842
    .line 843
    const-string v8, "(L"

    .line 844
    .line 845
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    sget-object v8, Lc5/a;->c:Ljava/lang/String;

    .line 849
    .line 850
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    const-string v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 854
    .line 855
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    move-object/from16 v8, v28

    .line 863
    .line 864
    const/16 v9, 0xb9

    .line 865
    .line 866
    invoke-interface {v1, v9, v0, v8, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-interface {v1, v15}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 870
    .line 871
    .line 872
    move-object/from16 v5, v27

    .line 873
    .line 874
    const/16 v0, 0xa7

    .line 875
    .line 876
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 877
    .line 878
    .line 879
    move-object/from16 v0, v26

    .line 880
    .line 881
    goto :goto_7

    .line 882
    :cond_9
    move-object/from16 v25, v0

    .line 883
    .line 884
    move-object/from16 p1, v5

    .line 885
    .line 886
    move-object/from16 v23, v7

    .line 887
    .line 888
    move-object v5, v8

    .line 889
    move-object v8, v11

    .line 890
    move-object/from16 v24, v13

    .line 891
    .line 892
    move-object/from16 v7, p3

    .line 893
    .line 894
    move-object v0, v9

    .line 895
    :goto_7
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 896
    .line 897
    .line 898
    const/16 v0, 0x19

    .line 899
    .line 900
    const/4 v9, 0x1

    .line 901
    invoke-interface {v1, v0, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v3, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    invoke-interface {v1, v0, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 909
    .line 910
    .line 911
    invoke-static/range {p4 .. p4}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-eqz v0, :cond_a

    .line 916
    .line 917
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 918
    .line 919
    .line 920
    goto :goto_8

    .line 921
    :cond_a
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    const/16 v2, 0x15

    .line 926
    .line 927
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 928
    .line 929
    .line 930
    const/16 v0, 0xb8

    .line 931
    .line 932
    invoke-interface {v1, v0, v14, v12, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    :goto_8
    if-eqz v6, :cond_b

    .line 936
    .line 937
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    .line 938
    .line 939
    .line 940
    move-result v0

    .line 941
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_b

    .line 946
    .line 947
    move-object/from16 v0, v19

    .line 948
    .line 949
    check-cast v0, Ljava/lang/Class;

    .line 950
    .line 951
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    iget v0, v7, Lcom/alibaba/fastjson/util/d;->i:I

    .line 963
    .line 964
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 969
    .line 970
    .line 971
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 972
    .line 973
    const-string v2, "writeWithFieldName"

    .line 974
    .line 975
    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 976
    .line 977
    const/16 v7, 0xb6

    .line 978
    .line 979
    invoke-interface {v1, v7, v0, v2, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    goto :goto_9

    .line 983
    :cond_b
    const/16 v7, 0xb6

    .line 984
    .line 985
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 986
    .line 987
    const-string v2, "writeWithFieldName"

    .line 988
    .line 989
    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 990
    .line 991
    invoke-interface {v1, v7, v0, v2, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    :goto_9
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 995
    .line 996
    .line 997
    move-object/from16 v0, p1

    .line 998
    .line 999
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v3, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    const/4 v2, 0x1

    .line 1007
    invoke-interface {v1, v0, v2}, Lcom/alibaba/fastjson/asm/h;->e(II)V

    .line 1008
    .line 1009
    .line 1010
    move-object/from16 v4, v25

    .line 1011
    .line 1012
    const/16 v0, 0xa7

    .line 1013
    .line 1014
    invoke-interface {v1, v0, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1015
    .line 1016
    .line 1017
    move-object/from16 v0, v24

    .line 1018
    .line 1019
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v0, v23

    .line 1023
    .line 1024
    invoke-virtual {v3, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    const/16 v4, 0x19

    .line 1029
    .line 1030
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1031
    .line 1032
    .line 1033
    const/16 v0, 0x5d

    .line 1034
    .line 1035
    const/16 v5, 0x10

    .line 1036
    .line 1037
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1038
    .line 1039
    .line 1040
    move-object/from16 v0, v20

    .line 1041
    .line 1042
    move-object/from16 v6, v21

    .line 1043
    .line 1044
    const/16 v5, 0xb6

    .line 1045
    .line 1046
    invoke-interface {v1, v5, v0, v8, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    :goto_a
    invoke-interface {v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1050
    .line 1051
    .line 1052
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 1053
    .line 1054
    const-string v2, "popContext"

    .line 1055
    .line 1056
    const-string v4, "()V"

    .line 1057
    .line 1058
    invoke-interface {v1, v5, v0, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    move-object/from16 v0, v18

    .line 1062
    .line 1063
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1064
    .line 1065
    .line 1066
    move-object/from16 v0, p0

    .line 1067
    .line 1068
    invoke-direct {v0, v1, v3}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v2, v17

    .line 1072
    .line 1073
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1074
    .line 1075
    .line 1076
    move-object/from16 v2, v16

    .line 1077
    .line 1078
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1079
    .line 1080
    .line 1081
    return-void
.end method

.method private p(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "long"

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p4, v0, v1}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x37

    .line 20
    .line 21
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 25
    .line 26
    .line 27
    const-string p3, "out"

    .line 28
    .line 29
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/16 v2, 0x19

    .line 34
    .line 35
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 36
    .line 37
    .line 38
    const-string p3, "seperator"

    .line 39
    .line 40
    invoke-virtual {p4, p3}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/16 v3, 0x15

    .line 45
    .line 46
    invoke-interface {p2, v3, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 47
    .line 48
    .line 49
    sget p3, Lc5/a$a;->h:I

    .line 50
    .line 51
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 52
    .line 53
    .line 54
    const/16 p3, 0x16

    .line 55
    .line 56
    invoke-virtual {p4, v0, v1}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 61
    .line 62
    .line 63
    sget-object p3, Lc5/a;->f:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "writeFieldValue"

    .line 66
    .line 67
    const-string v1, "(CLjava/lang/String;J)V"

    .line 68
    .line 69
    const/16 v2, 0xb6

    .line 70
    .line 71
    invoke-interface {p2, v2, p3, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 5

    .line 1
    invoke-static {p3}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb6

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 21
    .line 22
    .line 23
    sget v0, Lc5/a$a;->h:I

    .line 24
    .line 25
    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lc5/a;->h:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "(L"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget-object v4, Lc5/a;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, ";Ljava/lang/Object;Ljava/lang/String;)Z"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "applyName"

    .line 55
    .line 56
    invoke-interface {p1, v1, v0, v4, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0x99

    .line 60
    .line 61
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lc5/a;->n(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    const-string p2, "out"

    .line 72
    .line 73
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 78
    .line 79
    .line 80
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 81
    .line 82
    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p2, Lc5/a;->f:Ljava/lang/String;

    .line 92
    .line 93
    const-string p3, "isEnabled"

    .line 94
    .line 95
    const-string v0, "(I)Z"

    .line 96
    .line 97
    invoke-interface {p1, v1, p2, p3, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 p2, 0x9a

    .line 101
    .line 102
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method private r(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 4

    .line 1
    invoke-static {p3}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "notWriteDefaultValue"

    .line 14
    .line 15
    invoke-virtual {p3, v1}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x15

    .line 20
    .line 21
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x99

    .line 25
    .line 26
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 30
    .line 31
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    if-ne p2, v3, :cond_1

    .line 34
    .line 35
    const-string p2, "boolean"

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    if-ne p2, v3, :cond_2

    .line 52
    .line 53
    const-string p2, "byte"

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_2
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    if-ne p2, v3, :cond_3

    .line 70
    .line 71
    const-string p2, "short"

    .line 72
    .line 73
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 85
    .line 86
    if-ne p2, v3, :cond_4

    .line 87
    .line 88
    const-string p2, "int"

    .line 89
    .line 90
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    if-ne p2, v2, :cond_5

    .line 104
    .line 105
    const-string p2, "long"

    .line 106
    .line 107
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    const/16 p3, 0x16

    .line 112
    .line 113
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 114
    .line 115
    .line 116
    const/16 p2, 0x9

    .line 117
    .line 118
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 119
    .line 120
    .line 121
    const/16 p2, 0x94

    .line 122
    .line 123
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    if-ne p2, v2, :cond_6

    .line 133
    .line 134
    const-string p2, "float"

    .line 135
    .line 136
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    const/16 p3, 0x17

    .line 141
    .line 142
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 143
    .line 144
    .line 145
    const/16 p2, 0xb

    .line 146
    .line 147
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 148
    .line 149
    .line 150
    const/16 p2, 0x95

    .line 151
    .line 152
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 160
    .line 161
    if-ne p2, v2, :cond_7

    .line 162
    .line 163
    const-string p2, "double"

    .line 164
    .line 165
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    const/16 p3, 0x18

    .line 170
    .line 171
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 172
    .line 173
    .line 174
    const/16 p2, 0xe

    .line 175
    .line 176
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 177
    .line 178
    .line 179
    const/16 p2, 0x97

    .line 180
    .line 181
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_0
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method private s(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "object"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x3a

    .line 19
    .line 20
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->y(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private t(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "hasNameFilters"

    .line 7
    .line 8
    invoke-virtual {p3, v1}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x15

    .line 13
    .line 14
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x99

    .line 18
    .line 19
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/16 v3, 0x19

    .line 26
    .line 27
    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 36
    .line 37
    .line 38
    sget v4, Lc5/a$a;->h:I

    .line 39
    .line 40
    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    const-string v5, "valueOf"

    .line 46
    .line 47
    const/16 v6, 0xb8

    .line 48
    .line 49
    if-ne p2, v4, :cond_0

    .line 50
    .line 51
    const-string p2, "byte"

    .line 52
    .line 53
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 58
    .line 59
    .line 60
    const-string p2, "java/lang/Byte"

    .line 61
    .line 62
    const-string p3, "(B)Ljava/lang/Byte;"

    .line 63
    .line 64
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    if-ne p2, v4, :cond_1

    .line 72
    .line 73
    const-string p2, "short"

    .line 74
    .line 75
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 80
    .line 81
    .line 82
    const-string p2, "java/lang/Short"

    .line 83
    .line 84
    const-string p3, "(S)Ljava/lang/Short;"

    .line 85
    .line 86
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    if-ne p2, v4, :cond_2

    .line 94
    .line 95
    const-string p2, "int"

    .line 96
    .line 97
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 102
    .line 103
    .line 104
    const-string p2, "java/lang/Integer"

    .line 105
    .line 106
    const-string p3, "(I)Ljava/lang/Integer;"

    .line 107
    .line 108
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    if-ne p2, v4, :cond_3

    .line 116
    .line 117
    const-string p2, "char"

    .line 118
    .line 119
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 124
    .line 125
    .line 126
    const-string p2, "java/lang/Character"

    .line 127
    .line 128
    const-string p3, "(C)Ljava/lang/Character;"

    .line 129
    .line 130
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 136
    .line 137
    if-ne p2, v4, :cond_4

    .line 138
    .line 139
    const-string p2, "long"

    .line 140
    .line 141
    invoke-virtual {p3, p2, v1}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    const/16 p3, 0x16

    .line 146
    .line 147
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 148
    .line 149
    .line 150
    const-string p2, "java/lang/Long"

    .line 151
    .line 152
    const-string p3, "(J)Ljava/lang/Long;"

    .line 153
    .line 154
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 160
    .line 161
    if-ne p2, v4, :cond_5

    .line 162
    .line 163
    const-string p2, "float"

    .line 164
    .line 165
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    const/16 p3, 0x17

    .line 170
    .line 171
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 172
    .line 173
    .line 174
    const-string p2, "java/lang/Float"

    .line 175
    .line 176
    const-string p3, "(F)Ljava/lang/Float;"

    .line 177
    .line 178
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_5
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 184
    .line 185
    if-ne p2, v4, :cond_6

    .line 186
    .line 187
    const-string p2, "double"

    .line 188
    .line 189
    invoke-virtual {p3, p2, v1}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    const/16 p3, 0x18

    .line 194
    .line 195
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 196
    .line 197
    .line 198
    const-string p2, "java/lang/Double"

    .line 199
    .line 200
    const-string p3, "(D)Ljava/lang/Double;"

    .line 201
    .line 202
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 207
    .line 208
    if-ne p2, v1, :cond_7

    .line 209
    .line 210
    const-string p2, "boolean"

    .line 211
    .line 212
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 217
    .line 218
    .line 219
    const-string p2, "java/lang/Boolean"

    .line 220
    .line 221
    const-string p3, "(Z)Ljava/lang/Boolean;"

    .line 222
    .line 223
    invoke-interface {p1, v6, p2, v5, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    .line 228
    .line 229
    if-ne p2, v1, :cond_8

    .line 230
    .line 231
    const-string p2, "decimal"

    .line 232
    .line 233
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_8
    const-class v1, Ljava/lang/String;

    .line 242
    .line 243
    if-ne p2, v1, :cond_9

    .line 244
    .line 245
    const-string p2, "string"

    .line 246
    .line 247
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_a

    .line 260
    .line 261
    const-string p2, "enum"

    .line 262
    .line 263
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_a
    const-class v1, Ljava/util/List;

    .line 272
    .line 273
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-eqz p2, :cond_b

    .line 278
    .line 279
    const-string p2, "list"

    .line 280
    .line 281
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 286
    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_b
    const-string p2, "object"

    .line 290
    .line 291
    invoke-virtual {p3, p2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 296
    .line 297
    .line 298
    :goto_0
    sget-object p2, Lc5/a;->h:Ljava/lang/String;

    .line 299
    .line 300
    new-instance p3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v1, "(L"

    .line 306
    .line 307
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    sget-object v1, Lc5/a;->c:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v1, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 316
    .line 317
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p3

    .line 324
    const/16 v1, 0xb6

    .line 325
    .line 326
    const-string v2, "processKey"

    .line 327
    .line 328
    invoke-interface {p1, v1, p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const/16 p2, 0x3a

    .line 332
    .line 333
    sget p3, Lc5/a$a;->h:I

    .line 334
    .line 335
    invoke-interface {p1, p2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 336
    .line 337
    .line 338
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 339
    .line 340
    .line 341
    return-void
.end method

.method private u(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/16 v6, 0xa7

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    const/16 v8, 0x15

    .line 22
    .line 23
    const/16 v9, 0x59

    .line 24
    .line 25
    const/16 v10, 0x3a

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 30
    .line 31
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v11, "checkValue"

    .line 35
    .line 36
    invoke-virtual {v2, v11}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    invoke-interface {v0, v8, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 41
    .line 42
    .line 43
    const/16 v11, 0x9a

    .line 44
    .line 45
    invoke-interface {v0, v11, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 52
    .line 53
    .line 54
    sget v11, Lc5/a$a;->i:I

    .line 55
    .line 56
    invoke-interface {v0, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 57
    .line 58
    .line 59
    sget v11, Lc5/a$a;->j:I

    .line 60
    .line 61
    invoke-interface {v0, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v6, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    const/16 v5, 0x19

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-interface {v0, v5, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v5, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 80
    .line 81
    .line 82
    iget-object v7, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v7}, Lc5/a$a;->f(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v7, Lc5/a;->h:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v12, "(I)"

    .line 103
    .line 104
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-class v12, Lc5/p;

    .line 108
    .line 109
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    const/16 v13, 0xb6

    .line 121
    .line 122
    const-string v14, "getBeanContext"

    .line 123
    .line 124
    invoke-interface {v0, v13, v7, v14, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 v11, 0x2

    .line 128
    invoke-interface {v0, v5, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 129
    .line 130
    .line 131
    sget v14, Lc5/a$a;->h:I

    .line 132
    .line 133
    invoke-interface {v0, v5, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 134
    .line 135
    .line 136
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 137
    .line 138
    const-string v15, "valueOf"

    .line 139
    .line 140
    const/16 v6, 0xb8

    .line 141
    .line 142
    if-ne v4, v14, :cond_1

    .line 143
    .line 144
    const-string v4, "byte"

    .line 145
    .line 146
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 151
    .line 152
    .line 153
    const-string v4, "java/lang/Byte"

    .line 154
    .line 155
    const-string v8, "(B)Ljava/lang/Byte;"

    .line 156
    .line 157
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 161
    .line 162
    .line 163
    sget v4, Lc5/a$a;->i:I

    .line 164
    .line 165
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_1
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 171
    .line 172
    if-ne v4, v14, :cond_2

    .line 173
    .line 174
    const-string v4, "short"

    .line 175
    .line 176
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 181
    .line 182
    .line 183
    const-string v4, "java/lang/Short"

    .line 184
    .line 185
    const-string v8, "(S)Ljava/lang/Short;"

    .line 186
    .line 187
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 191
    .line 192
    .line 193
    sget v4, Lc5/a$a;->i:I

    .line 194
    .line 195
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_2
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 201
    .line 202
    if-ne v4, v14, :cond_3

    .line 203
    .line 204
    const-string v4, "int"

    .line 205
    .line 206
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 211
    .line 212
    .line 213
    const-string v4, "java/lang/Integer"

    .line 214
    .line 215
    const-string v8, "(I)Ljava/lang/Integer;"

    .line 216
    .line 217
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 221
    .line 222
    .line 223
    sget v4, Lc5/a$a;->i:I

    .line 224
    .line 225
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_3
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 231
    .line 232
    if-ne v4, v14, :cond_4

    .line 233
    .line 234
    const-string v4, "char"

    .line 235
    .line 236
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 241
    .line 242
    .line 243
    const-string v4, "java/lang/Character"

    .line 244
    .line 245
    const-string v8, "(C)Ljava/lang/Character;"

    .line 246
    .line 247
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 251
    .line 252
    .line 253
    sget v4, Lc5/a$a;->i:I

    .line 254
    .line 255
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_4
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 261
    .line 262
    if-ne v4, v14, :cond_5

    .line 263
    .line 264
    const-string v4, "long"

    .line 265
    .line 266
    invoke-virtual {v2, v4, v11}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    const/16 v8, 0x16

    .line 271
    .line 272
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 273
    .line 274
    .line 275
    const-string v4, "java/lang/Long"

    .line 276
    .line 277
    const-string v8, "(J)Ljava/lang/Long;"

    .line 278
    .line 279
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 283
    .line 284
    .line 285
    sget v4, Lc5/a$a;->i:I

    .line 286
    .line 287
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_5
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 293
    .line 294
    if-ne v4, v14, :cond_6

    .line 295
    .line 296
    const-string v4, "float"

    .line 297
    .line 298
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    const/16 v8, 0x17

    .line 303
    .line 304
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 305
    .line 306
    .line 307
    const-string v4, "java/lang/Float"

    .line 308
    .line 309
    const-string v8, "(F)Ljava/lang/Float;"

    .line 310
    .line 311
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 315
    .line 316
    .line 317
    sget v4, Lc5/a$a;->i:I

    .line 318
    .line 319
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_6
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 325
    .line 326
    if-ne v4, v14, :cond_7

    .line 327
    .line 328
    const-string v4, "double"

    .line 329
    .line 330
    invoke-virtual {v2, v4, v11}, Lc5/a$a;->h(Ljava/lang/String;I)I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    const/16 v8, 0x18

    .line 335
    .line 336
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 337
    .line 338
    .line 339
    const-string v4, "java/lang/Double"

    .line 340
    .line 341
    const-string v8, "(D)Ljava/lang/Double;"

    .line 342
    .line 343
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 347
    .line 348
    .line 349
    sget v4, Lc5/a$a;->i:I

    .line 350
    .line 351
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :cond_7
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 357
    .line 358
    if-ne v4, v11, :cond_8

    .line 359
    .line 360
    const-string v4, "boolean"

    .line 361
    .line 362
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-interface {v0, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 367
    .line 368
    .line 369
    const-string v4, "java/lang/Boolean"

    .line 370
    .line 371
    const-string v8, "(Z)Ljava/lang/Boolean;"

    .line 372
    .line 373
    invoke-interface {v0, v6, v4, v15, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 377
    .line 378
    .line 379
    sget v4, Lc5/a$a;->i:I

    .line 380
    .line 381
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_8
    const-class v6, Ljava/math/BigDecimal;

    .line 387
    .line 388
    if-ne v4, v6, :cond_9

    .line 389
    .line 390
    const-string v4, "decimal"

    .line 391
    .line 392
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 397
    .line 398
    .line 399
    sget v4, Lc5/a$a;->i:I

    .line 400
    .line 401
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 402
    .line 403
    .line 404
    sget v4, Lc5/a$a;->i:I

    .line 405
    .line 406
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 407
    .line 408
    .line 409
    goto :goto_0

    .line 410
    :cond_9
    const-class v6, Ljava/lang/String;

    .line 411
    .line 412
    if-ne v4, v6, :cond_a

    .line 413
    .line 414
    const-string v4, "string"

    .line 415
    .line 416
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 421
    .line 422
    .line 423
    sget v4, Lc5/a$a;->i:I

    .line 424
    .line 425
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 426
    .line 427
    .line 428
    sget v4, Lc5/a$a;->i:I

    .line 429
    .line 430
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 431
    .line 432
    .line 433
    goto :goto_0

    .line 434
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    if-eqz v6, :cond_b

    .line 439
    .line 440
    const-string v4, "enum"

    .line 441
    .line 442
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 447
    .line 448
    .line 449
    sget v4, Lc5/a$a;->i:I

    .line 450
    .line 451
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 452
    .line 453
    .line 454
    sget v4, Lc5/a$a;->i:I

    .line 455
    .line 456
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 457
    .line 458
    .line 459
    goto :goto_0

    .line 460
    :cond_b
    const-class v6, Ljava/util/List;

    .line 461
    .line 462
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_c

    .line 467
    .line 468
    const-string v4, "list"

    .line 469
    .line 470
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 475
    .line 476
    .line 477
    sget v4, Lc5/a$a;->i:I

    .line 478
    .line 479
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 480
    .line 481
    .line 482
    sget v4, Lc5/a$a;->i:I

    .line 483
    .line 484
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 485
    .line 486
    .line 487
    goto :goto_0

    .line 488
    :cond_c
    const-string v4, "object"

    .line 489
    .line 490
    invoke-virtual {v2, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 495
    .line 496
    .line 497
    sget v4, Lc5/a$a;->i:I

    .line 498
    .line 499
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 500
    .line 501
    .line 502
    sget v4, Lc5/a$a;->i:I

    .line 503
    .line 504
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 505
    .line 506
    .line 507
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    const-string v6, "(L"

    .line 513
    .line 514
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    sget-object v6, Lc5/a;->c:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v6, ";"

    .line 523
    .line 524
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    const-string v6, "Ljava/lang/Object;Ljava/lang/String;"

    .line 535
    .line 536
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v6, "Ljava/lang/Object;"

    .line 540
    .line 541
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v6, ")Ljava/lang/Object;"

    .line 545
    .line 546
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    const-string v6, "processValue"

    .line 554
    .line 555
    invoke-interface {v0, v13, v7, v6, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    sget v4, Lc5/a$a;->j:I

    .line 559
    .line 560
    invoke-interface {v0, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 561
    .line 562
    .line 563
    sget v4, Lc5/a$a;->i:I

    .line 564
    .line 565
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 566
    .line 567
    .line 568
    sget v4, Lc5/a$a;->j:I

    .line 569
    .line 570
    invoke-interface {v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 571
    .line 572
    .line 573
    const/16 v4, 0xa5

    .line 574
    .line 575
    invoke-interface {v0, v4, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 576
    .line 577
    .line 578
    invoke-direct/range {p0 .. p4}, Lc5/a;->y(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 579
    .line 580
    .line 581
    move-object/from16 v1, p4

    .line 582
    .line 583
    const/16 v2, 0xa7

    .line 584
    .line 585
    invoke-interface {v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 586
    .line 587
    .line 588
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 589
    .line 590
    .line 591
    return-void
.end method

.method private v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 6
    .line 7
    .line 8
    const-string v0, "seperator"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/16 v0, 0x36

    .line 15
    .line 16
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private w(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V
    .locals 8

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p4}, Lc5/a$a;->e(Lc5/a$a;)Lc5/f1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lc5/f1;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xb6

    .line 19
    .line 20
    const/16 v2, 0x19

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-interface {p2, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    invoke-interface {p2, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-interface {p2, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "isWriteClassName"

    .line 39
    .line 40
    const-string v4, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    .line 41
    .line 42
    invoke-interface {p2, v1, v0, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x9a

    .line 46
    .line 47
    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->q(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2, p4, p3}, Lc5/a;->i(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;Lcom/alibaba/fastjson/util/d;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "string"

    .line 57
    .line 58
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v4, 0x3a

    .line 63
    .line 64
    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p2, p3, p4, p1}, Lc5/a;->g(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 71
    .line 72
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 76
    .line 77
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-interface {p2, v2, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 85
    .line 86
    .line 87
    const/16 v6, 0xc7

    .line 88
    .line 89
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p2, p3, p4}, Lc5/a;->l(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 93
    .line 94
    .line 95
    const/16 v6, 0xa7

    .line 96
    .line 97
    invoke-interface {p2, v6, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 101
    .line 102
    .line 103
    iget-object p3, p3, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    .line 104
    .line 105
    const-string v3, "trim"

    .line 106
    .line 107
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_1

    .line 112
    .line 113
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 118
    .line 119
    .line 120
    const-string p3, "java/lang/String"

    .line 121
    .line 122
    const-string v6, "()Ljava/lang/String;"

    .line 123
    .line 124
    invoke-interface {p2, v1, p3, v3, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    invoke-interface {p2, v4, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 132
    .line 133
    .line 134
    :cond_1
    invoke-static {p4}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    const-string v3, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 139
    .line 140
    const-string v4, "seperator"

    .line 141
    .line 142
    const/16 v6, 0x15

    .line 143
    .line 144
    const-string v7, "out"

    .line 145
    .line 146
    if-eqz p3, :cond_2

    .line 147
    .line 148
    invoke-virtual {p4, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    invoke-interface {p2, v6, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 160
    .line 161
    .line 162
    sget p3, Lc5/a$a;->h:I

    .line 163
    .line 164
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 172
    .line 173
    .line 174
    sget-object p3, Lc5/a;->f:Ljava/lang/String;

    .line 175
    .line 176
    const-string v0, "writeFieldValueStringWithDoubleQuoteCheck"

    .line 177
    .line 178
    invoke-interface {p2, v1, p3, v0, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p4, v7}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p4, v4}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    invoke-interface {p2, v6, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 194
    .line 195
    .line 196
    sget p3, Lc5/a$a;->h:I

    .line 197
    .line 198
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p4, v0}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result p3

    .line 205
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 206
    .line 207
    .line 208
    sget-object p3, Lc5/a;->f:Ljava/lang/String;

    .line 209
    .line 210
    const-string v0, "writeFieldValue"

    .line 211
    .line 212
    invoke-interface {p2, v1, p3, v0, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_0
    invoke-direct {p0, p2, p4}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method private x(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb6

    .line 6
    .line 7
    const-string v2, "out"

    .line 8
    .line 9
    const/16 v3, 0x19

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 18
    .line 19
    .line 20
    sget p2, Lc5/a$a;->h:I

    .line 21
    .line 22
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 23
    .line 24
    .line 25
    sget-object p2, Lc5/a;->f:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "writeFieldNameDirect"

    .line 28
    .line 29
    const-string v2, "(Ljava/lang/String;)V"

    .line 30
    .line 31
    invoke-interface {p1, v1, p2, v0, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2, v2}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 40
    .line 41
    .line 42
    sget p2, Lc5/a$a;->h:I

    .line 43
    .line 44
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lc5/a;->f:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "writeFieldName"

    .line 54
    .line 55
    const-string v2, "(Ljava/lang/String;Z)V"

    .line 56
    .line 57
    invoke-interface {p1, v1, p2, v0, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private y(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/util/d;->k()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 14
    .line 15
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 16
    .line 17
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p3 .. p3}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const-string v8, "object"

    .line 25
    .line 26
    const/16 v9, 0x19

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-interface {v1, v9, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget v7, Lc5/a$a;->j:I

    .line 39
    .line 40
    invoke-interface {v1, v9, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/16 v7, 0x59

    .line 44
    .line 45
    invoke-interface {v1, v7}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/16 v10, 0x3a

    .line 53
    .line 54
    invoke-interface {v1, v10, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 55
    .line 56
    .line 57
    const/16 v7, 0xc7

    .line 58
    .line 59
    invoke-interface {v1, v7, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 60
    .line 61
    .line 62
    invoke-direct/range {p0 .. p3}, Lc5/a;->l(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 63
    .line 64
    .line 65
    const/16 v7, 0xa7

    .line 66
    .line 67
    move-object/from16 v11, p4

    .line 68
    .line 69
    invoke-interface {v1, v7, v11}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 73
    .line 74
    .line 75
    const-string v6, "out"

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-interface {v1, v9, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 82
    .line 83
    .line 84
    const-string v6, "seperator"

    .line 85
    .line 86
    invoke-virtual {v3, v6}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/16 v11, 0x15

    .line 91
    .line 92
    invoke-interface {v1, v11, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 93
    .line 94
    .line 95
    sget-object v6, Lc5/a;->f:Ljava/lang/String;

    .line 96
    .line 97
    const-string v11, "(I)V"

    .line 98
    .line 99
    const/16 v12, 0xb6

    .line 100
    .line 101
    const-string v13, "write"

    .line 102
    .line 103
    invoke-interface {v1, v12, v6, v13, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1, v3}, Lc5/a;->x(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 110
    .line 111
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v11, Lcom/alibaba/fastjson/asm/f;

    .line 115
    .line 116
    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    const-string v15, "Ljava/lang/reflect/Type;"

    .line 128
    .line 129
    const-string v7, "_asm_fieldType"

    .line 130
    .line 131
    if-eqz v14, :cond_7

    .line 132
    .line 133
    invoke-static {v5}, La5/h;->w(Ljava/lang/Class;)Z

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-nez v14, :cond_7

    .line 138
    .line 139
    invoke-virtual {v3, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 144
    .line 145
    .line 146
    const-string v14, "getClass"

    .line 147
    .line 148
    const-string v10, "()Ljava/lang/Class;"

    .line 149
    .line 150
    const-string v9, "java/lang/Object"

    .line 151
    .line 152
    invoke-interface {v1, v12, v9, v14, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {v5}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    const/16 v5, 0xa6

    .line 167
    .line 168
    invoke-interface {v1, v5, v11}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, v3, v1, v2}, Lc5/a;->j(Lc5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 172
    .line 173
    .line 174
    const-string v5, "fied_ser"

    .line 175
    .line 176
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    const/16 v10, 0x3a

    .line 181
    .line 182
    invoke-interface {v1, v10, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 183
    .line 184
    .line 185
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 186
    .line 187
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 191
    .line 192
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    const/16 v12, 0x19

    .line 200
    .line 201
    invoke-interface {v1, v12, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 202
    .line 203
    .line 204
    sget-object v12, Lc5/a;->h:Ljava/lang/String;

    .line 205
    .line 206
    const/16 v14, 0xc1

    .line 207
    .line 208
    invoke-interface {v1, v14, v12}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/16 v14, 0x99

    .line 212
    .line 213
    invoke-interface {v1, v14, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 214
    .line 215
    .line 216
    iget v14, v2, Lcom/alibaba/fastjson/util/d;->i:I

    .line 217
    .line 218
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 219
    .line 220
    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 221
    .line 222
    and-int/2addr v0, v14

    .line 223
    move-object/from16 v16, v4

    .line 224
    .line 225
    if-eqz v0, :cond_1

    .line 226
    .line 227
    const/4 v0, 0x1

    .line 228
    goto :goto_1

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 230
    :goto_1
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 231
    .line 232
    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 233
    .line 234
    and-int/2addr v4, v14

    .line 235
    if-eqz v4, :cond_2

    .line 236
    .line 237
    const/4 v4, 0x1

    .line 238
    goto :goto_2

    .line 239
    :cond_2
    const/4 v4, 0x0

    .line 240
    :goto_2
    if-nez v0, :cond_5

    .line 241
    .line 242
    invoke-static/range {p3 .. p3}, Lc5/a$a;->c(Lc5/a$a;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_3

    .line 247
    .line 248
    invoke-static/range {p3 .. p3}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_3

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_3
    if-eqz v4, :cond_4

    .line 256
    .line 257
    const-string v0, "writeAsArray"

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_4
    move-object v0, v13

    .line 261
    goto :goto_4

    .line 262
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 263
    .line 264
    const-string v0, "writeAsArrayNonContext"

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_6
    const-string v0, "writeDirectNonContext"

    .line 268
    .line 269
    :goto_4
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    const/16 v14, 0x19

    .line 274
    .line 275
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 276
    .line 277
    .line 278
    const/16 v4, 0xc0

    .line 279
    .line 280
    invoke-interface {v1, v4, v12}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const/4 v4, 0x1

    .line 284
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 292
    .line 293
    .line 294
    sget v4, Lc5/a$a;->h:I

    .line 295
    .line 296
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 297
    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 301
    .line 302
    .line 303
    invoke-static/range {p3 .. p3}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    move-object/from16 v17, v11

    .line 313
    .line 314
    iget-object v11, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    const/16 v14, 0xb4

    .line 327
    .line 328
    invoke-interface {v1, v14, v4, v11, v15}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget v4, v2, Lcom/alibaba/fastjson/util/d;->i:I

    .line 332
    .line 333
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v11, "(L"

    .line 346
    .line 347
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    sget-object v14, Lc5/a;->c:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    move-object/from16 v18, v6

    .line 356
    .line 357
    const-string v6, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 358
    .line 359
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    move-object/from16 v19, v13

    .line 367
    .line 368
    const/16 v13, 0xb6

    .line 369
    .line 370
    invoke-interface {v1, v13, v12, v0, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const/16 v0, 0xa7

    .line 374
    .line 375
    invoke-interface {v1, v0, v10}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v5}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    const/16 v4, 0x19

    .line 386
    .line 387
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 388
    .line 389
    .line 390
    const/4 v0, 0x1

    .line 391
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 399
    .line 400
    .line 401
    sget v0, Lc5/a$a;->h:I

    .line 402
    .line 403
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x0

    .line 407
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 408
    .line 409
    .line 410
    invoke-static/range {p3 .. p3}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    iget-object v5, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    const/16 v5, 0xb4

    .line 432
    .line 433
    invoke-interface {v1, v5, v0, v4, v15}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget v0, v2, Lcom/alibaba/fastjson/util/d;->i:I

    .line 437
    .line 438
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    sget-object v0, Lc5/a;->d:Ljava/lang/String;

    .line 446
    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    const/16 v5, 0xb9

    .line 466
    .line 467
    move-object/from16 v6, v19

    .line 468
    .line 469
    invoke-interface {v1, v5, v0, v6, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v4, v18

    .line 476
    .line 477
    const/16 v0, 0xa7

    .line 478
    .line 479
    invoke-interface {v1, v0, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v0, v17

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_7
    move-object/from16 v16, v4

    .line 486
    .line 487
    move-object v4, v6

    .line 488
    move-object v0, v11

    .line 489
    :goto_5
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 490
    .line 491
    .line 492
    const/16 v0, 0x19

    .line 493
    .line 494
    const/4 v5, 0x1

    .line 495
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 496
    .line 497
    .line 498
    invoke-static/range {p3 .. p3}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    if-eqz v5, :cond_8

    .line 503
    .line 504
    invoke-virtual {v3, v8}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 509
    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_8
    sget v5, Lc5/a$a;->j:I

    .line 513
    .line 514
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 515
    .line 516
    .line 517
    :goto_6
    if-eqz v16, :cond_9

    .line 518
    .line 519
    move-object/from16 v5, v16

    .line 520
    .line 521
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 525
    .line 526
    const-string v2, "writeWithFormat"

    .line 527
    .line 528
    const-string v5, "(Ljava/lang/Object;Ljava/lang/String;)V"

    .line 529
    .line 530
    const/16 v6, 0xb6

    .line 531
    .line 532
    invoke-interface {v1, v6, v0, v2, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_9
    sget v5, Lc5/a$a;->h:I

    .line 537
    .line 538
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 539
    .line 540
    .line 541
    iget-object v0, v2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 542
    .line 543
    instance-of v5, v0, Ljava/lang/Class;

    .line 544
    .line 545
    const-string v6, "writeWithFieldName"

    .line 546
    .line 547
    if-eqz v5, :cond_a

    .line 548
    .line 549
    check-cast v0, Ljava/lang/Class;

    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-eqz v0, :cond_a

    .line 556
    .line 557
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 558
    .line 559
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 560
    .line 561
    const/16 v5, 0xb6

    .line 562
    .line 563
    invoke-interface {v1, v5, v0, v6, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    goto :goto_8

    .line 567
    :cond_a
    iget-object v0, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 568
    .line 569
    const-class v5, Ljava/lang/String;

    .line 570
    .line 571
    if-ne v0, v5, :cond_b

    .line 572
    .line 573
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    goto :goto_7

    .line 585
    :cond_b
    const/16 v0, 0x19

    .line 586
    .line 587
    const/4 v5, 0x0

    .line 588
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 589
    .line 590
    .line 591
    invoke-static/range {p3 .. p3}, Lc5/a$a;->d(Lc5/a$a;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .line 599
    .line 600
    iget-object v8, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 601
    .line 602
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    const/16 v7, 0xb4

    .line 613
    .line 614
    invoke-interface {v1, v7, v0, v5, v15}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    :goto_7
    iget v0, v2, Lcom/alibaba/fastjson/util/d;->i:I

    .line 618
    .line 619
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    sget-object v0, Lc5/a;->c:Ljava/lang/String;

    .line 627
    .line 628
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 629
    .line 630
    const/16 v5, 0xb6

    .line 631
    .line 632
    invoke-interface {v1, v5, v0, v6, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :goto_8
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 636
    .line 637
    .line 638
    move-object/from16 v0, p0

    .line 639
    .line 640
    invoke-direct {v0, v1, v3}, Lc5/a;->v(Lcom/alibaba/fastjson/asm/h;Lc5/a$a;)V

    .line 641
    .line 642
    .line 643
    return-void
.end method


# virtual methods
.method public z(Lc5/f1;)Lc5/p0;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v9, "writeDirectNonContext"

    .line 6
    .line 7
    const-string v10, "writeNormal"

    .line 8
    .line 9
    const-string v2, ")V"

    .line 10
    .line 11
    const-string v3, "("

    .line 12
    .line 13
    const-string v4, "Ljava/lang/reflect/Type;"

    .line 14
    .line 15
    const/4 v12, 0x1

    .line 16
    iget-object v13, v7, Lc5/f1;->a:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_1b

    .line 23
    .line 24
    const-class v5, Lz4/d;

    .line 25
    .line 26
    invoke-static {v13, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    move-object v14, v5

    .line 31
    check-cast v14, Lz4/d;

    .line 32
    .line 33
    iget-object v15, v7, Lc5/f1;->e:[Lcom/alibaba/fastjson/util/d;

    .line 34
    .line 35
    array-length v5, v15

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_0
    if-ge v6, v5, :cond_1

    .line 38
    .line 39
    aget-object v8, v15, v6

    .line 40
    .line 41
    iget-object v1, v8, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iget-object v1, v8, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    new-instance v1, Lc5/p0;

    .line 60
    .line 61
    invoke-direct {v1, v7}, Lc5/p0;-><init>(Lc5/f1;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_0
    add-int/2addr v6, v12

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v8, v7, Lc5/f1;->f:[Lcom/alibaba/fastjson/util/d;

    .line 68
    .line 69
    iget-object v1, v7, Lc5/f1;->e:[Lcom/alibaba/fastjson/util/d;

    .line 70
    .line 71
    if-ne v8, v1, :cond_2

    .line 72
    .line 73
    move/from16 v18, v12

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/16 v18, 0x0

    .line 77
    .line 78
    :goto_1
    array-length v1, v8

    .line 79
    const/16 v5, 0x100

    .line 80
    .line 81
    if-le v1, v5, :cond_3

    .line 82
    .line 83
    new-instance v1, Lc5/p0;

    .line 84
    .line 85
    invoke-direct {v1, v7}, Lc5/p0;-><init>(Lc5/f1;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_3
    array-length v1, v8

    .line 90
    const/4 v5, 0x0

    .line 91
    :goto_2
    if-ge v5, v1, :cond_5

    .line 92
    .line 93
    aget-object v6, v8, v5

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/d;->m()Ljava/lang/reflect/Member;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_4

    .line 108
    .line 109
    new-instance v1, Lc5/p0;

    .line 110
    .line 111
    invoke-direct {v1, v7}, Lc5/p0;-><init>(Lc5/f1;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_4
    add-int/2addr v5, v12

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "ASMSerializer_"

    .line 123
    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v5, v0, Lc5/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, "_"

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-class v5, Lc5/a;

    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const/16 v11, 0x2e

    .line 170
    .line 171
    const/16 v12, 0x2f

    .line 172
    .line 173
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v11, "/"

    .line 181
    .line 182
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    new-instance v11, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v5, "."

    .line 201
    .line 202
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    move-object v12, v1

    .line 213
    move-object v11, v6

    .line 214
    goto :goto_3

    .line 215
    :cond_6
    move-object v11, v1

    .line 216
    move-object v12, v11

    .line 217
    :goto_3
    new-instance v6, Lcom/alibaba/fastjson/asm/c;

    .line 218
    .line 219
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/c;-><init>()V

    .line 220
    .line 221
    .line 222
    sget-object v23, Lc5/a;->h:Ljava/lang/String;

    .line 223
    .line 224
    sget-object v1, Lc5/a;->d:Ljava/lang/String;

    .line 225
    .line 226
    filled-new-array {v1}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v24

    .line 230
    const/16 v20, 0x31

    .line 231
    .line 232
    const/16 v21, 0x21

    .line 233
    .line 234
    move-object/from16 v19, v6

    .line 235
    .line 236
    move-object/from16 v22, v11

    .line 237
    .line 238
    invoke-virtual/range {v19 .. v24}, Lcom/alibaba/fastjson/asm/c;->k(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    array-length v1, v8

    .line 242
    const/4 v5, 0x0

    .line 243
    :goto_4
    const-string v7, "_asm_fieldType"

    .line 244
    .line 245
    move-object/from16 v26, v12

    .line 246
    .line 247
    const-class v12, Ljava/lang/String;

    .line 248
    .line 249
    if-ge v5, v1, :cond_a

    .line 250
    .line 251
    move/from16 v19, v1

    .line 252
    .line 253
    aget-object v1, v8, v5

    .line 254
    .line 255
    move-object/from16 v27, v15

    .line 256
    .line 257
    iget-object v15, v1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 258
    .line 259
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    if-nez v15, :cond_7

    .line 264
    .line 265
    iget-object v15, v1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 266
    .line 267
    if-ne v15, v12, :cond_8

    .line 268
    .line 269
    :cond_7
    const/4 v12, 0x1

    .line 270
    goto :goto_5

    .line 271
    :cond_8
    new-instance v12, Lcom/alibaba/fastjson/asm/d;

    .line 272
    .line 273
    new-instance v15, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    iget-object v0, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const/4 v7, 0x1

    .line 291
    invoke-direct {v12, v6, v7, v0, v4}, Lcom/alibaba/fastjson/asm/d;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v12}, Lcom/alibaba/fastjson/asm/d;->c()V

    .line 295
    .line 296
    .line 297
    const-class v0, Ljava/util/List;

    .line 298
    .line 299
    iget-object v7, v1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 300
    .line 301
    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_9

    .line 306
    .line 307
    new-instance v0, Lcom/alibaba/fastjson/asm/d;

    .line 308
    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    iget-object v12, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v12, "_asm_list_item_ser_"

    .line 320
    .line 321
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    sget-object v12, Lc5/a;->e:Ljava/lang/String;

    .line 329
    .line 330
    const/4 v15, 0x1

    .line 331
    invoke-direct {v0, v6, v15, v7, v12}, Lcom/alibaba/fastjson/asm/d;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/d;->c()V

    .line 335
    .line 336
    .line 337
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/asm/d;

    .line 338
    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    iget-object v1, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v1, "_asm_ser_"

    .line 350
    .line 351
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    sget-object v7, Lc5/a;->e:Ljava/lang/String;

    .line 359
    .line 360
    const/4 v12, 0x1

    .line 361
    invoke-direct {v0, v6, v12, v1, v7}, Lcom/alibaba/fastjson/asm/d;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/d;->c()V

    .line 365
    .line 366
    .line 367
    :goto_5
    add-int/2addr v5, v12

    .line 368
    move-object/from16 v0, p0

    .line 369
    .line 370
    move/from16 v1, v19

    .line 371
    .line 372
    move-object/from16 v12, v26

    .line 373
    .line 374
    move-object/from16 v15, v27

    .line 375
    .line 376
    goto/16 :goto_4

    .line 377
    .line 378
    :cond_a
    move-object/from16 v27, v15

    .line 379
    .line 380
    new-instance v0, Lcom/alibaba/fastjson/asm/i;

    .line 381
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-class v15, Lc5/f1;

    .line 391
    .line 392
    invoke-static {v15}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v23

    .line 406
    const/16 v24, 0x0

    .line 407
    .line 408
    const/16 v25, 0x0

    .line 409
    .line 410
    const/16 v21, 0x1

    .line 411
    .line 412
    const-string v22, "<init>"

    .line 413
    .line 414
    move-object/from16 v19, v0

    .line 415
    .line 416
    move-object/from16 v20, v6

    .line 417
    .line 418
    invoke-direct/range {v19 .. v25}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const/16 v5, 0x19

    .line 422
    .line 423
    const/4 v1, 0x0

    .line 424
    invoke-interface {v0, v5, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 425
    .line 426
    .line 427
    const/4 v1, 0x1

    .line 428
    invoke-interface {v0, v5, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 429
    .line 430
    .line 431
    sget-object v1, Lc5/a;->h:Ljava/lang/String;

    .line 432
    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-static {v15}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    const-string v3, "<init>"

    .line 456
    .line 457
    const/16 v5, 0xb7

    .line 458
    .line 459
    invoke-interface {v0, v5, v1, v3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const/4 v1, 0x0

    .line 463
    :goto_6
    array-length v2, v8

    .line 464
    if-ge v1, v2, :cond_e

    .line 465
    .line 466
    aget-object v2, v8, v1

    .line 467
    .line 468
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-nez v3, :cond_d

    .line 475
    .line 476
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 477
    .line 478
    if-ne v3, v12, :cond_b

    .line 479
    .line 480
    move-object/from16 v20, v6

    .line 481
    .line 482
    move-object/from16 v21, v12

    .line 483
    .line 484
    const/4 v2, 0x1

    .line 485
    const/16 v5, 0xb7

    .line 486
    .line 487
    goto/16 :goto_9

    .line 488
    .line 489
    :cond_b
    const/16 v3, 0x19

    .line 490
    .line 491
    const/4 v5, 0x0

    .line 492
    invoke-interface {v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 496
    .line 497
    if-eqz v3, :cond_c

    .line 498
    .line 499
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    .line 500
    .line 501
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 513
    .line 514
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    const-class v3, Lcom/alibaba/fastjson/util/b;

    .line 522
    .line 523
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    const-string v5, "getMethodType"

    .line 528
    .line 529
    move-object/from16 v20, v6

    .line 530
    .line 531
    const-string v6, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    .line 532
    .line 533
    move-object/from16 v21, v12

    .line 534
    .line 535
    const/16 v12, 0xb8

    .line 536
    .line 537
    invoke-interface {v0, v12, v3, v5, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const/16 v5, 0xb7

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_c
    move-object/from16 v20, v6

    .line 544
    .line 545
    move-object/from16 v21, v12

    .line 546
    .line 547
    const/4 v3, 0x0

    .line 548
    const/16 v5, 0x19

    .line 549
    .line 550
    invoke-interface {v0, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 551
    .line 552
    .line 553
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    sget-object v3, Lc5/a;->h:Ljava/lang/String;

    .line 561
    .line 562
    const-string v6, "getFieldType"

    .line 563
    .line 564
    const-string v12, "(I)Ljava/lang/reflect/Type;"

    .line 565
    .line 566
    const/16 v5, 0xb7

    .line 567
    .line 568
    invoke-interface {v0, v5, v3, v6, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .line 575
    .line 576
    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 577
    .line 578
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    const/16 v3, 0xb5

    .line 589
    .line 590
    invoke-interface {v0, v3, v11, v2, v4}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :goto_8
    const/4 v2, 0x1

    .line 594
    goto :goto_9

    .line 595
    :cond_d
    move-object/from16 v20, v6

    .line 596
    .line 597
    move-object/from16 v21, v12

    .line 598
    .line 599
    const/16 v5, 0xb7

    .line 600
    .line 601
    goto :goto_8

    .line 602
    :goto_9
    add-int/2addr v1, v2

    .line 603
    move-object/from16 v6, v20

    .line 604
    .line 605
    move-object/from16 v12, v21

    .line 606
    .line 607
    goto/16 :goto_6

    .line 608
    .line 609
    :cond_e
    move-object/from16 v20, v6

    .line 610
    .line 611
    const/16 v7, 0xb1

    .line 612
    .line 613
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 614
    .line 615
    .line 616
    const/4 v12, 0x4

    .line 617
    invoke-interface {v0, v12, v12}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 618
    .line 619
    .line 620
    invoke-interface {v0}, Lcom/alibaba/fastjson/asm/h;->k()V

    .line 621
    .line 622
    .line 623
    if-eqz v14, :cond_10

    .line 624
    .line 625
    invoke-interface {v14}, Lz4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    array-length v1, v0

    .line 630
    const/4 v2, 0x0

    .line 631
    :goto_a
    if-ge v2, v1, :cond_10

    .line 632
    .line 633
    aget-object v3, v0, v2

    .line 634
    .line 635
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 636
    .line 637
    if-ne v3, v4, :cond_f

    .line 638
    .line 639
    const/4 v0, 0x1

    .line 640
    goto :goto_b

    .line 641
    :cond_f
    const/4 v3, 0x1

    .line 642
    add-int/2addr v2, v3

    .line 643
    goto :goto_a

    .line 644
    :cond_10
    const/4 v0, 0x0

    .line 645
    :goto_b
    const/4 v6, 0x0

    .line 646
    :goto_c
    const/4 v5, 0x7

    .line 647
    const-string v4, "entity"

    .line 648
    .line 649
    const/16 v3, 0xc0

    .line 650
    .line 651
    const/16 v2, 0xb4

    .line 652
    .line 653
    const-string v17, "java/io/IOException"

    .line 654
    .line 655
    const/4 v1, 0x3

    .line 656
    const-string v12, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 657
    .line 658
    const-string v7, "(L"

    .line 659
    .line 660
    move-object/from16 v28, v15

    .line 661
    .line 662
    const-string v15, "out"

    .line 663
    .line 664
    move/from16 v29, v0

    .line 665
    .line 666
    const/4 v0, 0x2

    .line 667
    if-ge v6, v1, :cond_16

    .line 668
    .line 669
    if-nez v6, :cond_11

    .line 670
    .line 671
    const-string v21, "write"

    .line 672
    .line 673
    move-object/from16 v23, v21

    .line 674
    .line 675
    move/from16 v30, v29

    .line 676
    .line 677
    const/16 v21, 0x1

    .line 678
    .line 679
    goto :goto_d

    .line 680
    :cond_11
    const/4 v1, 0x1

    .line 681
    if-ne v6, v1, :cond_12

    .line 682
    .line 683
    move-object/from16 v23, v10

    .line 684
    .line 685
    move/from16 v30, v29

    .line 686
    .line 687
    const/16 v21, 0x0

    .line 688
    .line 689
    goto :goto_d

    .line 690
    :cond_12
    move-object/from16 v23, v9

    .line 691
    .line 692
    const/16 v21, 0x1

    .line 693
    .line 694
    const/16 v30, 0x1

    .line 695
    .line 696
    :goto_d
    new-instance v1, Lc5/a$a;

    .line 697
    .line 698
    move-object/from16 v31, v1

    .line 699
    .line 700
    move-object v2, v8

    .line 701
    move-object/from16 v3, p1

    .line 702
    .line 703
    move-object/from16 v32, v4

    .line 704
    .line 705
    move-object v4, v11

    .line 706
    move-object/from16 v33, v8

    .line 707
    .line 708
    const/16 v8, 0x19

    .line 709
    .line 710
    move/from16 v5, v21

    .line 711
    .line 712
    move/from16 v35, v6

    .line 713
    .line 714
    move-object/from16 v34, v20

    .line 715
    .line 716
    move/from16 v6, v30

    .line 717
    .line 718
    invoke-direct/range {v1 .. v6}, Lc5/a$a;-><init>([Lcom/alibaba/fastjson/util/d;Lc5/f1;Ljava/lang/String;ZZ)V

    .line 719
    .line 720
    .line 721
    new-instance v1, Lcom/alibaba/fastjson/asm/i;

    .line 722
    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    sget-object v3, Lc5/a;->c:Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    const/16 v24, 0x0

    .line 744
    .line 745
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v25

    .line 749
    const/16 v21, 0x1

    .line 750
    .line 751
    move-object/from16 v19, v1

    .line 752
    .line 753
    move-object/from16 v22, v23

    .line 754
    .line 755
    move-object/from16 v23, v2

    .line 756
    .line 757
    invoke-direct/range {v19 .. v25}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 761
    .line 762
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 763
    .line 764
    .line 765
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 766
    .line 767
    .line 768
    const/16 v4, 0xc7

    .line 769
    .line 770
    invoke-interface {v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 771
    .line 772
    .line 773
    const/4 v4, 0x1

    .line 774
    invoke-interface {v1, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 775
    .line 776
    .line 777
    const-string v5, "writeNull"

    .line 778
    .line 779
    const-string v6, "()V"

    .line 780
    .line 781
    const/16 v0, 0xb6

    .line 782
    .line 783
    invoke-interface {v1, v0, v3, v5, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    const/16 v5, 0xb1

    .line 787
    .line 788
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 789
    .line 790
    .line 791
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 792
    .line 793
    .line 794
    invoke-interface {v1, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 795
    .line 796
    .line 797
    sget-object v2, Lc5/a;->g:Ljava/lang/String;

    .line 798
    .line 799
    const/16 v6, 0xb4

    .line 800
    .line 801
    invoke-interface {v1, v6, v3, v15, v2}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    move-object/from16 v2, v31

    .line 805
    .line 806
    invoke-virtual {v2, v15}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    move-result v4

    .line 810
    const/16 v5, 0x3a

    .line 811
    .line 812
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 813
    .line 814
    .line 815
    if-nez v18, :cond_13

    .line 816
    .line 817
    invoke-static {v2}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 818
    .line 819
    .line 820
    move-result v6

    .line 821
    if-nez v6, :cond_13

    .line 822
    .line 823
    if-eqz v14, :cond_14

    .line 824
    .line 825
    invoke-interface {v14}, Lz4/d;->alphabetic()Z

    .line 826
    .line 827
    .line 828
    move-result v6

    .line 829
    if-eqz v6, :cond_13

    .line 830
    .line 831
    goto :goto_e

    .line 832
    :cond_13
    const/4 v8, 0x3

    .line 833
    goto :goto_f

    .line 834
    :cond_14
    :goto_e
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 835
    .line 836
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v15}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    invoke-interface {v1, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 844
    .line 845
    .line 846
    sget-object v4, Lc5/a;->f:Ljava/lang/String;

    .line 847
    .line 848
    const-string v5, "isSortField"

    .line 849
    .line 850
    const-string v8, "()Z"

    .line 851
    .line 852
    invoke-interface {v1, v0, v4, v5, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    const/16 v4, 0x9a

    .line 856
    .line 857
    invoke-interface {v1, v4, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 858
    .line 859
    .line 860
    const/16 v4, 0x19

    .line 861
    .line 862
    const/4 v5, 0x0

    .line 863
    invoke-interface {v1, v4, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 864
    .line 865
    .line 866
    const/4 v5, 0x1

    .line 867
    invoke-interface {v1, v4, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 868
    .line 869
    .line 870
    const/4 v5, 0x2

    .line 871
    invoke-interface {v1, v4, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 872
    .line 873
    .line 874
    const/4 v8, 0x3

    .line 875
    invoke-interface {v1, v4, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 876
    .line 877
    .line 878
    const/4 v5, 0x4

    .line 879
    invoke-interface {v1, v4, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 880
    .line 881
    .line 882
    const/4 v4, 0x5

    .line 883
    const/16 v5, 0x15

    .line 884
    .line 885
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 886
    .line 887
    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    .line 889
    .line 890
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    const-string v5, "writeUnsorted"

    .line 907
    .line 908
    invoke-interface {v1, v0, v11, v5, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    const/16 v4, 0xb1

    .line 912
    .line 913
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 914
    .line 915
    .line 916
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 917
    .line 918
    .line 919
    :goto_f
    invoke-static {v2}, Lc5/a$a;->a(Lc5/a$a;)Z

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    if-eqz v4, :cond_15

    .line 924
    .line 925
    if-nez v30, :cond_15

    .line 926
    .line 927
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 928
    .line 929
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 930
    .line 931
    .line 932
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 933
    .line 934
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 935
    .line 936
    .line 937
    const/16 v6, 0x19

    .line 938
    .line 939
    const/4 v8, 0x0

    .line 940
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 941
    .line 942
    .line 943
    const/4 v8, 0x1

    .line 944
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 945
    .line 946
    .line 947
    sget-object v6, Lc5/a;->h:Ljava/lang/String;

    .line 948
    .line 949
    new-instance v8, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    const-string v0, ";)Z"

    .line 961
    .line 962
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    const-string v8, "writeDirect"

    .line 970
    .line 971
    move-object/from16 v21, v14

    .line 972
    .line 973
    const/16 v14, 0xb6

    .line 974
    .line 975
    invoke-interface {v1, v14, v6, v8, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    const/16 v0, 0x9a

    .line 979
    .line 980
    invoke-interface {v1, v0, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 981
    .line 982
    .line 983
    const/16 v6, 0x19

    .line 984
    .line 985
    const/4 v8, 0x0

    .line 986
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 987
    .line 988
    .line 989
    const/4 v8, 0x1

    .line 990
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 991
    .line 992
    .line 993
    const/4 v8, 0x2

    .line 994
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 995
    .line 996
    .line 997
    const/4 v8, 0x3

    .line 998
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 999
    .line 1000
    .line 1001
    const/4 v8, 0x4

    .line 1002
    invoke-interface {v1, v6, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1003
    .line 1004
    .line 1005
    const/4 v6, 0x5

    .line 1006
    const/16 v8, 0x15

    .line 1007
    .line 1008
    invoke-interface {v1, v8, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v6

    .line 1029
    const/16 v8, 0xb6

    .line 1030
    .line 1031
    invoke-interface {v1, v8, v11, v10, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    const/16 v6, 0xb1

    .line 1035
    .line 1036
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1037
    .line 1038
    .line 1039
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v2, v15}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1043
    .line 1044
    .line 1045
    move-result v5

    .line 1046
    const/16 v6, 0x19

    .line 1047
    .line 1048
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1049
    .line 1050
    .line 1051
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1052
    .line 1053
    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 1054
    .line 1055
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v5

    .line 1059
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1060
    .line 1061
    .line 1062
    sget-object v5, Lc5/a;->f:Ljava/lang/String;

    .line 1063
    .line 1064
    const-string v8, "isEnabled"

    .line 1065
    .line 1066
    const-string v14, "(I)Z"

    .line 1067
    .line 1068
    const/16 v15, 0xb6

    .line 1069
    .line 1070
    invoke-interface {v1, v15, v5, v8, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    const/16 v5, 0x99

    .line 1074
    .line 1075
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1076
    .line 1077
    .line 1078
    const/4 v5, 0x0

    .line 1079
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1080
    .line 1081
    .line 1082
    const/4 v5, 0x1

    .line 1083
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1084
    .line 1085
    .line 1086
    const/4 v5, 0x2

    .line 1087
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1088
    .line 1089
    .line 1090
    const/4 v5, 0x3

    .line 1091
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1092
    .line 1093
    .line 1094
    const/4 v5, 0x4

    .line 1095
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1096
    .line 1097
    .line 1098
    const/4 v6, 0x5

    .line 1099
    const/16 v8, 0x15

    .line 1100
    .line 1101
    invoke-interface {v1, v8, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1102
    .line 1103
    .line 1104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    const/16 v6, 0xb6

    .line 1123
    .line 1124
    invoke-interface {v1, v6, v11, v9, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    const/16 v3, 0xb1

    .line 1128
    .line 1129
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1130
    .line 1131
    .line 1132
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1133
    .line 1134
    .line 1135
    :goto_10
    const/16 v4, 0x19

    .line 1136
    .line 1137
    const/4 v6, 0x2

    .line 1138
    goto :goto_11

    .line 1139
    :cond_15
    move-object/from16 v21, v14

    .line 1140
    .line 1141
    const/16 v0, 0x9a

    .line 1142
    .line 1143
    const/16 v3, 0xb1

    .line 1144
    .line 1145
    const/4 v5, 0x4

    .line 1146
    goto :goto_10

    .line 1147
    :goto_11
    invoke-interface {v1, v4, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1148
    .line 1149
    .line 1150
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v4

    .line 1154
    const/16 v8, 0xc0

    .line 1155
    .line 1156
    invoke-interface {v1, v8, v4}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    move-object/from16 v14, v32

    .line 1160
    .line 1161
    invoke-virtual {v2, v14}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1162
    .line 1163
    .line 1164
    move-result v4

    .line 1165
    const/16 v7, 0x3a

    .line 1166
    .line 1167
    invoke-interface {v1, v7, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1168
    .line 1169
    .line 1170
    move-object/from16 v4, p0

    .line 1171
    .line 1172
    move-object/from16 v7, v33

    .line 1173
    .line 1174
    invoke-direct {v4, v13, v1, v7, v2}, Lc5/a;->B(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;[Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v2}, Lc5/a$a;->b(Lc5/a$a;)I

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    add-int/2addr v2, v6

    .line 1185
    const/4 v3, 0x7

    .line 1186
    invoke-interface {v1, v3, v2}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 1187
    .line 1188
    .line 1189
    invoke-interface {v1}, Lcom/alibaba/fastjson/asm/h;->k()V

    .line 1190
    .line 1191
    .line 1192
    const/4 v1, 0x1

    .line 1193
    add-int/lit8 v6, v35, 0x1

    .line 1194
    .line 1195
    move v12, v5

    .line 1196
    move-object v8, v7

    .line 1197
    move-object/from16 v14, v21

    .line 1198
    .line 1199
    move-object/from16 v15, v28

    .line 1200
    .line 1201
    move/from16 v0, v29

    .line 1202
    .line 1203
    move-object/from16 v20, v34

    .line 1204
    .line 1205
    const/16 v7, 0xb1

    .line 1206
    .line 1207
    goto/16 :goto_c

    .line 1208
    .line 1209
    :cond_16
    move v6, v2

    .line 1210
    move-object v14, v4

    .line 1211
    move-object v1, v8

    .line 1212
    move-object/from16 v34, v20

    .line 1213
    .line 1214
    move-object/from16 v4, p0

    .line 1215
    .line 1216
    move v8, v3

    .line 1217
    move v3, v5

    .line 1218
    if-nez v18, :cond_17

    .line 1219
    .line 1220
    new-instance v0, Lc5/a$a;

    .line 1221
    .line 1222
    const/4 v5, 0x0

    .line 1223
    move-object v9, v1

    .line 1224
    move-object v1, v0

    .line 1225
    move-object v2, v9

    .line 1226
    move v10, v3

    .line 1227
    move-object/from16 v3, p1

    .line 1228
    .line 1229
    move-object v10, v4

    .line 1230
    move-object v4, v11

    .line 1231
    move v8, v6

    .line 1232
    move/from16 v6, v29

    .line 1233
    .line 1234
    invoke-direct/range {v1 .. v6}, Lc5/a$a;-><init>([Lcom/alibaba/fastjson/util/d;Lc5/f1;Ljava/lang/String;ZZ)V

    .line 1235
    .line 1236
    .line 1237
    new-instance v1, Lcom/alibaba/fastjson/asm/i;

    .line 1238
    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    sget-object v3, Lc5/a;->c:Ljava/lang/String;

    .line 1248
    .line 1249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v23

    .line 1259
    const/16 v24, 0x0

    .line 1260
    .line 1261
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v25

    .line 1265
    const/16 v21, 0x1

    .line 1266
    .line 1267
    const-string v22, "writeUnsorted"

    .line 1268
    .line 1269
    move-object/from16 v19, v1

    .line 1270
    .line 1271
    move-object/from16 v20, v34

    .line 1272
    .line 1273
    invoke-direct/range {v19 .. v25}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    const/16 v2, 0x19

    .line 1277
    .line 1278
    const/4 v4, 0x1

    .line 1279
    invoke-interface {v1, v2, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1280
    .line 1281
    .line 1282
    sget-object v4, Lc5/a;->g:Ljava/lang/String;

    .line 1283
    .line 1284
    invoke-interface {v1, v8, v3, v15, v4}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v0, v15}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1288
    .line 1289
    .line 1290
    move-result v3

    .line 1291
    const/16 v4, 0x3a

    .line 1292
    .line 1293
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1294
    .line 1295
    .line 1296
    const/4 v3, 0x2

    .line 1297
    invoke-interface {v1, v2, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1298
    .line 1299
    .line 1300
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v2

    .line 1304
    const/16 v5, 0xc0

    .line 1305
    .line 1306
    invoke-interface {v1, v5, v2}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v0, v14}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1310
    .line 1311
    .line 1312
    move-result v2

    .line 1313
    invoke-interface {v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1314
    .line 1315
    .line 1316
    move-object/from16 v2, v27

    .line 1317
    .line 1318
    invoke-direct {v10, v13, v1, v2, v0}, Lc5/a;->B(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;[Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1319
    .line 1320
    .line 1321
    const/16 v2, 0xb1

    .line 1322
    .line 1323
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1324
    .line 1325
    .line 1326
    invoke-static {v0}, Lc5/a$a;->b(Lc5/a$a;)I

    .line 1327
    .line 1328
    .line 1329
    move-result v0

    .line 1330
    add-int/2addr v0, v3

    .line 1331
    const/4 v2, 0x7

    .line 1332
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 1333
    .line 1334
    .line 1335
    invoke-interface {v1}, Lcom/alibaba/fastjson/asm/h;->k()V

    .line 1336
    .line 1337
    .line 1338
    goto :goto_12

    .line 1339
    :cond_17
    move-object v9, v1

    .line 1340
    move-object v10, v4

    .line 1341
    move v8, v6

    .line 1342
    :goto_12
    const/4 v0, 0x0

    .line 1343
    const/4 v6, 0x3

    .line 1344
    :goto_13
    if-ge v0, v6, :cond_1a

    .line 1345
    .line 1346
    if-nez v0, :cond_18

    .line 1347
    .line 1348
    const-string v1, "writeAsArray"

    .line 1349
    .line 1350
    move-object/from16 v22, v1

    .line 1351
    .line 1352
    move/from16 v16, v29

    .line 1353
    .line 1354
    const/4 v5, 0x1

    .line 1355
    goto :goto_14

    .line 1356
    :cond_18
    const/4 v1, 0x1

    .line 1357
    if-ne v0, v1, :cond_19

    .line 1358
    .line 1359
    const-string v1, "writeAsArrayNormal"

    .line 1360
    .line 1361
    move-object/from16 v22, v1

    .line 1362
    .line 1363
    move/from16 v16, v29

    .line 1364
    .line 1365
    const/4 v5, 0x0

    .line 1366
    goto :goto_14

    .line 1367
    :cond_19
    const-string v1, "writeAsArrayNonContext"

    .line 1368
    .line 1369
    move-object/from16 v22, v1

    .line 1370
    .line 1371
    const/4 v5, 0x1

    .line 1372
    const/16 v16, 0x1

    .line 1373
    .line 1374
    :goto_14
    new-instance v4, Lc5/a$a;

    .line 1375
    .line 1376
    move-object v1, v4

    .line 1377
    move-object v2, v9

    .line 1378
    move-object/from16 v3, p1

    .line 1379
    .line 1380
    move-object/from16 v36, v4

    .line 1381
    .line 1382
    move-object v4, v11

    .line 1383
    move/from16 v18, v6

    .line 1384
    .line 1385
    move/from16 v6, v16

    .line 1386
    .line 1387
    invoke-direct/range {v1 .. v6}, Lc5/a$a;-><init>([Lcom/alibaba/fastjson/util/d;Lc5/f1;Ljava/lang/String;ZZ)V

    .line 1388
    .line 1389
    .line 1390
    new-instance v1, Lcom/alibaba/fastjson/asm/i;

    .line 1391
    .line 1392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    sget-object v3, Lc5/a;->c:Ljava/lang/String;

    .line 1401
    .line 1402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v23

    .line 1412
    const/16 v24, 0x0

    .line 1413
    .line 1414
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v25

    .line 1418
    const/16 v21, 0x1

    .line 1419
    .line 1420
    move-object/from16 v19, v1

    .line 1421
    .line 1422
    move-object/from16 v20, v34

    .line 1423
    .line 1424
    invoke-direct/range {v19 .. v25}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    const/16 v2, 0x19

    .line 1428
    .line 1429
    const/4 v4, 0x1

    .line 1430
    invoke-interface {v1, v2, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1431
    .line 1432
    .line 1433
    sget-object v4, Lc5/a;->g:Ljava/lang/String;

    .line 1434
    .line 1435
    invoke-interface {v1, v8, v3, v15, v4}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    move-object/from16 v3, v36

    .line 1439
    .line 1440
    invoke-virtual {v3, v15}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1441
    .line 1442
    .line 1443
    move-result v4

    .line 1444
    const/16 v5, 0x3a

    .line 1445
    .line 1446
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1447
    .line 1448
    .line 1449
    const/4 v4, 0x2

    .line 1450
    invoke-interface {v1, v2, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1451
    .line 1452
    .line 1453
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v6

    .line 1457
    const/16 v2, 0xc0

    .line 1458
    .line 1459
    invoke-interface {v1, v2, v6}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v3, v14}, Lc5/a$a;->g(Ljava/lang/String;)I

    .line 1463
    .line 1464
    .line 1465
    move-result v6

    .line 1466
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1467
    .line 1468
    .line 1469
    invoke-direct {v10, v13, v1, v9, v3}, Lc5/a;->A(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/h;[Lcom/alibaba/fastjson/util/d;Lc5/a$a;)V

    .line 1470
    .line 1471
    .line 1472
    const/16 v6, 0xb1

    .line 1473
    .line 1474
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 1475
    .line 1476
    .line 1477
    invoke-static {v3}, Lc5/a$a;->b(Lc5/a$a;)I

    .line 1478
    .line 1479
    .line 1480
    move-result v3

    .line 1481
    add-int/2addr v3, v4

    .line 1482
    const/4 v2, 0x7

    .line 1483
    invoke-interface {v1, v2, v3}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 1484
    .line 1485
    .line 1486
    invoke-interface {v1}, Lcom/alibaba/fastjson/asm/h;->k()V

    .line 1487
    .line 1488
    .line 1489
    const/4 v1, 0x1

    .line 1490
    add-int/2addr v0, v1

    .line 1491
    move/from16 v6, v18

    .line 1492
    .line 1493
    goto/16 :goto_13

    .line 1494
    .line 1495
    :cond_1a
    const/4 v1, 0x1

    .line 1496
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/fastjson/asm/c;->j()[B

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    iget-object v2, v10, Lc5/a;->a:Lcom/alibaba/fastjson/util/a;

    .line 1501
    .line 1502
    array-length v3, v0

    .line 1503
    move-object/from16 v4, v26

    .line 1504
    .line 1505
    const/4 v5, 0x0

    .line 1506
    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/alibaba/fastjson/util/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    new-array v2, v1, [Ljava/lang/Class;

    .line 1511
    .line 1512
    aput-object v28, v2, v5

    .line 1513
    .line 1514
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v0

    .line 1518
    new-array v1, v1, [Ljava/lang/Object;

    .line 1519
    .line 1520
    aput-object p1, v1, v5

    .line 1521
    .line 1522
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    check-cast v0, Lc5/p0;

    .line 1527
    .line 1528
    return-object v0

    .line 1529
    :cond_1b
    move-object v10, v0

    .line 1530
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1531
    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1535
    .line 1536
    .line 1537
    const-string v2, "unsupportd class "

    .line 1538
    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v2

    .line 1546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v1

    .line 1553
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    throw v0
.end method
