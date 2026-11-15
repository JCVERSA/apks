.class public final Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;
.super Lcom/cloud/tmc/miniapp/ui/WebViewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;
    }
.end annotation


# static fields
.field public static final synthetic OooO:I


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;

.field public OooO0Oo:Ljava/lang/String;

.field public OooO0o:Ljava/lang/String;

.field public OooO0o0:Ljava/lang/String;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "WebviewPersonalizationActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public initData()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ad_personalization_url"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0O0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "adsDTO"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0OO:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "trigger_id"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0o0:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "appIdExternal"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0o:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "codeSeatIdExternal"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oO:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "appId"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0Oo:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0OO:Ljava/lang/String;

    .line 84
    .line 85
    const-class v2, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 94
    .line 95
    if-nez v1, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0o:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->setAppIdExternal(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 104
    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oO:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->setCodeSeatIdExternal(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :cond_3
    move-object v2, v0

    .line 130
    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getIndustryId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move-object v3, v0

    .line 140
    :goto_3
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 141
    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdvertiserId()Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    move-object v4, v0

    .line 150
    :goto_4
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 151
    .line 152
    if-eqz v5, :cond_6

    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getApp_id()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    goto :goto_5

    .line 159
    :cond_6
    move-object v5, v0

    .line 160
    :goto_5
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 161
    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatId()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    goto :goto_6

    .line 169
    :cond_7
    move-object v6, v0

    .line 170
    :goto_6
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0o0:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 173
    .line 174
    if-eqz v8, :cond_8

    .line 175
    .line 176
    invoke-virtual {v8}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getRequestId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    goto :goto_7

    .line 181
    :cond_8
    move-object v8, v0

    .line 182
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v10, "gaid="

    .line 188
    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, "&oneid=&ad_creative_id="

    .line 196
    .line 197
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, "&industry_id="

    .line 204
    .line 205
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, "&advertiser_id="

    .line 212
    .line 213
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, "&app_id="

    .line 220
    .line 221
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, "&code_seat_id="

    .line 228
    .line 229
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v1, "&trigger_id="

    .line 236
    .line 237
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, "&request_id="

    .line 244
    .line 245
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0O0:Ljava/lang/String;

    .line 256
    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v2, "?"

    .line 266
    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0O0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :goto_8
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO00o:Ljava/lang/String;

    .line 281
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v4, "parse LandingPage info fail: "

    .line 288
    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :goto_9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getWb()Lcom/cloud/tmc/kernel/render/IWebView;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    instance-of v2, v1, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 307
    .line 308
    if-eqz v2, :cond_9

    .line 309
    .line 310
    move-object v0, v1

    .line 311
    check-cast v0, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 312
    .line 313
    :cond_9
    if-eqz v0, :cond_a

    .line 314
    .line 315
    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    const/4 v3, 0x1

    .line 338
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 367
    .line 368
    .line 369
    new-instance v1, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;

    .line 370
    .line 371
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0o0:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 374
    .line 375
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0Oo:Ljava/lang/String;

    .line 376
    .line 377
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string v2, "sspWebView"

    .line 381
    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0O0:Ljava/lang/String;

    .line 390
    .line 391
    const-string v2, "pageUri"

    .line 392
    .line 393
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    .line 395
    .line 396
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->initData()V

    .line 397
    .line 398
    .line 399
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO0Oo:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 33
    .line 34
    const-string v2, "landingPage"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "finish"

    .line 40
    .line 41
    const-string v3, "true"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    const-string v2, "adLandingPage"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedTitle(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
