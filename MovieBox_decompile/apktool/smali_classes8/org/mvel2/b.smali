.class public Lorg/mvel2/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x4c

    .line 4
    .line 5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/mvel2/b;->a:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v1, Lwz/m;

    .line 13
    .line 14
    invoke-direct {v1}, Lwz/m;-><init>()V

    .line 15
    .line 16
    .line 17
    const-class v2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lwz/r;

    .line 28
    .line 29
    invoke-direct {v1}, Lwz/r;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class v2, Ljava/lang/Short;

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lwz/o;

    .line 43
    .line 44
    invoke-direct {v1}, Lwz/o;-><init>()V

    .line 45
    .line 46
    .line 47
    const-class v2, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    new-instance v1, Lwz/g;

    .line 58
    .line 59
    invoke-direct {v1}, Lwz/g;-><init>()V

    .line 60
    .line 61
    .line 62
    const-class v2, Ljava/lang/Character;

    .line 63
    .line 64
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance v1, Lwz/e;

    .line 73
    .line 74
    invoke-direct {v1}, Lwz/e;-><init>()V

    .line 75
    .line 76
    .line 77
    const-class v2, Ljava/lang/Byte;

    .line 78
    .line 79
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v1, Lwz/k;

    .line 88
    .line 89
    invoke-direct {v1}, Lwz/k;-><init>()V

    .line 90
    .line 91
    .line 92
    const-class v2, Ljava/lang/Float;

    .line 93
    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v1, Lwz/j;

    .line 103
    .line 104
    invoke-direct {v1}, Lwz/j;-><init>()V

    .line 105
    .line 106
    .line 107
    const-class v2, Ljava/lang/Double;

    .line 108
    .line 109
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 113
    .line 114
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    new-instance v1, Lwz/d;

    .line 118
    .line 119
    invoke-direct {v1}, Lwz/d;-><init>()V

    .line 120
    .line 121
    .line 122
    const-class v2, Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 128
    .line 129
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v1, Lwz/t;

    .line 133
    .line 134
    invoke-direct {v1}, Lwz/t;-><init>()V

    .line 135
    .line 136
    .line 137
    const-class v2, Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    new-instance v1, Lwz/p;

    .line 143
    .line 144
    invoke-direct {v1}, Lwz/p;-><init>()V

    .line 145
    .line 146
    .line 147
    const-class v2, Ljava/lang/Object;

    .line 148
    .line 149
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    new-instance v1, Lwz/f;

    .line 153
    .line 154
    invoke-direct {v1}, Lwz/f;-><init>()V

    .line 155
    .line 156
    .line 157
    const-class v2, [Ljava/lang/Character;

    .line 158
    .line 159
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    new-instance v2, Lwz/h;

    .line 163
    .line 164
    new-instance v3, Lwz/a;

    .line 165
    .line 166
    const-class v4, [C

    .line 167
    .line 168
    invoke-direct {v3, v4}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 169
    .line 170
    .line 171
    const/4 v5, 0x2

    .line 172
    new-array v5, v5, [Lorg/mvel2/a;

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    aput-object v1, v5, v6

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    aput-object v3, v5, v1

    .line 179
    .line 180
    invoke-direct {v2, v5}, Lwz/h;-><init>([Lorg/mvel2/a;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    new-instance v1, Lwz/s;

    .line 187
    .line 188
    invoke-direct {v1}, Lwz/s;-><init>()V

    .line 189
    .line 190
    .line 191
    const-class v2, [Ljava/lang/String;

    .line 192
    .line 193
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    new-instance v1, Lwz/l;

    .line 197
    .line 198
    invoke-direct {v1}, Lwz/l;-><init>()V

    .line 199
    .line 200
    .line 201
    const-class v2, [Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    new-instance v1, Lwz/a;

    .line 207
    .line 208
    const-class v2, [I

    .line 209
    .line 210
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    new-instance v1, Lwz/a;

    .line 217
    .line 218
    const-class v2, [J

    .line 219
    .line 220
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    new-instance v1, Lwz/a;

    .line 227
    .line 228
    const-class v2, [D

    .line 229
    .line 230
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    new-instance v1, Lwz/a;

    .line 237
    .line 238
    const-class v2, [F

    .line 239
    .line 240
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    new-instance v1, Lwz/a;

    .line 247
    .line 248
    const-class v2, [S

    .line 249
    .line 250
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    new-instance v1, Lwz/a;

    .line 257
    .line 258
    const-class v2, [Z

    .line 259
    .line 260
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    new-instance v1, Lwz/a;

    .line 267
    .line 268
    const-class v2, [B

    .line 269
    .line 270
    invoke-direct {v1, v2}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    new-instance v1, Lwz/b;

    .line 277
    .line 278
    invoke-direct {v1}, Lwz/b;-><init>()V

    .line 279
    .line 280
    .line 281
    const-class v2, Ljava/math/BigDecimal;

    .line 282
    .line 283
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    new-instance v1, Lwz/c;

    .line 287
    .line 288
    invoke-direct {v1}, Lwz/c;-><init>()V

    .line 289
    .line 290
    .line 291
    const-class v2, Ljava/math/BigInteger;

    .line 292
    .line 293
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    new-instance v1, Lwz/n;

    .line 297
    .line 298
    invoke-direct {v1}, Lwz/n;-><init>()V

    .line 299
    .line 300
    .line 301
    const-class v2, Ljava/util/List;

    .line 302
    .line 303
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const-class v2, Lorg/mvel2/util/FastList;

    .line 307
    .line 308
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    const-class v2, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    const-class v2, Ljava/util/LinkedList;

    .line 317
    .line 318
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    new-instance v1, Lwz/q;

    .line 322
    .line 323
    invoke-direct {v1}, Lwz/q;-><init>()V

    .line 324
    .line 325
    .line 326
    const-class v2, Ljava/util/Set;

    .line 327
    .line 328
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const-class v2, Ljava/util/HashSet;

    .line 332
    .line 333
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    const-class v2, Ljava/util/LinkedHashSet;

    .line 337
    .line 338
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const-class v2, Ljava/util/TreeSet;

    .line 342
    .line 343
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lorg/mvel2/util/p;->f(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lorg/mvel2/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lorg/mvel2/a;

    .line 22
    .line 23
    invoke-static {p1}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lorg/mvel2/a;->a(Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, p1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lorg/mvel2/b;->a:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/mvel2/a;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    new-instance v1, Lwz/a;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lwz/a;-><init>(Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lwz/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-interface {v1, p0}, Lorg/mvel2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_3
    :goto_0
    return-object p0
.end method
