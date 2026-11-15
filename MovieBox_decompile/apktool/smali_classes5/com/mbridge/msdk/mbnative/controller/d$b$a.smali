.class Lcom/mbridge/msdk/mbnative/controller/d$b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/d$b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/d$b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 14
    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/mbridge/msdk/mbnative/controller/b;->a:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;)Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->a()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v5, "0_"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 70
    .line 71
    iget-object v6, v6, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->a()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 113
    .line 114
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-lez v3, :cond_5

    .line 119
    .line 120
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 129
    .line 130
    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-le v3, v4, :cond_4

    .line 135
    .line 136
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 137
    .line 138
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_4
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 148
    .line 149
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 150
    .line 151
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_5
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 163
    .line 164
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    const/4 v4, -0x1

    .line 169
    if-ne v3, v4, :cond_6

    .line 170
    .line 171
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 172
    .line 173
    invoke-static {v3, v2}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 178
    .line 179
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    const/4 v4, -0x3

    .line 184
    if-ne v3, v4, :cond_7

    .line 185
    .line 186
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 187
    .line 188
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 189
    .line 190
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 201
    .line 202
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    const/4 v4, -0x2

    .line 207
    if-ne v3, v4, :cond_a

    .line 208
    .line 209
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/b;->getTemplate()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const/4 v4, 0x3

    .line 216
    if-ne v3, v4, :cond_8

    .line 217
    .line 218
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 219
    .line 220
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->h(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_9

    .line 225
    .line 226
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->h(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_8
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 237
    .line 238
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->i(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_9

    .line 243
    .line 244
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 245
    .line 246
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->i(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 251
    .line 252
    .line 253
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 254
    .line 255
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->g(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-gtz v3, :cond_a

    .line 260
    .line 261
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->b()Ljava/util/Map;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 266
    .line 267
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 268
    .line 269
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Ljava/lang/Integer;

    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 280
    .line 281
    invoke-static {v4, v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 282
    .line 283
    .line 284
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 285
    .line 286
    iget-object v3, v3, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 293
    .line 294
    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->g(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-ge v3, v4, :cond_b

    .line 299
    .line 300
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 301
    .line 302
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 303
    .line 304
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 311
    .line 312
    .line 313
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    new-instance v4, Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .line 322
    .line 323
    move v5, v2

    .line 324
    :goto_3
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 325
    .line 326
    iget-object v6, v6, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    if-ge v5, v6, :cond_11

    .line 333
    .line 334
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 335
    .line 336
    iget-object v6, v6, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 343
    .line 344
    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 345
    .line 346
    iget-object v7, v7, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-virtual {v6}, Lcom/mbridge/msdk/out/Campaign;->getPackageName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-static {v7, v8}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    iget-object v8, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 368
    .line 369
    iget-object v8, v8, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 370
    .line 371
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-virtual {v8, v9, v6}, Lcom/mbridge/msdk/mbnative/controller/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 380
    .line 381
    .line 382
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    iget-object v9, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 387
    .line 388
    invoke-static {v9}, Lcom/mbridge/msdk/mbnative/controller/d$b;->g(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    if-ge v8, v9, :cond_10

    .line 393
    .line 394
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    const/16 v9, 0x63

    .line 399
    .line 400
    if-eq v8, v9, :cond_10

    .line 401
    .line 402
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    if-eqz v8, :cond_d

    .line 407
    .line 408
    if-eqz v7, :cond_c

    .line 409
    .line 410
    move v7, v1

    .line 411
    goto :goto_4

    .line 412
    :cond_c
    const/4 v7, 0x2

    .line 413
    :goto_4
    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 414
    .line 415
    .line 416
    :cond_d
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    invoke-static {v7, v6}, Lcom/mbridge/msdk/foundation/same/c;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    if-eqz v7, :cond_e

    .line 429
    .line 430
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    if-nez v7, :cond_f

    .line 442
    .line 443
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_e
    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 448
    .line 449
    iget-object v7, v7, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 450
    .line 451
    sget v8, Lcom/mbridge/msdk/foundation/same/a;->x:I

    .line 452
    .line 453
    invoke-static {v7, v6, v8}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 454
    .line 455
    .line 456
    :cond_f
    :goto_5
    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 457
    .line 458
    const/4 v8, 0x0

    .line 459
    invoke-static {v7, v6, v8, v8}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    .line 460
    .line 461
    .line 462
    :cond_10
    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 463
    .line 464
    iget-object v7, v7, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 465
    .line 466
    invoke-static {v7}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Lcom/mbridge/msdk/mbnative/controller/d;)Z

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    invoke-virtual {v7, v8, v6}, Lcom/mbridge/msdk/mbnative/controller/d;->a(ZLcom/mbridge/msdk/out/Campaign;)V

    .line 471
    .line 472
    .line 473
    add-int/lit8 v5, v5, 0x1

    .line 474
    .line 475
    goto/16 :goto_3

    .line 476
    .line 477
    :cond_11
    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 478
    .line 479
    iget-object v6, v5, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 480
    .line 481
    iget-object v5, v5, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 482
    .line 483
    invoke-static {v6, v4, v5}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Lcom/mbridge/msdk/mbnative/controller/d;Ljava/util/List;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 487
    .line 488
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    if-eqz v4, :cond_12

    .line 497
    .line 498
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 499
    .line 500
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 509
    .line 510
    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    :cond_12
    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    if-eqz v1, :cond_13

    .line 519
    .line 520
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 521
    .line 522
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 523
    .line 524
    invoke-virtual {v1, v4, v3}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    :cond_13
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 528
    .line 529
    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/d$b;->b(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 534
    .line 535
    iget-object v3, v3, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 536
    .line 537
    invoke-static {v1, v3}, Lcom/mbridge/msdk/mbnative/controller/d;->a(ILjava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    if-eqz v1, :cond_14

    .line 545
    .line 546
    if-eqz v0, :cond_14

    .line 547
    .line 548
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 549
    .line 550
    .line 551
    :cond_14
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 552
    .line 553
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    if-eqz v0, :cond_15

    .line 562
    .line 563
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 572
    .line 573
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 582
    .line 583
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 588
    .line 589
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 598
    .line 599
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :cond_15
    return-void
.end method
