.class public Lcom/alibaba/fastjson/util/h;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/reflect/Constructor;

.field public final d:Ljava/lang/reflect/Constructor;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;

.field public final g:I

.field public final h:[Lcom/alibaba/fastjson/util/d;

.field public final i:[Lcom/alibaba/fastjson/util/d;

.field public final j:I

.field public final k:Lz4/d;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/reflect/Type;

.field public p:[Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lz4/d;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/util/h;->b:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->f0(Ljava/lang/Class;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p0, Lcom/alibaba/fastjson/util/h;->j:I

    .line 19
    .line 20
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/alibaba/fastjson/util/h;->k:Lz4/d;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    if-eqz p7, :cond_3

    .line 26
    .line 27
    invoke-interface {p7}, Lz4/d;->typeName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p6

    .line 31
    invoke-interface {p7}, Lz4/d;->typeKey()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, p2

    .line 43
    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/h;->m:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p6

    .line 58
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    .line 59
    .line 60
    :goto_1
    invoke-interface {p7}, Lz4/d;->orders()[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p6

    .line 64
    array-length p7, p6

    .line 65
    if-nez p7, :cond_2

    .line 66
    .line 67
    move-object p6, p2

    .line 68
    :cond_2
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p6

    .line 75
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/alibaba/fastjson/util/h;->m:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    .line 80
    .line 81
    :goto_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result p6

    .line 85
    new-array p6, p6, [Lcom/alibaba/fastjson/util/d;

    .line 86
    .line 87
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 88
    .line 89
    invoke-interface {p8, p6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    array-length p7, p6

    .line 93
    new-array p7, p7, [Lcom/alibaba/fastjson/util/d;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p8

    .line 106
    invoke-direct {v0, p8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 107
    .line 108
    .line 109
    array-length p8, p6

    .line 110
    move v2, v1

    .line 111
    :goto_3
    if-ge v2, p8, :cond_4

    .line 112
    .line 113
    aget-object v3, p6, v2

    .line 114
    .line 115
    iget-object v4, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    iget-object p6, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    .line 124
    .line 125
    array-length p8, p6

    .line 126
    move v2, v1

    .line 127
    move v3, v2

    .line 128
    :goto_4
    if-ge v2, p8, :cond_6

    .line 129
    .line 130
    aget-object v4, p6, v2

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lcom/alibaba/fastjson/util/d;

    .line 137
    .line 138
    if-eqz v5, :cond_5

    .line 139
    .line 140
    add-int/lit8 v6, v3, 0x1

    .line 141
    .line 142
    aput-object v5, p7, v3

    .line 143
    .line 144
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move v3, v6

    .line 148
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 152
    .line 153
    .line 154
    move-result-object p6

    .line 155
    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p6

    .line 159
    :goto_5
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result p8

    .line 163
    if-eqz p8, :cond_8

    .line 164
    .line 165
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p8

    .line 169
    check-cast p8, Lcom/alibaba/fastjson/util/d;

    .line 170
    .line 171
    add-int/lit8 v0, v3, 0x1

    .line 172
    .line 173
    aput-object p8, p7, v3

    .line 174
    .line 175
    move v3, v0

    .line 176
    goto :goto_5

    .line 177
    :cond_7
    array-length p8, p6

    .line 178
    invoke-static {p6, v1, p7, v1, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    .line 180
    .line 181
    invoke-static {p7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    iget-object p6, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 185
    .line 186
    invoke-static {p6, p7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p6

    .line 190
    if-eqz p6, :cond_9

    .line 191
    .line 192
    iget-object p7, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 193
    .line 194
    :cond_9
    iput-object p7, p0, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    .line 195
    .line 196
    if-eqz p3, :cond_a

    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    array-length p3, p3

    .line 203
    iput p3, p0, Lcom/alibaba/fastjson/util/h;->g:I

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_a
    if-eqz p5, :cond_b

    .line 207
    .line 208
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    array-length p3, p3

    .line 213
    iput p3, p0, Lcom/alibaba/fastjson/util/h;->g:I

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/util/h;->g:I

    .line 217
    .line 218
    :goto_6
    if-eqz p4, :cond_12

    .line 219
    .line 220
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    iput-object p3, p0, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->t0(Ljava/lang/Class;)Z

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/h;->q:Z

    .line 231
    .line 232
    if-eqz p3, :cond_f

    .line 233
    .line 234
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    iput-object p3, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    .line 239
    .line 240
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iput-object p1, p0, Lcom/alibaba/fastjson/util/h;->r:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .line 246
    :catchall_0
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    move p3, v1

    .line 251
    :goto_7
    iget-object p4, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    .line 252
    .line 253
    array-length p4, p4

    .line 254
    if-ge p3, p4, :cond_12

    .line 255
    .line 256
    array-length p4, p1

    .line 257
    if-ge p3, p4, :cond_12

    .line 258
    .line 259
    aget-object p4, p1, p3

    .line 260
    .line 261
    array-length p5, p4

    .line 262
    move p6, v1

    .line 263
    :goto_8
    if-ge p6, p5, :cond_d

    .line 264
    .line 265
    aget-object p7, p4, p6

    .line 266
    .line 267
    instance-of p8, p7, Lz4/b;

    .line 268
    .line 269
    if-eqz p8, :cond_c

    .line 270
    .line 271
    check-cast p7, Lz4/b;

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_c
    add-int/lit8 p6, p6, 0x1

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_d
    move-object p7, p2

    .line 278
    :goto_9
    if-eqz p7, :cond_e

    .line 279
    .line 280
    invoke-interface {p7}, Lz4/b;->name()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p4

    .line 284
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result p5

    .line 288
    if-lez p5, :cond_e

    .line 289
    .line 290
    iget-object p5, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    .line 291
    .line 292
    aput-object p4, p5, p3

    .line 293
    .line 294
    :cond_e
    add-int/lit8 p3, p3, 0x1

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_f
    iget-object p1, p0, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    .line 298
    .line 299
    array-length p1, p1

    .line 300
    iget-object p2, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 301
    .line 302
    array-length p2, p2

    .line 303
    if-eq p1, p2, :cond_10

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_10
    :goto_a
    iget-object p1, p0, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    .line 307
    .line 308
    array-length p2, p1

    .line 309
    if-ge v1, p2, :cond_12

    .line 310
    .line 311
    aget-object p1, p1, v1

    .line 312
    .line 313
    iget-object p2, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 314
    .line 315
    aget-object p2, p2, v1

    .line 316
    .line 317
    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 318
    .line 319
    if-eq p1, p2, :cond_11

    .line 320
    .line 321
    :goto_b
    invoke-static {p4}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iput-object p1, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    .line 326
    .line 327
    goto :goto_c

    .line 328
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_12
    :goto_c
    return-void
.end method

.method static a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/alibaba/fastjson/util/d;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/d;->h:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/d;->h:Z

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 35
    .line 36
    iget-object v4, p1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/d;->a(Lcom/alibaba/fastjson/util/d;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-gez v2, :cond_2

    .line 53
    .line 54
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return v1
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/h;
    .locals 6

    .line 1
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/h;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;
    .locals 57

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v9, p5

    const/4 v15, 0x1

    .line 1
    const-class v0, Lz4/d;

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lz4/d;

    if-eqz v12, :cond_0

    .line 2
    invoke-interface {v12}, Lz4/d;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    .line 4
    :goto_0
    invoke-static {v13, v12}, Lcom/alibaba/fastjson/util/h;->f(Ljava/lang/Class;Lz4/d;)Ljava/lang/Class;

    move-result-object v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/h;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v16

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->t0(Ljava/lang/Class;)Z

    move-result v17

    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v17, :cond_2

    .line 10
    array-length v1, v0

    if-ne v1, v15, :cond_1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v10, :cond_3

    .line 11
    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/h;->h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_2
    move-object/from16 v18, v1

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/alibaba/fastjson/util/h;->h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_2

    .line 13
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz p3, :cond_6

    move-object v0, v13

    :goto_4
    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 15
    invoke-static {v13, v14, v11, v5, v1}, Lcom/alibaba/fastjson/util/h;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-eqz v18, :cond_5

    .line 17
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    .line 18
    :cond_5
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v18

    move-object v8, v5

    move-object/from16 v5, v20

    move-object/from16 v6, v19

    move-object v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lz4/d;Ljava/util/List;)V

    return-object v9

    .line 19
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v15

    .line 20
    :goto_6
    const-class v3, Ljava/util/Collection;

    const-class v2, Ljava/lang/Object;

    move-object/from16 p2, v11

    const-class v11, Ljava/lang/String;

    const-class v15, Lz4/b;

    if-nez v18, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v1, :cond_37

    .line 21
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 22
    instance-of v6, v4, Ljava/lang/Class;

    if-eqz v6, :cond_b

    .line 23
    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 24
    invoke-static {v4}, Lcom/alibaba/fastjson/util/h;->g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 25
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    :cond_b
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_c

    .line 26
    invoke-static {v0}, Lcom/alibaba/fastjson/util/h;->g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :cond_c
    move-object/from16 v24, v4

    if-eqz v24, :cond_18

    if-nez v1, :cond_18

    .line 27
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    .line 28
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 29
    array-length v0, v9

    if-lez v0, :cond_16

    .line 30
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 31
    :goto_8
    array-length v1, v9

    if-ge v4, v1, :cond_16

    array-length v1, v6

    if-ge v4, v1, :cond_16

    .line 32
    aget-object v1, v6, v4

    .line 33
    array-length v14, v1

    move-object/from16 v26, v2

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v27, v3

    if-ge v2, v14, :cond_e

    aget-object v3, v1, v2

    move-object/from16 p5, v1

    .line 34
    instance-of v1, v3, Lz4/b;

    if-eqz v1, :cond_d

    .line 35
    check-cast v3, Lz4/b;

    goto :goto_a

    :cond_d
    const/4 v1, 0x1

    add-int/2addr v2, v1

    move-object/from16 v1, p5

    move-object/from16 v3, v27

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    .line 36
    :goto_a
    aget-object v14, v9, v4

    .line 37
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v28, v1, v4

    if-eqz v3, :cond_f

    .line 38
    invoke-interface {v3}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 39
    invoke-interface {v3}, Lz4/b;->ordinal()I

    move-result v2

    .line 40
    invoke-interface {v3}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v29

    .line 41
    invoke-interface {v3}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    .line 42
    invoke-interface {v3}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v3

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v2

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_b
    if-eqz v3, :cond_11

    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_c

    :cond_10
    move-object v2, v3

    goto :goto_d

    :cond_11
    :goto_c
    if-nez v0, :cond_12

    .line 44
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_12
    aget-object v2, v0, v4

    :goto_d
    if-nez v1, :cond_15

    if-nez v0, :cond_14

    if-eqz v17, :cond_13

    .line 46
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 47
    :cond_13
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_14
    :goto_e
    array-length v3, v0

    if-le v3, v4, :cond_15

    .line 49
    aget-object v1, v0, v4

    .line 50
    invoke-static {v13, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    :cond_15
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    .line 51
    new-instance v3, Lcom/alibaba/fastjson/util/d;

    move-object v0, v3

    move-object v1, v2

    move-object/from16 v34, v15

    move-object/from16 v15, v26

    move-object/from16 v2, p0

    move-object/from16 p5, v9

    move-object/from16 v35, v27

    move-object v9, v3

    move-object v3, v14

    move/from16 v22, v4

    const/4 v14, 0x0

    move-object/from16 v4, v28

    move-object v14, v5

    move-object/from16 v5, v33

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-object/from16 v27, v15

    move-object v15, v7

    move/from16 v7, v30

    move-object/from16 v28, v11

    move-object v11, v8

    move/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 52
    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v9, p5

    move-object v8, v11

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, v23

    move-object/from16 v2, v27

    move-object/from16 v11, v28

    move-object/from16 v0, v32

    move-object/from16 v15, v34

    move-object/from16 v3, v35

    goto/16 :goto_8

    :cond_16
    move-object/from16 v27, v2

    move-object/from16 v35, v3

    move-object v14, v5

    move-object/from16 v28, v11

    move-object/from16 v34, v15

    move-object v15, v7

    move-object v11, v8

    :cond_17
    move-object/from16 v38, v27

    move-object/from16 v29, v28

    move-object/from16 v37, v35

    move-object/from16 v27, v11

    move-object/from16 v11, v34

    goto/16 :goto_21

    :cond_18
    move-object/from16 v27, v2

    move-object/from16 v35, v3

    move-object v14, v5

    move-object/from16 v28, v11

    move-object/from16 v34, v15

    move-object v15, v7

    move-object v11, v8

    .line 53
    invoke-static {v13, v15, v9}, Lcom/alibaba/fastjson/util/h;->i(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v20

    if-eqz v20, :cond_22

    .line 54
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    .line 55
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 56
    array-length v0, v8

    if-lez v0, :cond_17

    .line 57
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->e0(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 58
    :goto_f
    array-length v0, v8

    if-ge v7, v0, :cond_21

    .line 59
    aget-object v0, v15, v7

    .line 60
    array-length v1, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_1a

    aget-object v2, v0, v4

    .line 61
    instance-of v3, v2, Lz4/b;

    if-eqz v3, :cond_19

    .line 62
    move-object v0, v2

    check-cast v0, Lz4/b;

    goto :goto_11

    :cond_19
    const/4 v2, 0x1

    add-int/2addr v4, v2

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_1c

    if-eqz v9, :cond_1b

    .line 63
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->s0(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_12

    .line 64
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_12
    if-eqz v0, :cond_1d

    .line 65
    invoke-interface {v0}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {v0}, Lz4/b;->ordinal()I

    move-result v2

    .line 67
    invoke-interface {v0}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    .line 68
    invoke-interface {v0}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    move/from16 v18, v0

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_13

    :cond_1d
    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_13
    if-eqz v1, :cond_1f

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_15

    :cond_1e
    :goto_14
    move-object/from16 v19, v6

    goto :goto_16

    :cond_1f
    :goto_15
    if-nez v6, :cond_20

    .line 70
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v6

    .line 71
    :cond_20
    aget-object v0, v6, v7

    move-object v1, v0

    goto :goto_14

    .line 72
    :goto_16
    aget-object v3, v8, v7

    .line 73
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v4, v0, v7

    .line 74
    invoke-static {v13, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 75
    new-instance v6, Lcom/alibaba/fastjson/util/d;

    move-object v0, v6

    move-object/from16 v2, p0

    move-object v9, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 76
    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    add-int/lit8 v7, v16, 0x1

    move/from16 v9, p5

    move-object/from16 v8, v17

    move-object/from16 v6, v19

    goto/16 :goto_f

    .line 77
    :cond_21
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v5, v20

    move-object v7, v12

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lz4/d;Ljava/util/List;)V

    return-object v9

    :cond_22
    if-nez v1, :cond_17

    .line 78
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v17, :cond_23

    .line 79
    array-length v1, v0

    if-lez v1, :cond_23

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->c0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v24, v0

    move-object v7, v1

    move-object/from16 v5, v27

    move-object/from16 v8, v28

    goto/16 :goto_1a

    .line 83
    :cond_23
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v4, v1, :cond_2d

    aget-object v2, v0, v4

    .line 84
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 85
    const-string v5, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 86
    array-length v5, v3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_25

    const/4 v5, 0x0

    aget-object v7, v3, v5

    move-object/from16 v8, v28

    if-ne v7, v8, :cond_24

    const/4 v5, 0x1

    aget-object v3, v3, v5

    if-ne v3, v8, :cond_24

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 88
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object/from16 v24, v2

    move-object/from16 v5, v27

    goto/16 :goto_1a

    :cond_24
    :goto_18
    move-object/from16 v23, v0

    move-object/from16 v5, v27

    goto/16 :goto_19

    :cond_25
    move-object/from16 v8, v28

    goto :goto_18

    :cond_26
    move-object/from16 v8, v28

    .line 89
    const-string v5, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 90
    array-length v5, v3

    const/4 v7, 0x3

    if-ne v5, v7, :cond_24

    const/4 v5, 0x0

    aget-object v7, v3, v5

    move-object/from16 v5, v27

    move-object/from16 v23, v0

    if-ne v7, v5, :cond_2c

    const/4 v7, 0x1

    aget-object v0, v3, v7

    if-ne v0, v5, :cond_2c

    const/4 v0, 0x2

    aget-object v3, v3, v0

    move-object/from16 v0, v35

    if-ne v3, v0, :cond_27

    .line 91
    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x3

    .line 92
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "principal"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "credentials"

    aput-object v1, v3, v7

    const-string v1, "authorities"

    const/4 v4, 0x2

    aput-object v1, v3, v4

    move-object/from16 v35, v0

    move-object/from16 v24, v2

    move-object v7, v3

    goto :goto_1a

    :cond_27
    move-object/from16 v35, v0

    goto :goto_19

    :cond_28
    move-object/from16 v23, v0

    move-object/from16 v5, v27

    move-object/from16 v0, v35

    .line 93
    const-string v7, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 94
    array-length v7, v3

    move-object/from16 v35, v0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2c

    const/4 v7, 0x0

    aget-object v3, v3, v7

    if-ne v3, v8, :cond_2c

    .line 95
    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "authority"

    aput-object v3, v1, v7

    move-object v7, v1

    move-object/from16 v24, v2

    goto :goto_1a

    :cond_29
    move-object/from16 v35, v0

    const/4 v0, 0x1

    .line 96
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_2c

    .line 97
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 98
    array-length v3, v0

    if-nez v3, :cond_2a

    goto :goto_19

    :cond_2a
    if-eqz v24, :cond_2b

    if-eqz v6, :cond_2b

    .line 99
    array-length v3, v0

    array-length v7, v6

    if-gt v3, v7, :cond_2b

    goto :goto_19

    :cond_2b
    move-object v6, v0

    move-object/from16 v24, v2

    :cond_2c
    :goto_19
    const/4 v0, 0x1

    add-int/2addr v4, v0

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    move-object/from16 v0, v23

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v5, v27

    move-object/from16 v8, v28

    move-object v7, v6

    :goto_1a
    if-eqz v7, :cond_2e

    .line 100
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    goto :goto_1b

    :cond_2e
    const/4 v6, 0x0

    :goto_1b
    if-eqz v7, :cond_36

    .line 101
    array-length v0, v6

    array-length v1, v7

    if-ne v0, v1, :cond_36

    .line 102
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v22

    const/4 v4, 0x0

    .line 103
    :goto_1c
    array-length v0, v6

    if-ge v4, v0, :cond_35

    .line 104
    aget-object v0, v22, v4

    .line 105
    aget-object v1, v7, v4

    .line 106
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_30

    move/from16 v23, v2

    aget-object v2, v0, v3

    move-object/from16 p5, v0

    .line 107
    instance-of v0, v2, Lz4/b;

    if-eqz v0, :cond_2f

    .line 108
    move-object v0, v2

    check-cast v0, Lz4/b;

    goto :goto_1e

    :cond_2f
    const/4 v0, 0x1

    add-int/2addr v3, v0

    move-object/from16 v0, p5

    move/from16 v2, v23

    goto :goto_1d

    :cond_30
    const/4 v0, 0x0

    .line 109
    :goto_1e
    aget-object v3, v6, v4

    .line 110
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v23, v2, v4

    .line 111
    invoke-static {v13, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_31

    if-nez v0, :cond_31

    move-object/from16 v27, v11

    move-object/from16 v11, v34

    .line 112
    invoke-static {v2, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz4/b;

    goto :goto_1f

    :cond_31
    move-object/from16 v27, v11

    move-object/from16 v11, v34

    :goto_1f
    if-nez v0, :cond_33

    .line 113
    const-string v0, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "password"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 115
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v30, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    goto :goto_20

    :cond_32
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    goto :goto_20

    .line 116
    :cond_33
    invoke-interface {v0}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v28

    .line 117
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_34

    move-object/from16 v1, v28

    .line 118
    :cond_34
    invoke-interface {v0}, Lz4/b;->ordinal()I

    move-result v28

    .line 119
    invoke-interface {v0}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v29

    .line 120
    invoke-interface {v0}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    move/from16 v30, v0

    .line 121
    :goto_20
    new-instance v0, Lcom/alibaba/fastjson/util/d;

    move-object/from16 p5, v0

    move-object/from16 v37, v35

    move-object/from16 v31, v2

    move-object/from16 v2, p0

    move/from16 v32, v4

    move-object/from16 v4, v23

    move-object/from16 v38, v5

    move-object/from16 v5, v31

    move-object/from16 v23, v6

    move/from16 v6, v28

    move-object/from16 v28, v7

    move/from16 v7, v29

    move-object/from16 v29, v8

    move/from16 v8, v30

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 122
    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    add-int/lit8 v4, v32, 0x1

    move-object/from16 v34, v11

    move-object/from16 v6, v23

    move-object/from16 v11, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v5, v38

    goto/16 :goto_1c

    :cond_35
    move-object/from16 v38, v5

    move-object/from16 v29, v8

    move-object/from16 v27, v11

    move-object/from16 v11, v34

    move-object/from16 v37, v35

    if-nez v17, :cond_38

    .line 123
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 124
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v4, v24

    move-object v7, v12

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lz4/d;Ljava/util/List;)V

    return-object v9

    .line 125
    :cond_36
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object/from16 v38, v2

    move-object/from16 v37, v3

    move-object v14, v5

    move-object/from16 v27, v8

    move-object/from16 v29, v11

    move-object v11, v15

    move-object v15, v7

    const/16 v24, 0x0

    :cond_38
    :goto_21
    if-eqz v18, :cond_39

    .line 126
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    .line 127
    :cond_39
    const-string v9, "set"

    if-eqz v10, :cond_4d

    .line 128
    const-class v8, Lz4/c;

    invoke-static {v10, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz4/c;

    if-eqz v0, :cond_3a

    .line 129
    invoke-interface {v0}, Lz4/c;->withPrefix()Ljava/lang/String;

    move-result-object v6

    goto :goto_22

    :cond_3a
    const/4 v6, 0x0

    :goto_22
    if-nez v6, :cond_3b

    .line 130
    const-string v6, "with"

    :cond_3b
    move-object v7, v6

    .line 131
    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v5, :cond_47

    aget-object v2, v6, v4

    .line 132
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    :goto_24
    move-object/from16 v43, p2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v22, v7

    move-object/from16 v40, v8

    move-object/from16 v48, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    const/4 v0, 0x1

    move-object/from16 v27, v12

    goto/16 :goto_2b

    .line 133
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_24

    .line 134
    :cond_3d
    invoke-static {v2, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz4/b;

    if-nez v0, :cond_3e

    .line 135
    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->j0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lz4/b;

    move-result-object v0

    :cond_3e
    move-object/from16 v22, v0

    if-eqz v22, :cond_41

    .line 136
    invoke-interface/range {v22 .. v22}, Lz4/b;->deserialize()Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_24

    .line 137
    :cond_3f
    invoke-interface/range {v22 .. v22}, Lz4/b;->ordinal()I

    move-result v23

    .line 138
    invoke-interface/range {v22 .. v22}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v28

    .line 139
    invoke-interface/range {v22 .. v22}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    .line 140
    invoke-interface/range {v22 .. v22}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_40

    .line 141
    invoke-interface/range {v22 .. v22}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v3, Lcom/alibaba/fastjson/util/d;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v3

    move-object/from16 v39, v3

    move-object/from16 v3, v33

    move/from16 v33, v4

    move-object/from16 v4, p0

    move/from16 v34, v5

    move-object/from16 v5, p1

    move-object/from16 v35, v6

    move/from16 v6, v23

    move-object/from16 p5, v7

    move/from16 v7, v28

    move-object/from16 v40, v8

    move/from16 v8, v30

    move-object/from16 v41, v9

    move-object/from16 v9, v22

    move-object/from16 v42, v10

    move-object/from16 v10, v31

    move-object/from16 v43, p2

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v11, v32

    move-object/from16 v27, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v39

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    move-object/from16 v22, p5

    move-object/from16 v48, v41

    :goto_25
    const/4 v0, 0x1

    goto/16 :goto_2b

    :cond_40
    move-object/from16 v43, p2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p5, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v27, v12

    move/from16 v6, v23

    move/from16 v7, v28

    move/from16 v8, v30

    goto :goto_26

    :cond_41
    move-object/from16 v43, p2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p5, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v27, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 143
    :goto_26
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v41

    .line 144
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_42

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_27
    move-object/from16 v11, p5

    :goto_28
    const/4 v0, 0x0

    goto :goto_2a

    .line 146
    :cond_42
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_43

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_43
    move-object/from16 v11, p5

    .line 148
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    :goto_29
    move-object/from16 v22, v11

    move-object/from16 v48, v12

    goto :goto_25

    .line 149
    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_45

    goto :goto_29

    .line 150
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    .line 151
    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 152
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_46

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_29

    .line 153
    :cond_46
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v10, Lcom/alibaba/fastjson/util/d;

    const/16 v23, 0x0

    const/16 v28, 0x0

    const/4 v3, 0x0

    move-object v0, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v22

    move-object/from16 v47, v10

    move-object/from16 v10, v23

    move-object/from16 v22, v11

    move-object/from16 v11, v28

    move-object/from16 v48, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v47

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    goto/16 :goto_25

    :goto_2b
    add-int/lit8 v4, v33, 0x1

    move-object/from16 v7, v22

    move-object/from16 v12, v27

    move/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v40

    move-object/from16 v10, v42

    move-object/from16 p2, v43

    move-object/from16 v27, v44

    move-object/from16 v29, v45

    move-object/from16 v11, v46

    move-object/from16 v9, v48

    goto/16 :goto_23

    :cond_47
    move-object/from16 v43, p2

    move-object v0, v8

    move-object/from16 v48, v9

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v27, v12

    move-object v12, v10

    .line 156
    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz4/c;

    if-eqz v0, :cond_48

    .line 157
    invoke-interface {v0}, Lz4/c;->buildMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_2c

    :cond_48
    const/4 v6, 0x0

    :goto_2c
    if-eqz v6, :cond_4a

    .line 158
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_49

    goto :goto_2e

    :cond_49
    :goto_2d
    const/4 v11, 0x0

    goto :goto_2f

    .line 159
    :cond_4a
    :goto_2e
    const-string v6, "build"

    goto :goto_2d

    .line 160
    :goto_2f
    :try_start_1
    invoke-virtual {v12, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v19, :cond_4b

    .line 161
    :try_start_2
    const-string v0, "create"

    invoke-virtual {v12, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4b
    if-eqz v19, :cond_4c

    .line 162
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_30

    .line 163
    :cond_4c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move-object/from16 v43, p2

    move-object/from16 v48, v9

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    const/4 v11, 0x0

    move-object/from16 v27, v12

    move-object v12, v10

    .line 164
    :goto_30
    array-length v10, v15

    const/4 v9, 0x0

    :goto_31
    const-string v8, "get"

    const/4 v7, 0x4

    if-ge v9, v10, :cond_75

    aget-object v2, v15, v9

    .line 165
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    :goto_32
    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    move-object/from16 v33, v38

    :goto_33
    move-object/from16 v53, v43

    move-object/from16 v32, v45

    move-object/from16 v52, v46

    move-object/from16 v41, v48

    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v29, 0x2

    :goto_34
    const/16 v36, 0x3

    move-object v15, v13

    goto/16 :goto_4c

    .line 167
    :cond_4e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 168
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_32

    .line 169
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v6, v38

    if-ne v1, v6, :cond_50

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    goto :goto_33

    .line 170
    :cond_50
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 171
    array-length v3, v1

    if-eqz v3, :cond_74

    array-length v3, v1

    const/4 v5, 0x2

    if-le v3, v5, :cond_51

    move/from16 v29, v5

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v32, v45

    move-object/from16 v52, v46

    move-object/from16 v41, v48

    :goto_35
    const/4 v0, 0x1

    :goto_36
    const/16 v26, 0x0

    goto :goto_34

    :cond_51
    move-object/from16 v4, v46

    .line 172
    invoke-static {v2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lz4/b;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v28, 0x0

    if-eqz v21, :cond_54

    .line 173
    array-length v3, v1

    if-ne v3, v5, :cond_54

    const/4 v3, 0x0

    aget-object v5, v1, v3

    move-object/from16 v3, v45

    if-ne v5, v3, :cond_53

    const/4 v5, 0x1

    aget-object v11, v1, v5

    if-ne v11, v6, :cond_52

    .line 174
    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v1, ""

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v32, v3

    move-object v3, v5

    move-object v8, v4

    move-object/from16 v4, p0

    const/16 v29, 0x2

    move-object/from16 v5, p1

    move-object/from16 v33, v6

    move/from16 v6, v22

    move/from16 v7, v23

    move-object/from16 v49, v8

    move/from16 v8, v28

    move/from16 v34, v9

    move-object/from16 v9, v21

    move/from16 v35, v10

    move-object/from16 v10, v30

    move-object/from16 v50, v11

    const/16 v30, 0x0

    move-object/from16 v11, v31

    move-object/from16 v31, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v50

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    :goto_37
    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v41, v48

    move-object/from16 v52, v49

    goto :goto_35

    :cond_52
    move-object/from16 v32, v3

    move-object/from16 v49, v4

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v31, v12

    const/16 v29, 0x2

    const/16 v30, 0x0

    goto :goto_38

    :cond_53
    move-object/from16 v32, v3

    move-object/from16 v49, v4

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    const/16 v29, 0x2

    goto :goto_38

    :cond_54
    move-object/from16 v49, v4

    move/from16 v29, v5

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v45

    .line 175
    :goto_38
    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_55

    move v0, v4

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v41, v48

    move-object/from16 v52, v49

    goto/16 :goto_36

    :cond_55
    if-nez v21, :cond_56

    .line 176
    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->j0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lz4/b;

    move-result-object v3

    move-object v9, v3

    goto :goto_39

    :cond_56
    move-object/from16 v9, v21

    :goto_39
    if-nez v9, :cond_57

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_57

    :goto_3a
    goto :goto_37

    :cond_57
    if-eqz v9, :cond_5a

    .line 178
    invoke-interface {v9}, Lz4/b;->deserialize()Z

    move-result v3

    if-nez v3, :cond_58

    goto :goto_3a

    .line 179
    :cond_58
    invoke-interface {v9}, Lz4/b;->ordinal()I

    move-result v6

    .line 180
    invoke-interface {v9}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 181
    invoke-interface {v9}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 182
    invoke-interface {v9}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_59

    .line 183
    invoke-interface {v9}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v12, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v10

    move v8, v11

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v13}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v36, 0x3

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v41, v48

    :goto_3b
    move-object/from16 v52, v49

    move-object/from16 v15, p0

    goto/16 :goto_4c

    :cond_59
    move/from16 v22, v6

    move/from16 v23, v10

    move/from16 v28, v11

    :cond_5a
    move-object/from16 v13, v48

    if-nez v9, :cond_5c

    .line 185
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_3d

    :cond_5b
    :goto_3c
    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v36, 0x3

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    goto :goto_3b

    :cond_5c
    :goto_3d
    if-eqz v31, :cond_5d

    goto :goto_3c

    :cond_5d
    const/4 v3, 0x3

    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v17, :cond_5f

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 188
    :goto_3e
    array-length v5, v15

    if-ge v3, v5, :cond_60

    .line 189
    aget-object v5, v15, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 190
    aget-object v5, v15, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_3e

    :cond_5f
    move-object/from16 v6, v30

    .line 191
    :cond_60
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    const-string v5, "is"

    const-string v8, "g"

    if-nez v3, :cond_61

    const/16 v3, 0x200

    if-le v4, v3, :cond_62

    :cond_61
    move-object/from16 v12, p0

    move-object/from16 v11, v44

    goto/16 :goto_46

    :cond_62
    const/16 v3, 0x5f

    if-ne v4, v3, :cond_67

    if-eqz v17, :cond_65

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    const/4 v3, 0x3

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    move-object/from16 v12, p0

    move-object/from16 v11, v44

    goto :goto_40

    :cond_63
    const/4 v3, 0x3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 196
    :goto_40
    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    :cond_64
    :goto_41
    move v10, v3

    goto/16 :goto_47

    :cond_65
    const/4 v3, 0x3

    move-object/from16 v12, p0

    move-object/from16 v11, v44

    .line 197
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v12, v4, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_66

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_64

    move-object v0, v4

    goto :goto_41

    :cond_66
    move v10, v3

    move-object v0, v4

    goto/16 :goto_47

    :cond_67
    const/4 v3, 0x3

    move-object/from16 v12, p0

    move-object/from16 v11, v44

    const/16 v6, 0x66

    if-ne v4, v6, :cond_68

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_42
    move v10, v3

    :goto_43
    move-object/from16 v6, v30

    goto/16 :goto_47

    .line 202
    :cond_68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_69

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 204
    :cond_69
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_6a

    move-object/from16 v44, v11

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v52, v49

    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v36, 0x3

    :goto_44
    move-object v15, v12

    goto/16 :goto_4c

    :cond_6a
    :goto_45
    const/4 v10, 0x3

    goto :goto_47

    :goto_46
    if-eqz v17, :cond_6b

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v30

    goto :goto_45

    .line 208
    :cond_6b
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    if-eqz v3, :cond_6c

    const/4 v10, 0x3

    .line 209
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_6c
    const/4 v10, 0x3

    .line 210
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :goto_47
    if-nez v6, :cond_6d

    .line 211
    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    :cond_6d
    const/4 v8, 0x0

    if-nez v6, :cond_6e

    .line 212
    aget-object v1, v1, v8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6e

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v12, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_48

    :cond_6e
    move-object v3, v6

    :goto_48
    if-eqz v3, :cond_72

    move-object/from16 v7, v49

    .line 215
    invoke-static {v3, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lz4/b;

    if-eqz v21, :cond_71

    .line 216
    invoke-interface/range {v21 .. v21}, Lz4/b;->deserialize()Z

    move-result v1

    if-nez v1, :cond_6f

    move-object/from16 v52, v7

    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v44, v11

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    const/4 v0, 0x1

    goto/16 :goto_44

    .line 217
    :cond_6f
    invoke-interface/range {v21 .. v21}, Lz4/b;->ordinal()I

    move-result v6

    .line 218
    invoke-interface/range {v21 .. v21}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v22

    .line 219
    invoke-interface/range {v21 .. v21}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v23

    .line 220
    invoke-interface/range {v21 .. v21}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_70

    .line 221
    invoke-interface/range {v21 .. v21}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v5, Lcom/alibaba/fastjson/util/d;

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v51, v5

    move-object/from16 v5, p1

    move-object/from16 v52, v7

    move/from16 v7, v22

    move/from16 v26, v8

    move/from16 v8, v23

    move/from16 v36, v10

    move-object/from16 v10, v21

    move-object/from16 v41, v13

    move-object v13, v11

    move-object/from16 v11, v25

    move-object/from16 v25, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v51

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    move-object/from16 v44, v13

    move-object/from16 v53, v43

    :goto_49
    const/4 v0, 0x1

    goto/16 :goto_4c

    :cond_70
    move-object/from16 v52, v7

    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object v13, v11

    move-object v15, v12

    move-object/from16 v10, v21

    move/from16 v7, v22

    move/from16 v8, v23

    :goto_4a
    move-object/from16 v12, v43

    goto :goto_4b

    :cond_71
    move-object/from16 v52, v7

    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object v13, v11

    move-object v15, v12

    move-object/from16 v10, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v28

    goto :goto_4a

    :cond_72
    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v52, v49

    move-object v13, v11

    move-object v15, v12

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v28

    move-object/from16 v10, v30

    goto :goto_4a

    :goto_4b
    if-eqz v12, :cond_73

    .line 223
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_73
    move-object v1, v0

    .line 224
    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v44, v13

    move-object v13, v11

    move-object/from16 v11, v21

    move-object/from16 v53, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v13}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    goto :goto_49

    :cond_74
    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v32, v45

    move-object/from16 v52, v46

    move-object/from16 v41, v48

    const/16 v26, 0x0

    const/16 v29, 0x2

    const/16 v36, 0x3

    move-object v15, v13

    goto :goto_49

    :goto_4c
    add-int/lit8 v9, v34, 0x1

    move-object v13, v15

    move-object/from16 v15, v25

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v45, v32

    move-object/from16 v38, v33

    move/from16 v10, v35

    move-object/from16 v48, v41

    move-object/from16 v46, v52

    move-object/from16 v43, v53

    goto/16 :goto_31

    :cond_75
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object v15, v13

    move-object/from16 v53, v43

    move-object/from16 v52, v46

    const/16 v26, 0x0

    const/16 v36, 0x3

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v13, p1

    move/from16 v11, v36

    move-object/from16 v12, v53

    .line 226
    invoke-static {v15, v13, v12, v14, v0}, Lcom/alibaba/fastjson/util/h;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v9, v10

    move/from16 v6, v26

    :goto_4d
    if-ge v6, v9, :cond_83

    aget-object v2, v10, v6

    .line 228
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_77

    :cond_76
    :goto_4e
    move/from16 v33, v6

    move/from16 v23, v7

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    move-object/from16 v32, v37

    :goto_4f
    move-object/from16 v54, v44

    move-object/from16 v29, v52

    :goto_50
    const/4 v0, 0x1

    goto/16 :goto_54

    .line 230
    :cond_77
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_4e

    :cond_78
    if-nez v31, :cond_76

    .line 231
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 232
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_79

    goto :goto_4e

    .line 233
    :cond_79
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v5, v37

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-class v3, Ljava/util/Map;

    if-nez v1, :cond_7a

    .line 234
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_7a

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 236
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_7a

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 237
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne v1, v4, :cond_7b

    :cond_7a
    move-object/from16 v4, v52

    goto :goto_51

    :cond_7b
    move-object/from16 v32, v5

    move/from16 v33, v6

    move/from16 v23, v7

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    goto :goto_4f

    .line 238
    :goto_51
    invoke-static {v2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lz4/b;

    if-eqz v17, :cond_7c

    .line 239
    invoke-interface/range {v17 .. v17}, Lz4/b;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_7c

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move/from16 v23, v7

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    move-object/from16 v54, v44

    goto/16 :goto_50

    :cond_7c
    if-eqz v17, :cond_7d

    .line 240
    invoke-interface/range {v17 .. v17}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7d

    .line 241
    invoke-interface/range {v17 .. v17}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v30

    move-object/from16 v1, v44

    goto :goto_53

    .line 242
    :cond_7d
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v44

    .line 243
    invoke-static {v15, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_80

    .line 244
    invoke-static {v7, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lz4/b;

    if-eqz v21, :cond_7e

    .line 245
    invoke-interface/range {v21 .. v21}, Lz4/b;->deserialize()Z

    move-result v21

    if-nez v21, :cond_7e

    move-object/from16 v54, v1

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    const/4 v0, 0x1

    :goto_52
    const/16 v23, 0x4

    goto/16 :goto_54

    .line 246
    :cond_7e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_7f

    .line 247
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_80

    :cond_7f
    move-object v3, v7

    goto :goto_53

    :cond_80
    move-object/from16 v3, v30

    :goto_53
    if-eqz v12, :cond_81

    .line 248
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_81
    move-object v7, v0

    .line 249
    invoke-static {v14, v7}, Lcom/alibaba/fastjson/util/h;->j(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/d;

    move-result-object v0

    if-eqz v0, :cond_82

    move-object/from16 v54, v1

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move-object/from16 v56, v12

    const/4 v0, 0x1

    const/16 v21, 0x3

    goto :goto_52

    .line 250
    :cond_82
    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object v0, v11

    move-object/from16 v54, v1

    move-object v1, v7

    move-object/from16 v29, v4

    move-object/from16 v4, p0

    move-object/from16 v32, v5

    move-object/from16 v5, p1

    move/from16 v33, v6

    move/from16 v6, v23

    const/16 v23, 0x4

    move/from16 v7, v26

    move-object/from16 v26, v8

    move/from16 v8, v28

    move/from16 v28, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v55, v11

    const/16 v21, 0x3

    move-object/from16 v11, v22

    move-object/from16 v56, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v55

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    goto/16 :goto_50

    :goto_54
    add-int/lit8 v6, v33, 0x1

    move-object/from16 v10, v17

    move/from16 v11, v21

    move/from16 v7, v23

    move-object/from16 v8, v26

    move/from16 v9, v28

    move-object/from16 v52, v29

    move-object/from16 v37, v32

    move-object/from16 v44, v54

    move-object/from16 v12, v56

    goto/16 :goto_4d

    :cond_83
    move-object/from16 v56, v12

    move-object/from16 v54, v44

    const/4 v0, 0x1

    .line 251
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_85

    .line 252
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->z0(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_84

    goto :goto_55

    :cond_84
    move/from16 v0, p3

    :goto_55
    if-eqz v0, :cond_85

    move-object v12, v15

    :goto_56
    if-eqz v12, :cond_85

    move-object/from16 v1, v54

    move-object/from16 v0, v56

    .line 253
    invoke-static {v15, v13, v0, v14, v1}, Lcom/alibaba/fastjson/util/h;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 254
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_56

    .line 255
    :cond_85
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v18

    move-object/from16 v4, v24

    move-object/from16 v5, v20

    move-object/from16 v6, v19

    move-object/from16 v7, v27

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lz4/d;Ljava/util/List;)V

    return-object v9
.end method

.method private static d(Ljava/lang/Class;)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :goto_0
    move-object v6, v0

    .line 10
    move-object v0, p0

    .line 11
    move-object p0, v6

    .line 12
    if-eqz p0, :cond_4

    .line 13
    .line 14
    const-class v2, Ljava/lang/Object;

    .line 15
    .line 16
    if-eq p0, v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_1
    array-length v4, v0

    .line 42
    if-ge v3, v4, :cond_3

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    aget-object v4, v0, v3

    .line 52
    .line 53
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    aget-object v4, v0, v3

    .line 60
    .line 61
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/reflect/Type;

    .line 66
    .line 67
    aget-object v5, v2, v3

    .line 68
    .line 69
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    aget-object v4, v2, v3

    .line 74
    .line 75
    aget-object v5, v0, v3

    .line 76
    .line 77
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return-object v1
.end method

.method private static e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/h;->d(Ljava/lang/Class;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v15

    .line 9
    array-length v14, v1

    .line 10
    const/16 v16, 0x0

    .line 11
    .line 12
    move/from16 v13, v16

    .line 13
    .line 14
    :goto_0
    if-ge v13, v14, :cond_9

    .line 15
    .line 16
    aget-object v5, v1, v13

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v3, v2, 0x8

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :cond_0
    :goto_1
    move-object/from16 v2, p3

    .line 27
    .line 28
    move/from16 v17, v13

    .line 29
    .line 30
    move/from16 v18, v14

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    and-int/lit8 v2, v2, 0x10

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-class v3, Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    const-class v3, Ljava/util/Collection;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/alibaba/fastjson/util/d;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-class v3, Lz4/b;

    .line 116
    .line 117
    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    move-object v12, v3

    .line 122
    check-cast v12, Lz4/b;

    .line 123
    .line 124
    if-eqz v12, :cond_7

    .line 125
    .line 126
    invoke-interface {v12}, Lz4/b;->deserialize()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    invoke-interface {v12}, Lz4/b;->ordinal()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-interface {v12}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-interface {v12}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    invoke-interface {v12}, Lz4/b;->name()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_6

    .line 162
    .line 163
    invoke-interface {v12}, Lz4/b;->name()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :cond_6
    move v8, v3

    .line 168
    move v9, v4

    .line 169
    move v10, v6

    .line 170
    goto :goto_2

    .line 171
    :cond_7
    move/from16 v8, v16

    .line 172
    .line 173
    move v9, v8

    .line 174
    move v10, v9

    .line 175
    :goto_2
    if-eqz v0, :cond_8

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    :cond_8
    move-object v3, v2

    .line 182
    new-instance v11, Lcom/alibaba/fastjson/util/d;

    .line 183
    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    move-object v2, v11

    .line 190
    move-object/from16 v6, p0

    .line 191
    .line 192
    move-object/from16 v7, p1

    .line 193
    .line 194
    move-object/from16 v19, v11

    .line 195
    .line 196
    move-object/from16 v11, v17

    .line 197
    .line 198
    move/from16 v17, v13

    .line 199
    .line 200
    move-object/from16 v13, v18

    .line 201
    .line 202
    move/from16 v18, v14

    .line 203
    .line 204
    move-object v14, v15

    .line 205
    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    .line 207
    .line 208
    move-object/from16 v2, p3

    .line 209
    .line 210
    move-object/from16 v3, v19

    .line 211
    .line 212
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    .line 213
    .line 214
    .line 215
    :goto_3
    add-int/lit8 v13, v17, 0x1

    .line 216
    .line 217
    move/from16 v14, v18

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_9
    return-void
.end method

.method public static f(Ljava/lang/Class;Lz4/d;)Ljava/lang/Class;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    .line 16
    .line 17
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->A0(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-interface {p1}, Lz4/d;->builder()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-class v0, Ljava/lang/Void;

    .line 31
    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    return-object p1
.end method

.method public static g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const-string v4, "multi-JSONCreator"

    .line 6
    .line 7
    if-ge v3, v0, :cond_2

    .line 8
    .line 9
    aget-object v5, p0, v3

    .line 10
    .line 11
    const-class v6, Lz4/a;

    .line 12
    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    check-cast v6, Lz4/a;

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v1, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 26
    .line 27
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-eqz v1, :cond_3

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    array-length v0, p0

    .line 38
    move v3, v2

    .line 39
    :goto_2
    if-ge v3, v0, :cond_9

    .line 40
    .line 41
    aget-object v5, p0, v3

    .line 42
    .line 43
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    array-length v7, v6

    .line 48
    if-nez v7, :cond_4

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_4
    array-length v7, v6

    .line 52
    move v8, v2

    .line 53
    :goto_3
    if-ge v8, v7, :cond_6

    .line 54
    .line 55
    aget-object v9, v6, v8

    .line 56
    .line 57
    array-length v10, v9

    .line 58
    move v11, v2

    .line 59
    :goto_4
    if-ge v11, v10, :cond_7

    .line 60
    .line 61
    aget-object v12, v9, v11

    .line 62
    .line 63
    instance-of v12, v12, Lz4/b;

    .line 64
    .line 65
    if-eqz v12, :cond_5

    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-nez v1, :cond_8

    .line 74
    .line 75
    move-object v1, v5

    .line 76
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 80
    .line 81
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_9
    return-object v1
.end method

.method static h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    array-length v0, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v0, :cond_2

    .line 17
    .line 18
    aget-object v4, p1, v3

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    array-length v5, v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    move-object v1, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    array-length v0, p1

    .line 51
    move v3, v2

    .line 52
    :goto_2
    if-ge v3, v0, :cond_4

    .line 53
    .line 54
    aget-object v4, p1, v3

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    array-length v6, v5

    .line 61
    const/4 v7, 0x1

    .line 62
    if-ne v6, v7, :cond_3

    .line 63
    .line 64
    aget-object v5, v5, v2

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    move-object v1, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_3
    return-object v1
.end method

.method private static i(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v3, v0, :cond_4

    .line 6
    .line 7
    aget-object v4, p1, v3

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-class v5, Lz4/a;

    .line 32
    .line 33
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lz4/a;

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    move-object v1, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 46
    .line 47
    const-string p1, "multi-JSONCreator"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    if-nez v1, :cond_6

    .line 57
    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    array-length p0, p1

    .line 61
    :goto_2
    if-ge v2, p0, :cond_6

    .line 62
    .line 63
    aget-object p2, p1, v2

    .line 64
    .line 65
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->s0(Ljava/lang/reflect/Method;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    move-object v1, p2

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    :goto_3
    return-object v1
.end method

.method private static j(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/d;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/alibaba/fastjson/util/d;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->e()Lz4/b;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method
