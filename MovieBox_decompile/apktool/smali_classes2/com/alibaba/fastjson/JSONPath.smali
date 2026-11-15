.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/fastjson/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$e;,
        Lcom/alibaba/fastjson/JSONPath$d;,
        Lcom/alibaba/fastjson/JSONPath$f;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$y;,
        Lcom/alibaba/fastjson/JSONPath$d0;,
        Lcom/alibaba/fastjson/JSONPath$z;,
        Lcom/alibaba/fastjson/JSONPath$n;,
        Lcom/alibaba/fastjson/JSONPath$x;,
        Lcom/alibaba/fastjson/JSONPath$c;,
        Lcom/alibaba/fastjson/JSONPath$u;,
        Lcom/alibaba/fastjson/JSONPath$k;,
        Lcom/alibaba/fastjson/JSONPath$c0;,
        Lcom/alibaba/fastjson/JSONPath$j;,
        Lcom/alibaba/fastjson/JSONPath$h;,
        Lcom/alibaba/fastjson/JSONPath$i;,
        Lcom/alibaba/fastjson/JSONPath$f0;,
        Lcom/alibaba/fastjson/JSONPath$t;,
        Lcom/alibaba/fastjson/JSONPath$s;,
        Lcom/alibaba/fastjson/JSONPath$w;,
        Lcom/alibaba/fastjson/JSONPath$q;,
        Lcom/alibaba/fastjson/JSONPath$b;,
        Lcom/alibaba/fastjson/JSONPath$g0;,
        Lcom/alibaba/fastjson/JSONPath$r;,
        Lcom/alibaba/fastjson/JSONPath$v;,
        Lcom/alibaba/fastjson/JSONPath$m;,
        Lcom/alibaba/fastjson/JSONPath$p;,
        Lcom/alibaba/fastjson/JSONPath$o;,
        Lcom/alibaba/fastjson/JSONPath$g;,
        Lcom/alibaba/fastjson/JSONPath$e0;,
        Lcom/alibaba/fastjson/JSONPath$b0;,
        Lcom/alibaba/fastjson/JSONPath$a0;,
        Lcom/alibaba/fastjson/JSONPath$l;
    }
.end annotation


# static fields
.field private static g:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[Lcom/alibaba/fastjson/JSONPath$a0;

.field private c:Z

.field private d:Lc5/g1;

.field private e:La5/h;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/high16 v1, 0x3f400000    # 0.75f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x80

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lc5/g1;->g()Lc5/g1;

    move-result-object v0

    invoke-static {}, La5/h;->t()La5/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lc5/g1;La5/h;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc5/g1;La5/h;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->d:Lc5/g1;

    .line 6
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->e:La5/h;

    .line 7
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath;->f:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    const-string p2, "json-path can not be null or empty"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    check-cast p0, Ljava/lang/Comparable;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v2, Ljava/math/BigDecimal;

    .line 27
    .line 28
    const-class v3, Ljava/lang/Double;

    .line 29
    .line 30
    const-class v4, Ljava/lang/Float;

    .line 31
    .line 32
    const-class v5, Ljava/lang/Long;

    .line 33
    .line 34
    const-class v6, Ljava/lang/Integer;

    .line 35
    .line 36
    if-ne v0, v2, :cond_4

    .line 37
    .line 38
    if-ne v1, v6, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/math/BigDecimal;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    move-object p1, v0

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    if-ne v1, v5, :cond_2

    .line 55
    .line 56
    new-instance v0, Ljava/math/BigDecimal;

    .line 57
    .line 58
    check-cast p1, Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-ne v1, v4, :cond_3

    .line 69
    .line 70
    new-instance v0, Ljava/math/BigDecimal;

    .line 71
    .line 72
    check-cast p1, Ljava/lang/Float;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    float-to-double v1, p1

    .line 79
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    if-ne v1, v3, :cond_12

    .line 84
    .line 85
    new-instance v0, Ljava/math/BigDecimal;

    .line 86
    .line 87
    check-cast p1, Ljava/lang/Double;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    if-ne v0, v5, :cond_8

    .line 98
    .line 99
    if-ne v1, v6, :cond_5

    .line 100
    .line 101
    new-instance v0, Ljava/lang/Long;

    .line 102
    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    int-to-long v1, p1

    .line 110
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    if-ne v1, v2, :cond_6

    .line 115
    .line 116
    new-instance v0, Ljava/math/BigDecimal;

    .line 117
    .line 118
    check-cast p0, Ljava/lang/Long;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 125
    .line 126
    .line 127
    :goto_1
    move-object p0, v0

    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :cond_6
    if-ne v1, v4, :cond_7

    .line 131
    .line 132
    new-instance v0, Ljava/lang/Float;

    .line 133
    .line 134
    check-cast p0, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    long-to-float p0, v1

    .line 141
    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    if-ne v1, v3, :cond_12

    .line 146
    .line 147
    new-instance v0, Ljava/lang/Double;

    .line 148
    .line 149
    check-cast p0, Ljava/lang/Long;

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    long-to-double v1, v1

    .line 156
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    if-ne v0, v6, :cond_c

    .line 161
    .line 162
    if-ne v1, v5, :cond_9

    .line 163
    .line 164
    new-instance v0, Ljava/lang/Long;

    .line 165
    .line 166
    check-cast p0, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    int-to-long v1, p0

    .line 173
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_9
    if-ne v1, v2, :cond_a

    .line 178
    .line 179
    new-instance v0, Ljava/math/BigDecimal;

    .line 180
    .line 181
    check-cast p0, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_a
    if-ne v1, v4, :cond_b

    .line 192
    .line 193
    new-instance v0, Ljava/lang/Float;

    .line 194
    .line 195
    check-cast p0, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    int-to-float p0, p0

    .line 202
    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_b
    if-ne v1, v3, :cond_12

    .line 207
    .line 208
    new-instance v0, Ljava/lang/Double;

    .line 209
    .line 210
    check-cast p0, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    int-to-double v1, p0

    .line 217
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_c
    if-ne v0, v3, :cond_f

    .line 222
    .line 223
    if-ne v1, v6, :cond_d

    .line 224
    .line 225
    new-instance v0, Ljava/lang/Double;

    .line 226
    .line 227
    check-cast p1, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    int-to-double v1, p1

    .line 234
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_d
    if-ne v1, v5, :cond_e

    .line 240
    .line 241
    new-instance v0, Ljava/lang/Double;

    .line 242
    .line 243
    check-cast p1, Ljava/lang/Long;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v1

    .line 249
    long-to-double v1, v1

    .line 250
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_e
    if-ne v1, v4, :cond_12

    .line 256
    .line 257
    new-instance v0, Ljava/lang/Double;

    .line 258
    .line 259
    check-cast p1, Ljava/lang/Float;

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    float-to-double v1, p1

    .line 266
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_f
    if-ne v0, v4, :cond_12

    .line 272
    .line 273
    if-ne v1, v6, :cond_10

    .line 274
    .line 275
    new-instance v0, Ljava/lang/Float;

    .line 276
    .line 277
    check-cast p1, Ljava/lang/Integer;

    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    int-to-float p1, p1

    .line 284
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_10
    if-ne v1, v5, :cond_11

    .line 290
    .line 291
    new-instance v0, Ljava/lang/Float;

    .line 292
    .line 293
    check-cast p1, Ljava/lang/Long;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 296
    .line 297
    .line 298
    move-result-wide v1

    .line 299
    long-to-float p1, v1

    .line 300
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_11
    if-ne v1, v3, :cond_12

    .line 306
    .line 307
    new-instance v0, Ljava/lang/Double;

    .line 308
    .line 309
    check-cast p0, Ljava/lang/Float;

    .line 310
    .line 311
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    float-to-double v1, p0

    .line 316
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_12
    :goto_2
    check-cast p0, Ljava/lang/Comparable;

    .line 322
    .line 323
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 324
    .line 325
    .line 326
    move-result p0

    .line 327
    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0x400

    .line 25
    .line 26
    if-ge v1, v2, :cond_0

    .line 27
    .line 28
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    .line 30
    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 34
    .line 35
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    move-object v0, p0

    .line 40
    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 41
    .line 42
    :cond_0
    return-object v0

    .line 43
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    .line 44
    .line 45
    const-string v0, "jsonpath can not be null"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method protected static m(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Byte;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const-class v0, Ljava/lang/Short;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const-class v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const-class v0, Ljava/lang/Long;

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method protected c(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->i(Ljava/lang/Class;)Lc5/p0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1, p1}, Lc5/p0;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "jsonpath error, path "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p2

    .line 42
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    check-cast p1, Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast p1, Ljava/util/Collection;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    :goto_0
    if-eqz p1, :cond_6

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, La5/h;->w(Ljava/lang/Class;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->c(Ljava/lang/Object;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    return-void

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "getFieldValue error."

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    check-cast p1, Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    instance-of v0, v1, Ljava/util/Collection;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    check-cast v1, Ljava/util/Collection;

    .line 51
    .line 52
    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, La5/h;->w(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    return-void

    .line 78
    :cond_6
    instance-of v1, p1, Ljava/util/Collection;

    .line 79
    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    check-cast p1, Ljava/util/Collection;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, La5/h;->w(Ljava/lang/Class;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_8
    return-void

    .line 114
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->i(Ljava/lang/Class;)Lc5/p0;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_c

    .line 123
    .line 124
    :try_start_0
    invoke-virtual {v1, p2}, Lc5/p0;->m(Ljava/lang/String;)Lc5/g0;

    .line 125
    .line 126
    .line 127
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-eqz v2, :cond_a

    .line 129
    .line 130
    :try_start_1
    invoke-virtual {v2, p1}, Lc5/g0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catch_0
    move-exception p1

    .line 139
    goto :goto_5

    .line 140
    :catch_1
    move-exception p1

    .line 141
    goto :goto_2

    .line 142
    :catch_2
    move-exception p1

    .line 143
    goto :goto_3

    .line 144
    :goto_2
    :try_start_2
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw p3

    .line 165
    :goto_3
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    throw p3

    .line 186
    :cond_a
    invoke-virtual {v1, p1}, Lc5/p0;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_b

    .line 199
    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_b
    return-void

    .line 209
    :goto_5
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    .line 210
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v1, "jsonpath error, path "

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", segement "

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    throw p3

    .line 242
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    .line 243
    .line 244
    if-eqz v0, :cond_d

    .line 245
    .line 246
    check-cast p1, Ljava/util/List;

    .line 247
    .line 248
    const/4 v0, 0x0

    .line 249
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-ge v0, v1, :cond_d

    .line 254
    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 260
    .line 261
    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_d
    return-void
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->l()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move-object v1, p1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->b:[Lcom/alibaba/fastjson/JSONPath$a0;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v0, v3, :cond_1

    .line 14
    .line 15
    aget-object v2, v2, v0

    .line 16
    .line 17
    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$a0;->a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v1
.end method

.method f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    .line 17
    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    instance-of v1, p1, [Ljava/lang/Object;

    .line 21
    .line 22
    if-nez v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->i(Ljava/lang/Class;)Lc5/p0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    :try_start_0
    invoke-virtual {v1, p1}, Lc5/p0;->k(Ljava/lang/Object;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object p1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "evalKeySet error : "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_4
    :goto_0
    return-object v0
.end method

.method g(Ljava/lang/Object;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_1
    instance-of v1, p1, [Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast p1, [Ljava/lang/Object;

    .line 21
    .line 22
    array-length p1, p1

    .line 23
    return p1

    .line 24
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_3
    instance-of v1, p1, Ljava/util/Map;

    .line 40
    .line 41
    if-eqz v1, :cond_6

    .line 42
    .line 43
    check-cast p1, Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x0

    .line 54
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    return v0

    .line 70
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->i(Ljava/lang/Class;)Lc5/p0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_7

    .line 79
    .line 80
    return v0

    .line 81
    :cond_7
    :try_start_0
    invoke-virtual {v1, p1}, Lc5/p0;->r(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return p1

    .line 86
    :catch_0
    move-exception p1

    .line 87
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "evalSize error : "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method protected h(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    if-ltz p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge p2, v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    return-object v0

    .line 25
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-gt v1, v2, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, p2

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_3
    return-object v0

    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_8

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ltz p2, :cond_6

    .line 61
    .line 62
    if-ge p2, v1, :cond_5

    .line 63
    .line 64
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_5
    return-object v0

    .line 70
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-gt v2, v1, :cond_7

    .line 75
    .line 76
    add-int/2addr v1, p2

    .line 77
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_7
    return-object v0

    .line 83
    :cond_8
    instance-of v1, p1, Ljava/util/Map;

    .line 84
    .line 85
    if-eqz v1, :cond_a

    .line 86
    .line 87
    check-cast p1, Ljava/util/Map;

    .line 88
    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_9
    return-object v0

    .line 108
    :cond_a
    instance-of v1, p1, Ljava/util/Collection;

    .line 109
    .line 110
    if-eqz v1, :cond_d

    .line 111
    .line 112
    check-cast p1, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/4 v1, 0x0

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_c

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-ne v1, p2, :cond_b

    .line 130
    .line 131
    return-object v2

    .line 132
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_c
    return-object v0

    .line 136
    :cond_d
    if-nez p2, :cond_e

    .line 137
    .line 138
    return-object p1

    .line 139
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p1
.end method

.method protected i(Ljava/lang/Class;)Lc5/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->d:Lc5/g1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc5/g1;->h(Ljava/lang/Class;)Lc5/z0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lc5/p0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lc5/p0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method protected j(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    move-object v1, p1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->e:La5/h;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;La5/h;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    move-object v3, v1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_1
    move-object v3, p1

    .line 23
    :goto_0
    nop

    .line 24
    instance-of p1, v3, Ljava/util/Map;

    .line 25
    .line 26
    const-wide v1, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v4, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    check-cast v3, Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    cmp-long p2, v4, p3

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    cmp-long p2, v1, p3

    .line 51
    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_3
    return-object p1

    .line 63
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->i(Ljava/lang/Class;)Lc5/p0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v2, p1

    .line 75
    move-object v4, p2

    .line 76
    move-wide v5, p3

    .line 77
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lc5/p0;->n(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    return-object p1

    .line 82
    :catch_1
    move-exception p1

    .line 83
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    .line 84
    .line 85
    new-instance p4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v0, "jsonpath error, path "

    .line 91
    .line 92
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", segement "

    .line 101
    .line 102
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw p3

    .line 116
    :cond_5
    instance-of p1, v3, Ljava/util/List;

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    if-eqz p1, :cond_11

    .line 120
    .line 121
    check-cast v3, Ljava/util/List;

    .line 122
    .line 123
    cmp-long p1, v4, p3

    .line 124
    .line 125
    if-eqz p1, :cond_10

    .line 126
    .line 127
    cmp-long p1, v1, p3

    .line 128
    .line 129
    if-nez p1, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-ge v6, p1, :cond_e

    .line 137
    .line 138
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-ne p1, v3, :cond_8

    .line 143
    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->j(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    instance-of v1, p1, Ljava/util/Collection;

    .line 164
    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    check-cast p1, Ljava/util/Collection;

    .line 168
    .line 169
    if-nez v0, :cond_9

    .line 170
    .line 171
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 178
    .line 179
    .line 180
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    if-nez p1, :cond_b

    .line 185
    .line 186
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->f:Z

    .line 187
    .line 188
    if-nez v1, :cond_d

    .line 189
    .line 190
    :cond_b
    if-nez v0, :cond_c

    .line 191
    .line 192
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 199
    .line 200
    .line 201
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_d
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_e
    if-nez v0, :cond_f

    .line 208
    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_f
    return-object v0

    .line 214
    :cond_10
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    return-object p1

    .line 223
    :cond_11
    instance-of p1, v3, [Ljava/lang/Object;

    .line 224
    .line 225
    if-eqz p1, :cond_19

    .line 226
    .line 227
    check-cast v3, [Ljava/lang/Object;

    .line 228
    .line 229
    cmp-long p1, v4, p3

    .line 230
    .line 231
    if-eqz p1, :cond_18

    .line 232
    .line 233
    cmp-long p1, v1, p3

    .line 234
    .line 235
    if-nez p1, :cond_12

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    .line 239
    .line 240
    array-length v0, v3

    .line 241
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 242
    .line 243
    .line 244
    :goto_4
    array-length v0, v3

    .line 245
    if-ge v6, v0, :cond_17

    .line 246
    .line 247
    aget-object v0, v3, v6

    .line 248
    .line 249
    if-ne v0, v3, :cond_13

    .line 250
    .line 251
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_13
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->j(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    instance-of v1, v0, Ljava/util/Collection;

    .line 260
    .line 261
    if-eqz v1, :cond_14

    .line 262
    .line 263
    check-cast v0, Ljava/util/Collection;

    .line 264
    .line 265
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_14
    if-nez v0, :cond_15

    .line 270
    .line 271
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->f:Z

    .line 272
    .line 273
    if-nez v1, :cond_16

    .line 274
    .line 275
    :cond_15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :cond_16
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_17
    return-object p1

    .line 282
    :cond_18
    :goto_6
    array-length p1, v3

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    return-object p1

    .line 288
    :cond_19
    instance-of p1, v3, Ljava/lang/Enum;

    .line 289
    .line 290
    if-eqz p1, :cond_1b

    .line 291
    .line 292
    move-object p1, v3

    .line 293
    check-cast p1, Ljava/lang/Enum;

    .line 294
    .line 295
    const-wide v1, -0x3b435245719ce47aL    # -1.3543099103600943E23

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    cmp-long p2, v1, p3

    .line 301
    .line 302
    if-nez p2, :cond_1a

    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    return-object p1

    .line 309
    :cond_1a
    const-wide v1, -0xe14383dfcdd03deL    # -5.788733405278088E240

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    cmp-long p2, v1, p3

    .line 315
    .line 316
    if-nez p2, :cond_1b

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    return-object p1

    .line 327
    :cond_1b
    instance-of p1, v3, Ljava/util/Calendar;

    .line 328
    .line 329
    if-eqz p1, :cond_21

    .line 330
    .line 331
    check-cast v3, Ljava/util/Calendar;

    .line 332
    .line 333
    const-wide p1, 0x7c64634977425edcL

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    cmp-long p1, p1, p3

    .line 339
    .line 340
    if-nez p1, :cond_1c

    .line 341
    .line 342
    const/4 p1, 0x1

    .line 343
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    return-object p1

    .line 352
    :cond_1c
    const-wide p1, -0xb423c6c9050a95bL

    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    cmp-long p1, p1, p3

    .line 358
    .line 359
    if-nez p1, :cond_1d

    .line 360
    .line 361
    const/4 p1, 0x2

    .line 362
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    return-object p1

    .line 371
    :cond_1d
    const-wide p1, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    cmp-long p1, p1, p3

    .line 377
    .line 378
    if-nez p1, :cond_1e

    .line 379
    .line 380
    const/4 p1, 0x5

    .line 381
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    return-object p1

    .line 390
    :cond_1e
    const-wide p1, 0x407efecc7eb5764fL    # 495.924925526463

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    cmp-long p1, p1, p3

    .line 396
    .line 397
    if-nez p1, :cond_1f

    .line 398
    .line 399
    const/16 p1, 0xb

    .line 400
    .line 401
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    return-object p1

    .line 410
    :cond_1f
    const-wide p1, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    cmp-long p1, p1, p3

    .line 416
    .line 417
    if-nez p1, :cond_20

    .line 418
    .line 419
    const/16 p1, 0xc

    .line 420
    .line 421
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    return-object p1

    .line 430
    :cond_20
    const-wide p1, -0x5b667a10b311df43L

    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    cmp-long p1, p1, p3

    .line 436
    .line 437
    if-nez p1, :cond_21

    .line 438
    .line 439
    const/16 p1, 0xd

    .line 440
    .line 441
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    return-object p1

    .line 450
    :cond_21
    return-object v0
.end method

.method protected k(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->i(Ljava/lang/Class;)Lc5/p0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Lc5/p0;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "jsonpath error, path "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    check-cast p1, Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    check-cast p1, Ljava/util/Collection;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method protected l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->b:[Lcom/alibaba/fastjson/JSONPath$a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "*"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$a0;

    .line 18
    .line 19
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$g0;->c:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->b:[Lcom/alibaba/fastjson/JSONPath$a0;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$l;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$l;->d()[Lcom/alibaba/fastjson/JSONPath$a0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->b:[Lcom/alibaba/fastjson/JSONPath$a0;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$l;->b(Lcom/alibaba/fastjson/JSONPath$l;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath;->c:Z

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public n()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->l()V

    .line 3
    .line 4
    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->b:[Lcom/alibaba/fastjson/JSONPath$a0;

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    .line 11
    aget-object v2, v2, v1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Lcom/alibaba/fastjson/JSONPath$b;

    .line 18
    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    const-class v3, Lcom/alibaba/fastjson/JSONPath$v;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    return v0

    .line 27
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x1

    .line 31
    :catch_0
    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
