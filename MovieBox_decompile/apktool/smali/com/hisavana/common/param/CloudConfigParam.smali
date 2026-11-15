.class public Lcom/hisavana/common/param/CloudConfigParam;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudConfigParam"

.field private static requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getPostBody(Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hisavana/common/param/CloudConfigPostBody;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 11
    .line 12
    iput-object p0, v0, Lcom/hisavana/common/param/CloudConfigPostBody;->applicationId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iput-object p0, v0, Lcom/hisavana/common/param/CloudConfigPostBody;->testRequest:Ljava/lang/Boolean;

    .line 19
    .line 20
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 21
    .line 22
    const-string p1, "aha"

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput-boolean p1, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->codeSeatFilterEnable:Z

    .line 29
    .line 30
    sget-object p0, Lcom/hisavana/common/bean/AppStartInfo;->extInfo:Ljava/util/Map;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    new-instance p1, Lcom/hisavana/common/param/Ext;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/hisavana/common/param/Ext;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lcom/hisavana/common/param/Ext;->setTg(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->ext:Lcom/hisavana/common/param/Ext;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_0
    :goto_0
    new-instance p0, Lcom/hisavana/common/param/ApplicationDTO;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/hisavana/common/param/ApplicationDTO;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setPackageName(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/b;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setInstallTime(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lk7/c;->q()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setVersion(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "3.5.9.1"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setSdkVersion(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/r;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setUserAgent(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lcom/hisavana/common/bean/AppStartInfo;->channel:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setChannel(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-boolean p1, Lcom/hisavana/common/bean/AppStartInfo;->isFirstStartToday:Z

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setFirstStart(Z)V

    .line 102
    .line 103
    .line 104
    sget-object p1, Lcom/hisavana/common/bean/AppStartInfo;->activeTime:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setActiveTime(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 110
    .line 111
    iput-object p0, p1, Lcom/hisavana/common/param/CloudConfigPostBody;->application:Lcom/hisavana/common/param/ApplicationDTO;

    .line 112
    .line 113
    new-instance p0, Lcom/hisavana/common/param/DeviceDTO;

    .line 114
    .line 115
    invoke-direct {p0}, Lcom/hisavana/common/param/DeviceDTO;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lk7/c;->o()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setType(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lk7/c;->a()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setBrand(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lk7/c;->f()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setModel(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lk7/c;->c()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setMaker(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setOsType(I)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lk7/c;->h()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setOsVersion(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setLanguage(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->a(Landroid/content/Context;)Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setNetworkConnectionType(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->b()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setOperatorType(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->h()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setIpAddress(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setGaid(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lk7/c;->d()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setImsi(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lk7/c;->k()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setScreenWidth(I)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lk7/c;->j()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setScreenHeight(I)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lk7/c;->i()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setScreenDensity(I)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->j()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setOneid(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->n()J

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setTotalRam(Ljava/lang/Long;)V

    .line 252
    .line 253
    .line 254
    sget-object p2, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 255
    .line 256
    iput-object p0, p2, Lcom/hisavana/common/param/CloudConfigPostBody;->device:Lcom/hisavana/common/param/DeviceDTO;

    .line 257
    .line 258
    new-instance p0, Lcom/hisavana/common/param/UserDTO;

    .line 259
    .line 260
    invoke-direct {p0}, Lcom/hisavana/common/param/UserDTO;-><init>()V

    .line 261
    .line 262
    .line 263
    sget-object p2, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 264
    .line 265
    iput-object p0, p2, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_1
    const/4 p1, 0x0

    .line 269
    :goto_1
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 270
    .line 271
    iget-boolean p2, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->codeSeatFilterEnable:Z

    .line 272
    .line 273
    if-eqz p2, :cond_2

    .line 274
    .line 275
    iput-object p3, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->codeSeatFilterIds:Ljava/util/List;

    .line 276
    .line 277
    :cond_2
    if-nez p1, :cond_3

    .line 278
    .line 279
    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->device:Lcom/hisavana/common/param/DeviceDTO;

    .line 280
    .line 281
    if-eqz p0, :cond_3

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/hisavana/common/param/DeviceDTO;->getGaid()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    if-eqz p0, :cond_3

    .line 292
    .line 293
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 294
    .line 295
    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->device:Lcom/hisavana/common/param/DeviceDTO;

    .line 296
    .line 297
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setGaid(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_3
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 305
    .line 306
    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    .line 307
    .line 308
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->g()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/UserDTO;->setBaseStation(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 316
    .line 317
    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    .line 318
    .line 319
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->d()D

    .line 320
    .line 321
    .line 322
    move-result-wide p1

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/param/UserDTO;->setLatitude(D)V

    .line 324
    .line 325
    .line 326
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 327
    .line 328
    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    .line 329
    .line 330
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->f()D

    .line 331
    .line 332
    .line 333
    move-result-wide p1

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/param/UserDTO;->setLongitude(D)V

    .line 335
    .line 336
    .line 337
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 338
    .line 339
    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    .line 340
    .line 341
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->b()J

    .line 342
    .line 343
    .line 344
    move-result-wide p1

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/param/UserDTO;->setCoordTime(J)V

    .line 346
    .line 347
    .line 348
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    .line 349
    .line 350
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    return-object p0

    .line 355
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    const-string p2, "CloudConfigParam"

    .line 364
    .line 365
    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string p0, ""

    .line 369
    .line 370
    return-object p0
.end method
