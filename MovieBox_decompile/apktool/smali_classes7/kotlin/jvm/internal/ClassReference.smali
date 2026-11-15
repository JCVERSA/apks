.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/ClassReference$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001dB\u0013\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\r\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0013R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlin/jvm/internal/ClassReference;",
        "Lkotlin/reflect/KClass;",
        "",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;",
        "Ljava/lang/Class;",
        "jClass",
        "<init>",
        "(Ljava/lang/Class;)V",
        "value",
        "",
        "d",
        "(Ljava/lang/Object;)Z",
        "other",
        "equals",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "a",
        "Ljava/lang/Class;",
        "e",
        "()Ljava/lang/Class;",
        "g",
        "simpleName",
        "f",
        "qualifiedName",
        "b",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final b:Lkotlin/jvm/internal/ClassReference$Companion;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/HashMap;

.field private static final e:Ljava/util/HashMap;

.field private static final f:Ljava/util/HashMap;

.field private static final g:Ljava/util/Map;


# instance fields
.field private final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lkotlin/jvm/internal/ClassReference$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->b:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 8
    .line 9
    const/16 v0, 0x17

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v2, Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v0, v3

    .line 17
    .line 18
    const-class v2, Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    aput-object v2, v0, v4

    .line 22
    .line 23
    const-class v2, Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    aput-object v2, v0, v5

    .line 27
    .line 28
    const-class v2, Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    aput-object v2, v0, v6

    .line 32
    .line 33
    const-class v2, Lkotlin/jvm/functions/Function4;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    aput-object v2, v0, v6

    .line 37
    .line 38
    const-class v2, Lkotlin/jvm/functions/Function5;

    .line 39
    .line 40
    const/4 v6, 0x5

    .line 41
    aput-object v2, v0, v6

    .line 42
    .line 43
    const-class v2, Lkotlin/jvm/functions/Function6;

    .line 44
    .line 45
    const/4 v6, 0x6

    .line 46
    aput-object v2, v0, v6

    .line 47
    .line 48
    const-class v2, Lkotlin/jvm/functions/Function7;

    .line 49
    .line 50
    const/4 v6, 0x7

    .line 51
    aput-object v2, v0, v6

    .line 52
    .line 53
    const-class v2, Lkotlin/jvm/functions/Function8;

    .line 54
    .line 55
    const/16 v6, 0x8

    .line 56
    .line 57
    aput-object v2, v0, v6

    .line 58
    .line 59
    const-class v2, Lkotlin/jvm/functions/Function9;

    .line 60
    .line 61
    const/16 v6, 0x9

    .line 62
    .line 63
    aput-object v2, v0, v6

    .line 64
    .line 65
    const-class v2, Lkotlin/jvm/functions/Function10;

    .line 66
    .line 67
    const/16 v6, 0xa

    .line 68
    .line 69
    aput-object v2, v0, v6

    .line 70
    .line 71
    const-class v2, Lkotlin/jvm/functions/Function11;

    .line 72
    .line 73
    const/16 v7, 0xb

    .line 74
    .line 75
    aput-object v2, v0, v7

    .line 76
    .line 77
    const-class v2, Lkotlin/jvm/functions/Function12;

    .line 78
    .line 79
    const/16 v7, 0xc

    .line 80
    .line 81
    aput-object v2, v0, v7

    .line 82
    .line 83
    const-class v2, Lkotlin/jvm/functions/Function13;

    .line 84
    .line 85
    const/16 v7, 0xd

    .line 86
    .line 87
    aput-object v2, v0, v7

    .line 88
    .line 89
    const-class v2, Lkotlin/jvm/functions/Function14;

    .line 90
    .line 91
    const/16 v7, 0xe

    .line 92
    .line 93
    aput-object v2, v0, v7

    .line 94
    .line 95
    const-class v2, Lkotlin/jvm/functions/Function15;

    .line 96
    .line 97
    const/16 v7, 0xf

    .line 98
    .line 99
    aput-object v2, v0, v7

    .line 100
    .line 101
    const-class v2, Lkotlin/jvm/functions/Function16;

    .line 102
    .line 103
    const/16 v7, 0x10

    .line 104
    .line 105
    aput-object v2, v0, v7

    .line 106
    .line 107
    const-class v2, Lkotlin/jvm/functions/Function17;

    .line 108
    .line 109
    const/16 v7, 0x11

    .line 110
    .line 111
    aput-object v2, v0, v7

    .line 112
    .line 113
    const-class v2, Lkotlin/jvm/functions/Function18;

    .line 114
    .line 115
    const/16 v7, 0x12

    .line 116
    .line 117
    aput-object v2, v0, v7

    .line 118
    .line 119
    const-class v2, Lkotlin/jvm/functions/Function19;

    .line 120
    .line 121
    const/16 v7, 0x13

    .line 122
    .line 123
    aput-object v2, v0, v7

    .line 124
    .line 125
    const-class v2, Lkotlin/jvm/functions/Function20;

    .line 126
    .line 127
    const/16 v7, 0x14

    .line 128
    .line 129
    aput-object v2, v0, v7

    .line 130
    .line 131
    const-class v2, Lkotlin/jvm/functions/Function21;

    .line 132
    .line 133
    const/16 v7, 0x15

    .line 134
    .line 135
    aput-object v2, v0, v7

    .line 136
    .line 137
    const-class v2, Lkotlin/jvm/functions/Function22;

    .line 138
    .line 139
    const/16 v7, 0x16

    .line 140
    .line 141
    aput-object v2, v0, v7

    .line 142
    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/Iterable;

    .line 148
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_1

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    add-int/lit8 v7, v3, 0x1

    .line 173
    .line 174
    if-gez v3, :cond_0

    .line 175
    .line 176
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 177
    .line 178
    .line 179
    :cond_0
    check-cast v6, Ljava/lang/Class;

    .line 180
    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v6, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move v3, v7

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v2}, Lkotlin/collections/MapsKt;->s(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->c:Ljava/util/Map;

    .line 199
    .line 200
    new-instance v0, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v2, "boolean"

    .line 206
    .line 207
    const-string v3, "kotlin.Boolean"

    .line 208
    .line 209
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v2, "char"

    .line 213
    .line 214
    const-string v4, "kotlin.Char"

    .line 215
    .line 216
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    const-string v2, "byte"

    .line 220
    .line 221
    const-string v6, "kotlin.Byte"

    .line 222
    .line 223
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const-string v2, "short"

    .line 227
    .line 228
    const-string v7, "kotlin.Short"

    .line 229
    .line 230
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    const-string v2, "int"

    .line 234
    .line 235
    const-string v8, "kotlin.Int"

    .line 236
    .line 237
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    const-string v2, "float"

    .line 241
    .line 242
    const-string v9, "kotlin.Float"

    .line 243
    .line 244
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    const-string v2, "long"

    .line 248
    .line 249
    const-string v10, "kotlin.Long"

    .line 250
    .line 251
    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    const-string v2, "double"

    .line 255
    .line 256
    const-string v11, "kotlin.Double"

    .line 257
    .line 258
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->d:Ljava/util/HashMap;

    .line 262
    .line 263
    new-instance v2, Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v12, "java.lang.Boolean"

    .line 269
    .line 270
    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    const-string v3, "java.lang.Character"

    .line 274
    .line 275
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-string v3, "java.lang.Byte"

    .line 279
    .line 280
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    const-string v3, "java.lang.Short"

    .line 284
    .line 285
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    const-string v3, "java.lang.Integer"

    .line 289
    .line 290
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    const-string v3, "java.lang.Float"

    .line 294
    .line 295
    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string v3, "java.lang.Long"

    .line 299
    .line 300
    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    const-string v3, "java.lang.Double"

    .line 304
    .line 305
    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    sput-object v2, Lkotlin/jvm/internal/ClassReference;->e:Ljava/util/HashMap;

    .line 309
    .line 310
    new-instance v3, Ljava/util/HashMap;

    .line 311
    .line 312
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v4, "java.lang.Object"

    .line 316
    .line 317
    const-string v6, "kotlin.Any"

    .line 318
    .line 319
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    const-string v4, "java.lang.String"

    .line 323
    .line 324
    const-string v6, "kotlin.String"

    .line 325
    .line 326
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    const-string v4, "java.lang.CharSequence"

    .line 330
    .line 331
    const-string v6, "kotlin.CharSequence"

    .line 332
    .line 333
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    const-string v4, "java.lang.Throwable"

    .line 337
    .line 338
    const-string v6, "kotlin.Throwable"

    .line 339
    .line 340
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    const-string v4, "java.lang.Cloneable"

    .line 344
    .line 345
    const-string v6, "kotlin.Cloneable"

    .line 346
    .line 347
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    const-string v4, "java.lang.Number"

    .line 351
    .line 352
    const-string v6, "kotlin.Number"

    .line 353
    .line 354
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    const-string v4, "java.lang.Comparable"

    .line 358
    .line 359
    const-string v6, "kotlin.Comparable"

    .line 360
    .line 361
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    const-string v4, "java.lang.Enum"

    .line 365
    .line 366
    const-string v6, "kotlin.Enum"

    .line 367
    .line 368
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    const-string v4, "java.lang.annotation.Annotation"

    .line 372
    .line 373
    const-string v6, "kotlin.Annotation"

    .line 374
    .line 375
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    const-string v4, "java.lang.Iterable"

    .line 379
    .line 380
    const-string v6, "kotlin.collections.Iterable"

    .line 381
    .line 382
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    const-string v4, "java.util.Iterator"

    .line 386
    .line 387
    const-string v6, "kotlin.collections.Iterator"

    .line 388
    .line 389
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    const-string v4, "java.util.Collection"

    .line 393
    .line 394
    const-string v6, "kotlin.collections.Collection"

    .line 395
    .line 396
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    const-string v4, "java.util.List"

    .line 400
    .line 401
    const-string v6, "kotlin.collections.List"

    .line 402
    .line 403
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    const-string v4, "java.util.Set"

    .line 407
    .line 408
    const-string v6, "kotlin.collections.Set"

    .line 409
    .line 410
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    const-string v4, "java.util.ListIterator"

    .line 414
    .line 415
    const-string v6, "kotlin.collections.ListIterator"

    .line 416
    .line 417
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    const-string v4, "java.util.Map"

    .line 421
    .line 422
    const-string v6, "kotlin.collections.Map"

    .line 423
    .line 424
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    const-string v4, "java.util.Map$Entry"

    .line 428
    .line 429
    const-string v6, "kotlin.collections.Map.Entry"

    .line 430
    .line 431
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    const-string v4, "kotlin.jvm.internal.StringCompanionObject"

    .line 435
    .line 436
    const-string v6, "kotlin.String.Companion"

    .line 437
    .line 438
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    const-string v4, "kotlin.jvm.internal.EnumCompanionObject"

    .line 442
    .line 443
    const-string v6, "kotlin.Enum.Companion"

    .line 444
    .line 445
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    const-string v2, "<get-values>(...)"

    .line 459
    .line 460
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    check-cast v0, Ljava/lang/Iterable;

    .line 464
    .line 465
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    const/16 v4, 0x2e

    .line 474
    .line 475
    if-eqz v2, :cond_2

    .line 476
    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    check-cast v2, Ljava/lang/String;

    .line 482
    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v7, "kotlin.jvm.internal."

    .line 489
    .line 490
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v2, v4, v1, v5, v1}, Lkotlin/text/StringsKt;->e1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v4, "CompanionObject"

    .line 504
    .line 505
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v2, ".Companion"

    .line 521
    .line 522
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    goto :goto_1

    .line 545
    :cond_2
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->c:Ljava/util/Map;

    .line 546
    .line 547
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_3

    .line 560
    .line 561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    check-cast v2, Ljava/util/Map$Entry;

    .line 566
    .line 567
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    check-cast v6, Ljava/lang/Class;

    .line 572
    .line 573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Ljava/lang/Number;

    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    const-string v8, "kotlin.Function"

    .line 593
    .line 594
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    goto :goto_2

    .line 608
    :cond_3
    sput-object v3, Lkotlin/jvm/internal/ClassReference;->f:Ljava/util/HashMap;

    .line 609
    .line 610
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 611
    .line 612
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    invoke-static {v2}, Lkotlin/collections/MapsKt;->e(I)I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 621
    .line 622
    .line 623
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    check-cast v2, Ljava/lang/Iterable;

    .line 628
    .line 629
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-eqz v3, :cond_4

    .line 638
    .line 639
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    check-cast v3, Ljava/util/Map$Entry;

    .line 644
    .line 645
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    check-cast v3, Ljava/lang/String;

    .line 654
    .line 655
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    invoke-static {v3, v4, v1, v5, v1}, Lkotlin/text/StringsKt;->e1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    goto :goto_3

    .line 666
    :cond_4
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->g:Ljava/util/Map;

    .line 667
    .line 668
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "jClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->a:Ljava/lang/Class;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic i()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic k()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->b:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->e()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->c(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public e()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/ClassReference;->a:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Lkotlin/reflect/KClass;

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->b:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->e()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->b:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->e()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->e()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " (Kotlin reflection is not available)"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
