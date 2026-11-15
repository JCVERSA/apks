.class public Lorg/mvel2/ast/NewObjectNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/ast/NewObjectNode$NewObjectArray;
    }
.end annotation


# static fields
.field private static final EMPTYCLS:[Ljava/lang/Class;

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private name:[C

.field private transient newObjectOptimizer:Lorg/mvel2/compiler/a;

.field private typeDescr:Lorg/mvel2/ast/TypeDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/mvel2/ast/NewObjectNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/mvel2/ast/NewObjectNode;->LOG:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Class;

    .line 15
    .line 16
    sput-object v0, Lorg/mvel2/ast/NewObjectNode;->EMPTYCLS:[Ljava/lang/Class;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/TypeDescriptor;ILorg/mvel2/ParserContext;)V
    .locals 8

    .line 1
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getExpr()[C

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getStart()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getOffset()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 25
    .line 26
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 27
    .line 28
    array-length v2, v1

    .line 29
    if-ge v0, v2, :cond_0

    .line 30
    .line 31
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 32
    .line 33
    add-int/2addr v0, v2

    .line 34
    invoke-static {v1, v2, v0}, Lorg/mvel2/util/m;->F0([CII)[C

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iput-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 42
    .line 43
    :goto_0
    and-int/lit8 v0, p2, 0x10

    .line 44
    .line 45
    if-eqz v0, :cond_8

    .line 46
    .line 47
    const-string v0, "could not resolve class: "

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p3, v3}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {p3, v1}, Lorg/mvel2/ParserContext;->setAllowBootstrapBypass(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p3, v3}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getClassLoader()Ljava/lang/ClassLoader;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v3, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    .line 91
    :goto_1
    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 92
    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-direct {p0, p2}, Lorg/mvel2/ast/NewObjectNode;->rewriteClassReferenceToFQCN(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    :try_start_1
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 113
    .line 114
    invoke-static {p2}, Lorg/mvel2/util/p;->j(Ljava/lang/Class;)Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception p2

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getArrayLength()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/16 v4, 0x5b

    .line 131
    .line 132
    invoke-static {v4, v3}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v3, "L"

    .line 140
    .line 141
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, ";"

    .line 154
    .line 155
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-static {v3, p2, p3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :goto_2
    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :goto_3
    sget-object v3, Lorg/mvel2/ast/NewObjectNode;->LOG:Ljava/util/logging/Logger;

    .line 171
    .line 172
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 173
    .line 174
    const-string v5, ""

    .line 175
    .line 176
    invoke-virtual {v3, v4, v5, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    :goto_4
    if-eqz p3, :cond_8

    .line 180
    .line 181
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 182
    .line 183
    if-nez p2, :cond_4

    .line 184
    .line 185
    new-instance p2, Lorg/mvel2/c;

    .line 186
    .line 187
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 188
    .line 189
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 190
    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p2, v1, v3, v2, p1}, Lorg/mvel2/c;-><init>([CIZLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p2}, Lorg/mvel2/ParserContext;->addError(Lorg/mvel2/c;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_4
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_8

    .line 222
    .line 223
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 224
    .line 225
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 226
    .line 227
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 228
    .line 229
    invoke-static {p2, v0, v3}, Lorg/mvel2/util/m;->g([CII)[Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    aget-object v0, p2, v1

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    new-array v4, v3, [Ljava/lang/Class;

    .line 248
    .line 249
    :goto_5
    if-ge v1, v3, :cond_5

    .line 250
    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    check-cast v5, [C

    .line 256
    .line 257
    invoke-static {v5, p3}, Lorg/mvel2/d;->c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    aput-object v5, v4, v1

    .line 262
    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_5
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 267
    .line 268
    invoke-static {v4, v0, v2}, Lorg/mvel2/util/m;->M([Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-nez v0, :cond_6

    .line 273
    .line 274
    invoke-virtual {p3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_6

    .line 279
    .line 280
    new-instance v0, Lorg/mvel2/c;

    .line 281
    .line 282
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 283
    .line 284
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 285
    .line 286
    invoke-virtual {p3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v7, "could not resolve constructor "

    .line 296
    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-direct {v0, v1, v3, v5, p1}, Lorg/mvel2/c;-><init>([CIZLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, v0}, Lorg/mvel2/ParserContext;->addError(Lorg/mvel2/c;)V

    .line 322
    .line 323
    .line 324
    :cond_6
    array-length p1, p2

    .line 325
    const/4 v0, 0x2

    .line 326
    if-ne p1, v0, :cond_8

    .line 327
    .line 328
    aget-object p1, p2, v2

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    if-nez p2, :cond_7

    .line 339
    .line 340
    return-void

    .line 341
    :cond_7
    new-instance p2, Lorg/mvel2/compiler/PropertyVerifier;

    .line 342
    .line 343
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 344
    .line 345
    invoke-direct {p2, p1, p3, v0}, Lorg/mvel2/compiler/PropertyVerifier;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;Ljava/lang/Class;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :catch_1
    invoke-virtual {p3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 356
    .line 357
    .line 358
    move-result p2

    .line 359
    if-eqz p2, :cond_8

    .line 360
    .line 361
    new-instance p2, Lorg/mvel2/c;

    .line 362
    .line 363
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 364
    .line 365
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 366
    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-direct {p2, v1, v3, v2, p1}, Lorg/mvel2/c;-><init>([CIZLjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p2}, Lorg/mvel2/ParserContext;->addError(Lorg/mvel2/c;)V

    .line 390
    .line 391
    .line 392
    :cond_8
    :goto_6
    return-void
.end method

.method private createPrototypalObject(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->getFunction(Ljava/lang/String;)Lorg/mvel2/ast/Function;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/Function;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private isPrototypeFunction()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getFunctions()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private rewriteClassReferenceToFQCN(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x2e

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-ne v1, v2, :cond_4

    .line 21
    .line 22
    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    const/16 v4, 0x28

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v4, v5, v3, v1}, Lorg/mvel2/util/b;->a(CII[C)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    array-length v1, v0

    .line 39
    new-array v2, v1, [C

    .line 40
    .line 41
    iput-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 42
    .line 43
    move v2, v5

    .line 44
    :goto_0
    if-ge v2, v1, :cond_3

    .line 45
    .line 46
    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 47
    .line 48
    aget-char v4, v0, v2

    .line 49
    .line 50
    aput-char v4, v3, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    array-length v2, v0

    .line 56
    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 57
    .line 58
    array-length v3, v3

    .line 59
    sub-int/2addr v3, v1

    .line 60
    add-int/2addr v2, v3

    .line 61
    new-array v2, v2, [C

    .line 62
    .line 63
    move v3, v5

    .line 64
    :goto_1
    array-length v4, v0

    .line 65
    if-ge v3, v4, :cond_1

    .line 66
    .line 67
    aget-char v4, v0, v3

    .line 68
    .line 69
    aput-char v4, v2, v3

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 75
    .line 76
    array-length v3, v3

    .line 77
    sub-int/2addr v3, v1

    .line 78
    array-length v0, v0

    .line 79
    move v4, v5

    .line 80
    :goto_2
    if-ge v4, v3, :cond_2

    .line 81
    .line 82
    add-int v6, v4, v0

    .line 83
    .line 84
    iget-object v7, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 85
    .line 86
    add-int v8, v4, v1

    .line 87
    .line 88
    aget-char v7, v7, v8

    .line 89
    .line 90
    aput-char v7, v2, v6

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iput-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 98
    .line 99
    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 100
    .line 101
    array-length v2, v1

    .line 102
    invoke-virtual {v0, v1, v5, v2, p1}, Lorg/mvel2/ast/TypeDescriptor;->updateClassName([CIII)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method


# virtual methods
.method public getNewObjectOptimizer()Lorg/mvel2/compiler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 17
    .line 18
    invoke-static {p3, p2, v0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getArrayLength()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-array v2, v0, [I

    .line 29
    .line 30
    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 31
    .line 32
    invoke-virtual {v3}, Lorg/mvel2/ast/TypeDescriptor;->getArraySize()[Lorg/mvel2/ast/ArraySize;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    .line 38
    aget-object v4, v3, v1

    .line 39
    .line 40
    iget-object v4, v4, Lorg/mvel2/ast/ArraySize;->value:[C

    .line 41
    .line 42
    invoke-static {v4, p1, p3}, Lorg/mvel2/d;->q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-class v5, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-static {v4, v5}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    aput v4, v2, v1

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :catch_1
    move-exception p1

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :catch_2
    move-exception p1

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :catch_3
    move-exception p1

    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_0
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 81
    .line 82
    array-length v2, v0

    .line 83
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->g([CII)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    aget-object v2, v0, v1

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/4 v3, 0x1

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    new-instance v4, Ljava/lang/String;

    .line 101
    .line 102
    iget-object v5, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 103
    .line 104
    array-length v6, v5

    .line 105
    const/16 v7, 0x28

    .line 106
    .line 107
    invoke-static {v7, v1, v6, v5}, Lorg/mvel2/util/b;->a(CII[C)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-static {v5, v1, v6}, Lorg/mvel2/util/m;->K0([CII)[C

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v5, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 123
    .line 124
    invoke-static {p3, v4, v5}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    new-array v6, v5, [Ljava/lang/Object;

    .line 133
    .line 134
    move v7, v1

    .line 135
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-ge v7, v8, :cond_2

    .line 140
    .line 141
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, [C

    .line 146
    .line 147
    invoke-static {v8, p1, p3}, Lorg/mvel2/d;->q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    aput-object v8, v6, v7

    .line 152
    .line 153
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-static {v6, v4, v1}, Lorg/mvel2/util/m;->N([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    :goto_2
    if-ge v1, v5, :cond_3

    .line 163
    .line 164
    aget-object v2, v6, v1

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    aget-object v4, v4, v1

    .line 171
    .line 172
    invoke-static {v2, v4}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    aput-object v2, v6, v1

    .line 177
    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    array-length v1, v0

    .line 182
    if-le v1, v3, :cond_4

    .line 183
    .line 184
    aget-object v0, v0, v3

    .line 185
    .line 186
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 191
    .line 192
    invoke-static {v0, p1, p3, p2, v1}, Lorg/mvel2/g;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    return-object p1

    .line 197
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :cond_5
    new-instance p1, Lorg/mvel2/CompileException;

    .line 203
    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string p3, "unable to find constructor for: "

    .line 210
    .line 211
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 226
    .line 227
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 228
    .line 229
    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_6
    iget-object p1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 234
    .line 235
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 240
    .line 241
    invoke-virtual {v1}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lorg/mvel2/ParserConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {p1, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sget-object v1, Lorg/mvel2/ast/NewObjectNode;->EMPTYCLS:[Ljava/lang/Class;

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    array-length v1, v0

    .line 260
    const/4 v2, 0x0

    .line 261
    if-le v1, v3, :cond_7

    .line 262
    .line 263
    aget-object v0, v0, v3

    .line 264
    .line 265
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 270
    .line 271
    invoke-static {v0, p1, p3, p2, v1}, Lorg/mvel2/g;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    return-object p1

    .line 276
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-object p1

    .line 281
    :goto_3
    new-instance p2, Lorg/mvel2/CompileException;

    .line 282
    .line 283
    new-instance p3, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v0, "could not instantiate class: "

    .line 289
    .line 290
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 305
    .line 306
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 307
    .line 308
    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    throw p2

    .line 312
    :goto_4
    new-instance p2, Lorg/mvel2/CompileException;

    .line 313
    .line 314
    new-instance p3, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v0, "cannot resolve constructor: "

    .line 320
    .line 321
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 336
    .line 337
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 338
    .line 339
    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw p2

    .line 343
    :goto_5
    new-instance p2, Lorg/mvel2/CompileException;

    .line 344
    .line 345
    new-instance p3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v0, "unable to resolve class: "

    .line 351
    .line 352
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p3

    .line 366
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 367
    .line 368
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 369
    .line 370
    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    throw p2

    .line 374
    :goto_6
    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Class;

    .line 38
    .line 39
    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 40
    .line 41
    const/16 v0, 0x10

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lorg/mvel2/ast/NewObjectNode;->rewriteClassReferenceToFQCN(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/mvel2/ast/TypeDescriptor;->getArrayLength()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/16 v2, 0x5b

    .line 66
    .line 67
    invoke-static {v2, v1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "L"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ";"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 98
    .line 99
    invoke-static {p3, v0, v1}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    new-instance p2, Lorg/mvel2/CompileException;

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v0, "cannot construct object: "

    .line 115
    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 120
    .line 121
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, " is not a class reference"

    .line 129
    .line 130
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 138
    .line 139
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 140
    .line 141
    invoke-direct {p2, p3, v0, v1, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw p2

    .line 145
    :catch_1
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 146
    .line 147
    invoke-virtual {v0}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    .line 153
    new-instance v0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;

    .line 154
    .line 155
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 166
    .line 167
    invoke-virtual {v2}, Lorg/mvel2/ast/TypeDescriptor;->getCompiledArraySize()[Lorg/mvel2/compiler/ExecutableStatement;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {v0, v1, v2}, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;-><init>(Ljava/lang/Class;[Lorg/mvel2/compiler/ExecutableStatement;)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    .line 175
    .line 176
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    return-object p1

    .line 181
    :cond_1
    :try_start_2
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 186
    .line 187
    if-nez v0, :cond_2

    .line 188
    .line 189
    new-instance v0, Lorg/mvel2/ParserContext;

    .line 190
    .line 191
    invoke-direct {v0}, Lorg/mvel2/ParserContext;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {p3}, Lorg/mvel2/util/e;->e(Lorg/mvel2/integration/VariableResolverFactory;)Ljava/util/Map;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Lorg/mvel2/ParserConfiguration;->setAllImports(Ljava/util/Map;)V

    .line 203
    .line 204
    .line 205
    :cond_2
    move-object v1, v0

    .line 206
    goto :goto_1

    .line 207
    :catchall_0
    move-exception p1

    .line 208
    goto :goto_3

    .line 209
    :catch_2
    move-exception p1

    .line 210
    goto :goto_2

    .line 211
    :goto_1
    iget-object v2, p0, Lorg/mvel2/ast/NewObjectNode;->name:[C

    .line 212
    .line 213
    array-length v4, v2

    .line 214
    const/4 v3, 0x0

    .line 215
    move-object v0, v8

    .line 216
    move-object v5, p1

    .line 217
    move-object v6, p2

    .line 218
    move-object v7, p3

    .line 219
    invoke-interface/range {v0 .. v7}, Lorg/mvel2/optimizers/a;->optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    .line 224
    .line 225
    invoke-interface {v8}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_3

    .line 230
    .line 231
    invoke-interface {v8}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 236
    .line 237
    invoke-interface {v8}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1
    :try_end_2
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 242
    .line 243
    .line 244
    return-object p1

    .line 245
    :cond_3
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :goto_2
    :try_start_3
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 250
    .line 251
    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 252
    .line 253
    invoke-static {p1, p2, p3}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :goto_3
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->newObjectOptimizer:Lorg/mvel2/compiler/a;

    .line 263
    .line 264
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    return-object p1
.end method

.method public getTypeDescr()Lorg/mvel2/ast/TypeDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode;->typeDescr:Lorg/mvel2/ast/TypeDescriptor;

    .line 2
    .line 3
    return-object v0
.end method
