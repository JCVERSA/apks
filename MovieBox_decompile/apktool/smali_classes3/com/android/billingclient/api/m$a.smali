.class public Lcom/android/billingclient/api/m$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Lcom/android/billingclient/api/m$c$a;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/billingclient/api/m$c;->a()Lcom/android/billingclient/api/m$c$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/m$c$a;->b(Lcom/android/billingclient/api/m$c$a;)Lcom/android/billingclient/api/m$c$a;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/billingclient/api/m$a;->f:Lcom/android/billingclient/api/m$c$a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/m;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    move v3, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v2

    .line 29
    :goto_1
    if-nez v0, :cond_3

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v1, "Details of the products must be provided."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 43
    .line 44
    if-nez v3, :cond_4

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v1, "Set SkuDetails or ProductDetailsParams, not both."

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    iget-object v5, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_7

    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-gt v5, v1, :cond_6

    .line 73
    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :cond_6
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    throw v4

    .line 86
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string v1, "SKU cannot be null."

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_8
    iget-object v5, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lcom/android/billingclient/api/m$b;

    .line 101
    .line 102
    move v6, v2

    .line 103
    :goto_4
    iget-object v7, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const-string v8, "play_pass_subs"

    .line 110
    .line 111
    if-ge v6, v7, :cond_c

    .line 112
    .line 113
    iget-object v7, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Lcom/android/billingclient/api/m$b;

    .line 120
    .line 121
    if-eqz v7, :cond_b

    .line 122
    .line 123
    if-eqz v6, :cond_a

    .line 124
    .line 125
    invoke-virtual {v7}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v9}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-nez v9, :cond_a

    .line 146
    .line 147
    invoke-virtual {v7}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v7}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_9

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    const-string v1, "All products should have same ProductType."

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string v1, "ProductDetailsParams cannot be null."

    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_c
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget-object v7, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    :cond_d
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_f

    .line 200
    .line 201
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    check-cast v9, Lcom/android/billingclient/api/m$b;

    .line 206
    .line 207
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v10}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-nez v10, :cond_d

    .line 220
    .line 221
    invoke-virtual {v9}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    invoke-virtual {v10}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-nez v10, :cond_d

    .line 234
    .line 235
    invoke-virtual {v9}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v9}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_e

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 251
    .line 252
    const-string v1, "All products must have the same package name."

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_f
    :goto_7
    new-instance v5, Lcom/android/billingclient/api/m;

    .line 259
    .line 260
    invoke-direct {v5, v4}, Lcom/android/billingclient/api/m;-><init>(Lcom/android/billingclient/api/l0;)V

    .line 261
    .line 262
    .line 263
    if-nez v0, :cond_13

    .line 264
    .line 265
    if-eqz v3, :cond_10

    .line 266
    .line 267
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Lcom/android/billingclient/api/m$b;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-nez v0, :cond_10

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_10
    move v1, v2

    .line 291
    :goto_8
    invoke-static {v5, v1}, Lcom/android/billingclient/api/m;->j(Lcom/android/billingclient/api/m;Z)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->l(Lcom/android/billingclient/api/m;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->b:Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->m(Lcom/android/billingclient/api/m;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->f:Lcom/android/billingclient/api/m$c$a;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c$a;->a()Lcom/android/billingclient/api/m$c;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->p(Lcom/android/billingclient/api/m;Lcom/android/billingclient/api/m$c;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    .line 314
    .line 315
    if-eqz v0, :cond_11

    .line 316
    .line 317
    new-instance v1, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .line 327
    .line 328
    :goto_9
    invoke-static {v5, v1}, Lcom/android/billingclient/api/m;->o(Lcom/android/billingclient/api/m;Ljava/util/ArrayList;)V

    .line 329
    .line 330
    .line 331
    iget-boolean v0, p0, Lcom/android/billingclient/api/m$a;->e:Z

    .line 332
    .line 333
    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->k(Lcom/android/billingclient/api/m;Z)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 337
    .line 338
    if-eqz v0, :cond_12

    .line 339
    .line 340
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    goto :goto_a

    .line 345
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    :goto_a
    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->n(Lcom/android/billingclient/api/m;Lcom/google/android/gms/internal/play_billing/zzaf;)V

    .line 350
    .line 351
    .line 352
    return-object v5

    .line 353
    :cond_13
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    throw v4
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/m$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/android/billingclient/api/m$a;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method
