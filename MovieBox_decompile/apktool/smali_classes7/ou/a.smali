.class public abstract Lou/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lcom/transsion/upgradesdk/bean/UpgradeData;)Z
    .locals 20

    .line 1
    const-string v0, "KV_UPGRADE_LAST_TARGET_VERSION"

    .line 2
    .line 3
    const-string v1, "upgradeSdkLog"

    .line 4
    .line 5
    const-string v2, "msg"

    .line 6
    .line 7
    const-string v3, "tag"

    .line 8
    .line 9
    const-string v4, "ValidateCheckUtils"

    .line 10
    .line 11
    const-string v5, "key"

    .line 12
    .line 13
    const-string v6, "filter  ->> \u76ee\u6807\u7248\u672c\u53d8\u5316\uff0c\u91cd\u7f6e\u5f39\u7a97\u6b21\u6570\u3002last="

    .line 14
    .line 15
    const-string v7, "upgradeData"

    .line 16
    .line 17
    move-object/from16 v8, p0

    .line 18
    .line 19
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    const/4 v9, 0x1

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    return v9

    .line 30
    :cond_0
    const/4 v11, 0x0

    .line 31
    const-wide/16 v12, 0x1388

    .line 32
    .line 33
    :try_start_0
    sget-object v7, Ltu/i;->b:Ltu/h;

    .line 34
    .line 35
    sget-object v16, Lpu/a;->a:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    const-string v17, "application"

    .line 38
    .line 39
    if-eqz v16, :cond_1

    .line 40
    .line 41
    move-object/from16 v10, v16

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    :goto_0
    invoke-virtual {v7, v10}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v10, v10, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 56
    .line 57
    const-wide/16 v14, 0x0

    .line 58
    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    invoke-virtual {v10, v0, v14, v15}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v14

    .line 65
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersion()J

    .line 66
    .line 67
    .line 68
    move-result-wide v18

    .line 69
    cmp-long v10, v14, v18

    .line 70
    .line 71
    if-eqz v10, :cond_e

    .line 72
    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, ", current="

    .line 82
    .line 83
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersion()J

    .line 87
    .line 88
    .line 89
    move-result-wide v14

    .line 90
    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v14

    .line 107
    sget-boolean v6, Ltu/g;->a:Z

    .line 108
    .line 109
    if-eqz v6, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    sget-wide v18, Ltu/g;->b:J

    .line 113
    .line 114
    sub-long v18, v14, v18

    .line 115
    .line 116
    cmp-long v10, v18, v12

    .line 117
    .line 118
    if-gez v10, :cond_4

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    sput-wide v14, Ltu/g;->b:J

    .line 122
    .line 123
    const/4 v6, 0x3

    .line 124
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_5

    .line 129
    .line 130
    sput-boolean v9, Ltu/g;->a:Z

    .line 131
    .line 132
    :cond_5
    sget-boolean v6, Ltu/g;->a:Z

    .line 133
    .line 134
    :goto_1
    sget-object v10, Lqu/f;->o:Lqu/d;

    .line 135
    .line 136
    invoke-virtual {v10}, Lqu/d;->a()Lqu/f;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    iget-boolean v10, v10, Lqu/f;->d:Z

    .line 141
    .line 142
    sget-object v6, Lpu/a;->a:Landroid/app/Application;

    .line 143
    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    :goto_2
    invoke-virtual {v7, v6}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersion()J

    .line 156
    .line 157
    .line 158
    move-result-wide v14

    .line 159
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v6, v6, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 163
    .line 164
    if-eqz v6, :cond_7

    .line 165
    .line 166
    invoke-virtual {v6, v0, v14, v15}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    .line 167
    .line 168
    .line 169
    :cond_7
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    :goto_3
    invoke-virtual {v7, v0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v6, "KV_UPGRADE_POPUP_TIMES"

    .line 183
    .line 184
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v0, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 188
    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0, v6, v11}, Lcom/tencent/mmkv/MMKV;->s(Ljava/lang/String;I)Z

    .line 192
    .line 193
    .line 194
    :cond_9
    const-string v0, "reset_target_version"

    .line 195
    .line 196
    const/16 v5, 0x18

    .line 197
    .line 198
    const/4 v6, 0x2

    .line 199
    const/4 v7, 0x3

    .line 200
    const/4 v10, 0x0

    .line 201
    invoke-static {v6, v7, v0, v10, v5}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :catch_0
    const-string v0, "\u76ee\u6807\u7248\u672c\u9891\u63a7\u68c0\u67e5\u5f02\u5e38"

    .line 206
    .line 207
    invoke-static {v4, v3, v0, v2}, Lnu/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    sget-boolean v7, Ltu/g;->a:Z

    .line 212
    .line 213
    if-eqz v7, :cond_a

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_a
    sget-wide v14, Ltu/g;->b:J

    .line 217
    .line 218
    sub-long v14, v5, v14

    .line 219
    .line 220
    cmp-long v10, v14, v12

    .line 221
    .line 222
    if-gez v10, :cond_b

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_b
    sput-wide v5, Ltu/g;->b:J

    .line 226
    .line 227
    const/4 v5, 0x3

    .line 228
    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_c

    .line 233
    .line 234
    sput-boolean v9, Ltu/g;->a:Z

    .line 235
    .line 236
    :cond_c
    sget-boolean v7, Ltu/g;->a:Z

    .line 237
    .line 238
    :goto_4
    sget-object v5, Lqu/f;->o:Lqu/d;

    .line 239
    .line 240
    invoke-virtual {v5}, Lqu/d;->a()Lqu/f;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    iget-boolean v5, v5, Lqu/f;->d:Z

    .line 245
    .line 246
    if-nez v5, :cond_d

    .line 247
    .line 248
    if-eqz v7, :cond_e

    .line 249
    .line 250
    :cond_d
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkDialogPopInterval()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const/4 v5, 0x6

    .line 258
    if-nez v0, :cond_f

    .line 259
    .line 260
    const-string v0, "1"

    .line 261
    .line 262
    const/16 v1, 0x18

    .line 263
    .line 264
    const/4 v2, 0x2

    .line 265
    const/4 v3, 0x0

    .line 266
    invoke-static {v2, v5, v0, v3, v1}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    return v11

    .line 270
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkDialogPopTimes()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_13

    .line 275
    .line 276
    const-string v0, "filter  ->> \u5f39\u7a97\u6b21\u6570"

    .line 277
    .line 278
    invoke-static {v4, v3, v0, v2}, Lnu/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v2

    .line 282
    sget-boolean v0, Ltu/g;->a:Z

    .line 283
    .line 284
    if-eqz v0, :cond_10

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_10
    sget-wide v6, Ltu/g;->b:J

    .line 288
    .line 289
    sub-long v6, v2, v6

    .line 290
    .line 291
    cmp-long v4, v6, v12

    .line 292
    .line 293
    if-gez v4, :cond_11

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_11
    sput-wide v2, Ltu/g;->b:J

    .line 297
    .line 298
    const/4 v0, 0x3

    .line 299
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    sput-boolean v9, Ltu/g;->a:Z

    .line 306
    .line 307
    :cond_12
    sget-boolean v0, Ltu/g;->a:Z

    .line 308
    .line 309
    :goto_6
    sget-object v1, Lqu/f;->o:Lqu/d;

    .line 310
    .line 311
    invoke-virtual {v1}, Lqu/d;->a()Lqu/f;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    iget-boolean v1, v1, Lqu/f;->d:Z

    .line 316
    .line 317
    const-string v0, "2"

    .line 318
    .line 319
    const/16 v1, 0x18

    .line 320
    .line 321
    const/4 v2, 0x2

    .line 322
    const/4 v3, 0x0

    .line 323
    invoke-static {v2, v5, v0, v3, v1}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    return v11

    .line 327
    :cond_13
    return v9
.end method
