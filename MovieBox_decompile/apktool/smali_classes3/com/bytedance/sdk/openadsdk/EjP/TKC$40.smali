.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Dq:Ljava/lang/String;

.field final synthetic EjP:Z

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Jcg:J

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Lorg/json/JSONObject;

.field final synthetic uA:J

.field final synthetic vS:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->TKC:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->EjP:Z

    .line 8
    .line 9
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->HiB:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->vS:J

    .line 12
    .line 13
    iput-wide p9, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Jcg:J

    .line 14
    .line 15
    iput-object p11, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Dq:Ljava/lang/String;

    .line 16
    .line 17
    iput-wide p12, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->uA:J

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    const-string v0, "ad_extra_data"

    .line 2
    .line 3
    const-string v1, "click"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HS()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 12
    .line 13
    if-eqz v3, :cond_f

    .line 14
    .line 15
    new-instance v3, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    new-instance v3, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->TKC:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    const-string v4, "device"

    .line 46
    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg(Landroid/content/Context;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->TKC:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x1

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->EjP:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    const-string v6, "click_scence"

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 82
    .line 83
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->pR()Z

    .line 96
    .line 97
    .line 98
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    const-string v6, "pag_json_data"

    .line 100
    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    :try_start_2
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    new-instance v4, Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .line 113
    .line 114
    :cond_4
    const-string v7, "is_new_playable"

    .line 115
    .line 116
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WO()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    const-string v7, "is_pre_render"

    .line 128
    .line 129
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    :catchall_0
    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 140
    .line 141
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    const/4 v7, 0x0

    .line 146
    if-eqz v4, :cond_8

    .line 147
    .line 148
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-nez v4, :cond_7

    .line 153
    .line 154
    new-instance v4, Lorg/json/JSONObject;

    .line 155
    .line 156
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_7
    const-string v8, "is_lp_pre_render"

    .line 160
    .line 161
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 162
    .line 163
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FcE()Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    :cond_8
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 178
    .line 179
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 187
    .line 188
    const-string v4, "tag"

    .line 189
    .line 190
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->HiB:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    const-string v0, "agg_request_type"

    .line 196
    .line 197
    const/4 v4, -0x1

    .line 198
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->EjP:Z

    .line 203
    .line 204
    const/4 v6, 0x2

    .line 205
    if-eqz v4, :cond_9

    .line 206
    .line 207
    if-ne v0, v6, :cond_9

    .line 208
    .line 209
    const-string v4, "app_log_url"

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :cond_9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->TKC:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ib;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 229
    .line 230
    const-string v4, "log_extra"

    .line 231
    .line 232
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v8

    .line 240
    const-wide/16 v10, 0x3e8

    .line 241
    .line 242
    div-long/2addr v8, v10

    .line 243
    long-to-double v8, v8

    .line 244
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Ljava/lang/String;)D

    .line 245
    .line 246
    .line 247
    move-result-wide v10

    .line 248
    sub-double/2addr v8, v10

    .line 249
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 258
    .line 259
    const-string v8, "show_time"

    .line 260
    .line 261
    const/4 v9, 0x0

    .line 262
    cmpl-float v10, v1, v9

    .line 263
    .line 264
    if-lez v10, :cond_a

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_a
    move v1, v9

    .line 268
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_f

    .line 288
    .line 289
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->EjP:Z

    .line 290
    .line 291
    if-eqz v1, :cond_c

    .line 292
    .line 293
    if-ne v0, v6, :cond_c

    .line 294
    .line 295
    const-string v0, "click_tracking_url"

    .line 296
    .line 297
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_f

    .line 302
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .line 307
    .line 308
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-ge v7, v3, :cond_b

    .line 313
    .line 314
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    add-int/lit8 v7, v7, 0x1

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_b
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;Z)Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->vS:J

    .line 329
    .line 330
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-static {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 339
    .line 340
    if-eqz v0, :cond_f

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kb()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;Z)Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_d
    const-string v1, "show"

    .line 361
    .line 362
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->TKC:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_f

    .line 369
    .line 370
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-nez v1, :cond_f

    .line 383
    .line 384
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->EjP:Z

    .line 385
    .line 386
    if-eqz v1, :cond_f

    .line 387
    .line 388
    if-ne v0, v6, :cond_f

    .line 389
    .line 390
    const-string v0, "show_tracking_url"

    .line 391
    .line 392
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    if-eqz v0, :cond_f

    .line 397
    .line 398
    new-instance v1, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .line 402
    .line 403
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-ge v7, v3, :cond_e

    .line 408
    .line 409
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    add-int/lit8 v7, v7, 0x1

    .line 417
    .line 418
    goto :goto_3

    .line 419
    :cond_e
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;Z)Ljava/util/List;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->vS:J

    .line 424
    .line 425
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-static {v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 430
    .line 431
    .line 432
    :catch_0
    :cond_f
    :goto_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 433
    .line 434
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Jcg:J

    .line 435
    .line 436
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 437
    .line 438
    invoke-direct {v0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 439
    .line 440
    .line 441
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Dq:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->HiB:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->TKC:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->vS:J

    .line 460
    .line 461
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->uA:J

    .line 470
    .line 471
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->vS(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->sP:Lorg/json/JSONObject;

    .line 484
    .line 485
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ci()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$40;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 500
    .line 501
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cKW()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;)V

    .line 511
    .line 512
    .line 513
    return-void
.end method
