.class public final Lcom/transsion/baselib/report/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqi/i;


# instance fields
.field private a:Ljava/util/HashSet;

.field private final b:Ljava/lang/String;

.field private c:Lqx/a;

.field private d:Lim/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/baselib/report/i;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    const-string v1, "ext"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/transsion/baselib/report/i;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "app_start"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->a:Ljava/util/HashSet;

    .line 21
    .line 22
    const-string v1, "app_stop"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->a:Ljava/util/HashSet;

    .line 28
    .line 29
    const-string v1, "download_click"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bundle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "play_mode"

    .line 12
    .line 13
    sget-object v1, Lij/t;->a:Lij/t;

    .line 14
    .line 15
    invoke-virtual {v1}, Lij/t;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "content_mode"

    .line 27
    .line 28
    sget-object v1, Lij/g;->a:Lij/g;

    .line 29
    .line 30
    invoke-virtual {v1}, Lij/g;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "family_mode"

    .line 42
    .line 43
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "k_is_family_mode"

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "kids_mode"

    .line 64
    .line 65
    sget-object v1, Lij/o;->a:Lij/o;

    .line 66
    .line 67
    invoke-virtual {v1}, Lij/o;->i()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "kid_id"

    .line 79
    .line 80
    invoke-virtual {v1}, Lij/o;->d()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    const-string v1, ""

    .line 87
    .line 88
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "cpu_64"

    .line 92
    .line 93
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 94
    .line 95
    const-string v2, "SUPPORTED_64_BIT_ABIS"

    .line 96
    .line 97
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    array-length v1, v1

    .line 101
    const/4 v2, 0x1

    .line 102
    if-nez v1, :cond_1

    .line 103
    .line 104
    move v1, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    move v1, v3

    .line 107
    :goto_0
    xor-int/2addr v1, v2

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "s_a_m"

    .line 116
    .line 117
    sget-object v1, Lij/u;->a:Lij/u;

    .line 118
    .line 119
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const-string v5, "getApp(...)"

    .line 124
    .line 125
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v4}, Lij/u;->a(Landroid/content/Context;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Ljg/b;->a:Ljg/b$a;

    .line 140
    .line 141
    invoke-virtual {v0, p2}, Ljg/b$a;->a(Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->c:Lqx/a;

    .line 145
    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->c:Lqx/a;

    .line 150
    .line 151
    if-nez v0, :cond_2

    .line 152
    .line 153
    const-class v0, Lqx/a;

    .line 154
    .line 155
    new-array v1, v3, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v0, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lqx/a;

    .line 162
    .line 163
    iput-object v0, p0, Lcom/transsion/baselib/report/i;->c:Lqx/a;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    goto :goto_2

    .line 168
    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    monitor-exit p0

    .line 171
    goto :goto_3

    .line 172
    :goto_2
    monitor-exit p0

    .line 173
    throw p1

    .line 174
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->d:Lim/b;

    .line 175
    .line 176
    if-nez v0, :cond_5

    .line 177
    .line 178
    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->d:Lim/b;

    .line 180
    .line 181
    if-nez v0, :cond_4

    .line 182
    .line 183
    const-class v0, Lim/b;

    .line 184
    .line 185
    new-array v1, v3, [Ljava/lang/Object;

    .line 186
    .line 187
    invoke-static {v0, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lim/b;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/transsion/baselib/report/i;->d:Lim/b;

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :catchall_1
    move-exception p1

    .line 197
    goto :goto_5

    .line 198
    :cond_4
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    .line 200
    monitor-exit p0

    .line 201
    goto :goto_6

    .line 202
    :goto_5
    monitor-exit p0

    .line 203
    throw p1

    .line 204
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->c:Lqx/a;

    .line 205
    .line 206
    if-eqz v0, :cond_6

    .line 207
    .line 208
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    const-string v1, "myuserid"

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_6
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->d:Lim/b;

    .line 228
    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    invoke-interface {v0}, Lim/b;->l()Lcom/transsion/memberapi/MemberDetail;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    const-string v1, "is_member"

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz v4, :cond_7

    .line 244
    .line 245
    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    goto :goto_7

    .line 250
    :cond_7
    move v4, v3

    .line 251
    :goto_7
    invoke-virtual {p2, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    const-string v1, "trial_days"

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    if-eqz v4, :cond_8

    .line 261
    .line 262
    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-eqz v4, :cond_8

    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {p2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v1, "expiry_date"

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    goto :goto_8

    .line 292
    :cond_9
    const/4 v0, 0x0

    .line 293
    :goto_8
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_a
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->a:Ljava/util/HashSet;

    .line 297
    .line 298
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_b

    .line 303
    .line 304
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->b:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string v1, "net_state"

    .line 311
    .line 312
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 317
    .line 318
    const-string v4, "report"

    .line 319
    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v6, "event "

    .line 326
    .line 327
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string p1, " netState:"

    .line 334
    .line 335
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string p1, " "

    .line 342
    .line 343
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {v3, v4, p1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    .line 355
    .line 356
    :cond_b
    return-object p2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "map"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lej/b;->a:Lej/b$a;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lej/b$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getAccount()Lkotlin/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/i;->c:Lqx/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Lkotlin/Pair;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-short v2, v2

    .line 21
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-object v1
.end method
