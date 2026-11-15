.class public Lorg/mvel2/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(ZLorg/mvel2/compiler/CompiledExpression;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lorg/mvel2/util/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mvel2/util/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/mvel2/compiler/CompiledExpression;->getFirstNode()Lorg/mvel2/ast/ASTNode;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    :try_start_0
    iget v3, v1, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    if-ne v3, v4, :cond_2

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lorg/mvel2/e;->b()Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz p0, :cond_f

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_a

    .line 30
    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto/16 :goto_9

    .line 33
    .line 34
    :cond_1
    :goto_0
    :try_start_1
    sget-object v3, Lorg/mvel2/e;->a:Ljava/lang/ThreadLocal;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lxz/b;

    .line 41
    .line 42
    move-object v4, v1

    .line 43
    check-cast v4, Lorg/mvel2/ast/LineLabel;

    .line 44
    .line 45
    invoke-virtual {v3, v4, p3, p1}, Lxz/b;->a(Lorg/mvel2/ast/LineLabel;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/compiler/CompiledExpression;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lorg/mvel2/util/g;->g()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, p2, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->tiltFlag()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eq v5, v4, :cond_f

    .line 86
    .line 87
    const/16 v4, 0x25

    .line 88
    .line 89
    if-eq v5, v4, :cond_e

    .line 90
    .line 91
    const/16 v4, 0x63

    .line 92
    .line 93
    if-eq v5, v4, :cond_d

    .line 94
    .line 95
    const/16 v4, 0x1d

    .line 96
    .line 97
    const/16 v6, 0x1e

    .line 98
    .line 99
    if-eq v5, v4, :cond_a

    .line 100
    .line 101
    if-eq v5, v6, :cond_9

    .line 102
    .line 103
    iget-object v4, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 104
    .line 105
    invoke-virtual {v4, p2, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0, v4, v3}, Lorg/mvel2/util/g;->r(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    :goto_1
    const/4 v3, 0x0

    .line 113
    :try_start_4
    invoke-virtual {v0}, Lorg/mvel2/util/g;->h()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_f

    .line 118
    .line 119
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    const/16 v5, 0x17

    .line 130
    .line 131
    if-ne v4, v5, :cond_8

    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5}, Lorg/mvel2/util/n;->k(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    invoke-static {v4}, Lorg/mvel2/util/n;->k(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-nez v6, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    invoke-virtual {v0, v2}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catch_1
    move-exception p0

    .line 162
    goto :goto_3

    .line 163
    :catch_2
    move-exception p0

    .line 164
    goto :goto_4

    .line 165
    :catch_3
    move-exception p0

    .line 166
    goto :goto_5

    .line 167
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lorg/mvel2/util/g;->b()V

    .line 168
    .line 169
    .line 170
    invoke-static {v5}, Lorg/mvel2/util/n;->k(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-nez v6, :cond_7

    .line 175
    .line 176
    move-object v4, v5

    .line 177
    :cond_7
    invoke-virtual {v0, v4}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_8
    invoke-virtual {v0}, Lorg/mvel2/util/g;->i()V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/mvel2/CompileException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :goto_3
    :try_start_5
    new-instance p1, Lorg/mvel2/CompileException;

    .line 186
    .line 187
    const-string p2, "failed to compileShared sub expression"

    .line 188
    .line 189
    new-array p3, v3, [C

    .line 190
    .line 191
    invoke-direct {p1, p2, p3, v3, p0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :goto_4
    throw p0

    .line 196
    :goto_5
    new-instance p1, Lorg/mvel2/CompileException;

    .line 197
    .line 198
    const-string p2, "syntax error or incomptable types"

    .line 199
    .line 200
    new-array p3, v3, [C

    .line 201
    .line 202
    invoke-direct {p1, p2, p3, v3, p0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_9
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :cond_a
    :try_start_6
    invoke-virtual {v0}, Lorg/mvel2/util/g;->p()Ljava/lang/Boolean;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-nez v3, :cond_c

    .line 223
    .line 224
    :goto_6
    iget-object v3, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    .line 226
    if-eqz v3, :cond_c

    .line 227
    .line 228
    :try_start_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v3, v1}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 233
    .line 234
    .line 235
    move-result v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 236
    if-nez v1, :cond_b

    .line 237
    .line 238
    move-object v1, v3

    .line 239
    goto :goto_6

    .line 240
    :cond_b
    move-object v1, v3

    .line 241
    goto :goto_7

    .line 242
    :catch_4
    move-exception p0

    .line 243
    move-object v1, v3

    .line 244
    goto :goto_9

    .line 245
    :cond_c
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Lorg/mvel2/util/g;->b()V

    .line 246
    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_d
    const/4 p0, 0x1

    .line 250
    invoke-interface {p3, p0}, Lorg/mvel2/integration/VariableResolverFactory;->setTiltFlag(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 257
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 258
    .line 259
    .line 260
    return-object p0

    .line 261
    :cond_e
    :try_start_9
    iget-object v3, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 262
    .line 263
    if-eqz v3, :cond_f

    .line 264
    .line 265
    invoke-virtual {v0}, Lorg/mvel2/util/g;->b()V

    .line 266
    .line 267
    .line 268
    :catch_5
    :cond_f
    :goto_8
    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 269
    .line 270
    if-nez v1, :cond_0

    .line 271
    .line 272
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 276
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 277
    .line 278
    .line 279
    return-object p0

    .line 280
    :goto_9
    if-eqz v1, :cond_10

    .line 281
    .line 282
    :try_start_a
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_10

    .line 287
    .line 288
    iget-object p1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 289
    .line 290
    if-eqz p1, :cond_10

    .line 291
    .line 292
    new-instance p0, Lorg/mvel2/CompileException;

    .line 293
    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string p2, "incomplete statement: "

    .line 300
    .line 301
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string p2, " (possible use of reserved keyword as identifier: "

    .line 312
    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string p2, ")"

    .line 324
    .line 325
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 337
    .line 338
    .line 339
    move-result p3

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 341
    .line 342
    .line 343
    throw p0

    .line 344
    :cond_10
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 345
    :goto_a
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 346
    .line 347
    .line 348
    throw p0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/e;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method
