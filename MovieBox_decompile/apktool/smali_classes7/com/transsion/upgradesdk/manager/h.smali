.class public final Lcom/transsion/upgradesdk/manager/h;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lqu/f;


# direct methods
.method public constructor <init>(Lqu/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lcom/transsion/upgradesdk/bean/UpgradeStatus;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3  \u8bf7\u6c42\u6210\u529f - : "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "UpgradeSdkManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_d

    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 25
    .line 26
    iget-object v0, v0, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeStatus;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v0, :cond_c

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeStatus;->getData()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ne v4, v5, :cond_2

    .line 55
    .line 56
    move v4, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    move v4, v2

    .line 59
    :goto_1
    iput-boolean v4, v0, Lqu/f;->c:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 62
    .line 63
    iget-boolean v4, v0, Lqu/f;->c:Z

    .line 64
    .line 65
    const-string v6, "key"

    .line 66
    .line 67
    const-string v7, "application"

    .line 68
    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    iget-object v0, v0, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3 \u8bf7\u6c42\u6210\u529f- \u6807\u8bb0\u5f53\u524d\u5f3a\u66f4\u5f39\u7a97"

    .line 83
    .line 84
    invoke-static {v1, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 88
    .line 89
    iput-boolean v5, v0, Lqu/f;->e:Z

    .line 90
    .line 91
    sget-object v0, Ltu/i;->b:Ltu/h;

    .line 92
    .line 93
    sget-object v4, Lpu/a;->a:Landroid/app/Application;

    .line 94
    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v4, v3

    .line 102
    :goto_2
    invoke-virtual {v0, v4}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v4, "KV_UPGRADE_IS_FORCE"

    .line 107
    .line 108
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v0, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0, v4, v5}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    :cond_4
    sget-object v0, Ltu/i;->b:Ltu/h;

    .line 119
    .line 120
    sget-object v4, Lpu/a;->a:Landroid/app/Application;

    .line 121
    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v4, v3

    .line 129
    :goto_3
    invoke-virtual {v0, v4}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iget-object v8, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 134
    .line 135
    iget-boolean v8, v8, Lqu/f;->c:Z

    .line 136
    .line 137
    const-string v9, "KV_UPGRADE_LAST_POP"

    .line 138
    .line 139
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, v4, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 143
    .line 144
    if-eqz v4, :cond_6

    .line 145
    .line 146
    invoke-virtual {v4, v9, v8}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Z)Z

    .line 147
    .line 148
    .line 149
    :cond_6
    iget-object v4, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 150
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v8

    .line 155
    iput-wide v8, v4, Lqu/f;->k:J

    .line 156
    .line 157
    sget-object v4, Lpu/a;->a:Landroid/app/Application;

    .line 158
    .line 159
    if-eqz v4, :cond_7

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    move-object v4, v3

    .line 166
    :goto_4
    invoke-virtual {v0, v4}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v4, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 171
    .line 172
    iget-wide v7, v4, Lqu/f;->k:J

    .line 173
    .line 174
    const-string v4, "KV_UPGRADE_LAST_REQUEST_SERVER"

    .line 175
    .line 176
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, v0, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 180
    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    invoke-virtual {v0, v4, v7, v8}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    .line 184
    .line 185
    .line 186
    :cond_8
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 187
    .line 188
    iget-boolean v4, v0, Lqu/f;->c:Z

    .line 189
    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    iget-object v0, v0, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 193
    .line 194
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lou/a;->a(Lcom/transsion/upgradesdk/bean/UpgradeData;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_9

    .line 202
    .line 203
    move v2, v5

    .line 204
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeStatus;->getData()Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_a

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    move-object v6, p1

    .line 215
    goto :goto_5

    .line 216
    :cond_a
    move-object v6, v3

    .line 217
    :goto_5
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 218
    .line 219
    iget-object p1, p1, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 220
    .line 221
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    const/16 v11, 0x10

    .line 237
    .line 238
    const/4 v4, 0x2

    .line 239
    const/4 v5, 0x2

    .line 240
    const-string v7, "2"

    .line 241
    .line 242
    const/4 v8, 0x0

    .line 243
    invoke-static/range {v4 .. v11}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 244
    .line 245
    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3 \u8bf7\u6c42\u6210\u529f- \u662f\u5426\u6709\u65b0\u7248\u672c\uff1a "

    .line 249
    .line 250
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 254
    .line 255
    iget-boolean v0, v0, Lqu/f;->c:Z

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v0, "  \u662f\u5426\u5f39\u7a97\uff1a "

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {v1, p1}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 276
    .line 277
    iget-object v0, p1, Lqu/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    .line 278
    .line 279
    if-eqz v0, :cond_e

    .line 280
    .line 281
    new-instance v1, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    .line 282
    .line 283
    iget-boolean v4, p1, Lqu/f;->c:Z

    .line 284
    .line 285
    iget-boolean v5, p1, Lqu/f;->e:Z

    .line 286
    .line 287
    iget-object p1, p1, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 288
    .line 289
    if-eqz p1, :cond_b

    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :cond_b
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v0, v1}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    .line 299
    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_c
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 303
    .line 304
    iget-object p1, p1, Lqu/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    .line 305
    .line 306
    if-eqz p1, :cond_e

    .line 307
    .line 308
    new-instance v0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    .line 309
    .line 310
    invoke-direct {v0, v2, v2, v2, v3}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lqu/f;

    .line 318
    .line 319
    iget-object p1, p1, Lqu/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    .line 320
    .line 321
    if-eqz p1, :cond_e

    .line 322
    .line 323
    const-string v0, "INTERNET_ERROR"

    .line 324
    .line 325
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_e
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 329
    .line 330
    return-object p1
.end method
