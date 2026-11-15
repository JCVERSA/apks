.class public Lcom/bytedance/sdk/openadsdk/core/Dq;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, -0x10

    .line 2
    .line 3
    if-eq p0, v0, :cond_9

    .line 4
    .line 5
    const/16 v0, -0xf

    .line 6
    .line 7
    if-eq p0, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x75

    .line 10
    .line 11
    if-eq p0, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x76

    .line 14
    .line 15
    if-eq p0, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x7f

    .line 18
    .line 19
    if-eq p0, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x80

    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x89

    .line 26
    .line 27
    if-eq p0, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x8a

    .line 30
    .line 31
    if-eq p0, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0xc9

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0xca

    .line 38
    .line 39
    if-eq p0, v0, :cond_0

    .line 40
    .line 41
    sparse-switch p0, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    packed-switch p0, :pswitch_data_1

    .line 48
    .line 49
    .line 50
    packed-switch p0, :pswitch_data_2

    .line 51
    .line 52
    .line 53
    packed-switch p0, :pswitch_data_3

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v0, "tt_error_unknow"

    .line 61
    .line 62
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return-object p0

    .line 67
    :pswitch_0
    const-string p0, "The material meta data was incorrect."

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string v0, "tt_error_empty_content"

    .line 75
    .line 76
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    return-object p0

    .line 81
    :pswitch_2
    const-string p0, "Not allowed PAConsent value, please set 0 or 1"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_3
    const-string p0, "resource error"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_4
    const-string p0, "load time out"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_5
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string v0, "tt_template_load_fail"

    .line 95
    .line 96
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :pswitch_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string v0, "tt_reder_ad_load_timeout"

    .line 106
    .line 107
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string v0, "tt_render_fail_timeout"

    .line 117
    .line 118
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string v0, "tt_render_fail_unknown"

    .line 128
    .line 129
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :pswitch_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    const-string v0, "tt_render_fail_template_parse_error"

    .line 139
    .line 140
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :pswitch_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string v0, "tt_render_fail_meta_invalid"

    .line 150
    .line 151
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string v0, "tt_render_diff_template_invalid"

    .line 161
    .line 162
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :pswitch_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string v0, "tt_render_main_template_invalid"

    .line 172
    .line 173
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    const-string v0, "tt_render_render_parse_error"

    .line 183
    .line 184
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :pswitch_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string v0, "tt_parse_fail"

    .line 194
    .line 195
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :pswitch_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    const-string v0, "tt_net_error"

    .line 205
    .line 206
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :pswitch_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const-string v0, "tt_no_ad_parse"

    .line 216
    .line 217
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :pswitch_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    const-string v0, "tt_ad_data_error"

    .line 227
    .line 228
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const-string v0, "tt_banner_ad_load_image_error"

    .line 238
    .line 239
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :pswitch_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    const-string v0, "tt_insert_ad_load_image_error"

    .line 249
    .line 250
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :pswitch_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    const-string v0, "tt_splash_ad_load_image_error"

    .line 260
    .line 261
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    :pswitch_15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    const-string v0, "tt_frequent_call_erroe"

    .line 271
    .line 272
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :pswitch_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    const-string v0, "tt_request_body_error"

    .line 282
    .line 283
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    :pswitch_17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    const-string v0, "tt_splash_cache_parse_error"

    .line 293
    .line 294
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    :pswitch_18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    const-string v0, "tt_splash_cache_expired_error"

    .line 304
    .line 305
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    return-object p0

    .line 310
    :pswitch_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    const-string v0, "tt_splash_not_have_cache_error"

    .line 315
    .line 316
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :sswitch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    const-string v0, "tt_error_verify_reward"

    .line 326
    .line 327
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    return-object p0

    .line 332
    :sswitch_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    const-string v0, "tt_error_code_click_event_error"

    .line 337
    .line 338
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :sswitch_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    const-string v0, "tt_ror_code_show_event_error"

    .line 348
    .line 349
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    return-object p0

    .line 354
    :sswitch_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    const-string v0, "tt_sys_error"

    .line 359
    .line 360
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    return-object p0

    .line 365
    :sswitch_4
    const-string p0, "Appid is not registered on pangle media platform"

    .line 366
    .line 367
    return-object p0

    .line 368
    :sswitch_5
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    const-string v0, "tt_error_interstitial_version"

    .line 373
    .line 374
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    return-object p0

    .line 379
    :sswitch_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    const-string v0, "tt_error_bidding_type"

    .line 384
    .line 385
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    return-object p0

    .line 390
    :sswitch_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    const-string v0, "tt_error_update_version"

    .line 395
    .line 396
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    return-object p0

    .line 401
    :sswitch_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    const-string v0, "tt_error_device_ip"

    .line 406
    .line 407
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    return-object p0

    .line 412
    :sswitch_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    const-string v0, "tt_error_union_sdk_too_old"

    .line 417
    .line 418
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    return-object p0

    .line 423
    :sswitch_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    const-string v0, "tt_error_union_os_error"

    .line 428
    .line 429
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    return-object p0

    .line 434
    :sswitch_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    const-string v0, "tt_error_origin_ad_error"

    .line 439
    .line 440
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    return-object p0

    .line 445
    :sswitch_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    const-string v0, "tt_error_apk_sign_check_error"

    .line 450
    .line 451
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    return-object p0

    .line 456
    :sswitch_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    const-string v0, "tt_error_new_register_limit"

    .line 461
    .line 462
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    return-object p0

    .line 467
    :sswitch_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    const-string v0, "tt_error_adtype_differ"

    .line 472
    .line 473
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    return-object p0

    .line 478
    :sswitch_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    const-string v0, "tt_error_package_name"

    .line 483
    .line 484
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    return-object p0

    .line 489
    :sswitch_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    const-string v0, "tt_error_slot_id_app_id_differ"

    .line 494
    .line 495
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    return-object p0

    .line 500
    :sswitch_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    const-string v0, "tt_error_request_invalid"

    .line 505
    .line 506
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    return-object p0

    .line 511
    :sswitch_12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    const-string v0, "tt_error_redirect"

    .line 516
    .line 517
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    return-object p0

    .line 522
    :sswitch_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    const-string v0, "tt_error_splash_ad_type"

    .line 527
    .line 528
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p0

    .line 532
    return-object p0

    .line 533
    :sswitch_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    const-string v0, "tt_error_access_method_pass"

    .line 538
    .line 539
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p0

    .line 543
    return-object p0

    .line 544
    :sswitch_15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 545
    .line 546
    .line 547
    move-result-object p0

    .line 548
    const-string v0, "tt_error_ad_type"

    .line 549
    .line 550
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    return-object p0

    .line 555
    :sswitch_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    const-string v0, "tt_error_media_type"

    .line 560
    .line 561
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object p0

    .line 565
    return-object p0

    .line 566
    :sswitch_17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    const-string v0, "tt_error_media_id"

    .line 571
    .line 572
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    return-object p0

    .line 577
    :sswitch_18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    const-string v0, "tt_error_image_size"

    .line 582
    .line 583
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p0

    .line 587
    return-object p0

    .line 588
    :sswitch_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    const-string v0, "tt_error_code_adcount_error"

    .line 593
    .line 594
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    return-object p0

    .line 599
    :sswitch_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    const-string v0, "tt_adslot_id_error"

    .line 604
    .line 605
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    return-object p0

    .line 610
    :sswitch_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 611
    .line 612
    .line 613
    move-result-object p0

    .line 614
    const-string v0, "tt_adslot_size_empty"

    .line 615
    .line 616
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object p0

    .line 620
    return-object p0

    .line 621
    :sswitch_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    const-string v0, "tt_adslot_empty"

    .line 626
    .line 627
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p0

    .line 631
    return-object p0

    .line 632
    :sswitch_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    const-string v0, "tt_wap_empty"

    .line 637
    .line 638
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object p0

    .line 642
    return-object p0

    .line 643
    :sswitch_1e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 644
    .line 645
    .line 646
    move-result-object p0

    .line 647
    const-string v0, "tt_app_empty"

    .line 648
    .line 649
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p0

    .line 653
    return-object p0

    .line 654
    :sswitch_1f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    const-string v0, "tt_request_pb_error"

    .line 659
    .line 660
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    return-object p0

    .line 665
    :sswitch_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 666
    .line 667
    .line 668
    move-result-object p0

    .line 669
    const-string v0, "tt_content_type"

    .line 670
    .line 671
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object p0

    .line 675
    return-object p0

    .line 676
    :sswitch_21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 677
    .line 678
    .line 679
    move-result-object p0

    .line 680
    const-string v0, "tt_no_ad"

    .line 681
    .line 682
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 686
    return-object p0

    .line 687
    :sswitch_22
    const-string p0, "ugen parse error"

    .line 688
    .line 689
    return-object p0

    .line 690
    :sswitch_23
    const-string p0, "dynamic2 parse error"

    .line 691
    .line 692
    return-object p0

    .line 693
    :sswitch_24
    const-string p0, "dynamic1 parse error"

    .line 694
    .line 695
    return-object p0

    .line 696
    :sswitch_25
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 697
    .line 698
    .line 699
    move-result-object p0

    .line 700
    const-string v0, "tt_init_setting_config_not_complete"

    .line 701
    .line 702
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object p0

    .line 706
    return-object p0

    .line 707
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 708
    .line 709
    .line 710
    move-result-object p0

    .line 711
    const-string v0, "tt_load_creative_icon_error"

    .line 712
    .line 713
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object p0

    .line 717
    return-object p0

    .line 718
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 719
    .line 720
    .line 721
    move-result-object p0

    .line 722
    const-string v0, "tt_load_creative_icon_response_error"

    .line 723
    .line 724
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 728
    return-object p0

    .line 729
    :cond_2
    const-string p0, "ugen render error"

    .line 730
    .line 731
    return-object p0

    .line 732
    :cond_3
    const-string p0, "ugen render time_out"

    .line 733
    .line 734
    return-object p0

    .line 735
    :cond_4
    const-string p0, "dynamic2 render error"

    .line 736
    .line 737
    return-object p0

    .line 738
    :cond_5
    const-string p0, "dynamic2 render time_out"

    .line 739
    .line 740
    return-object p0

    .line 741
    :cond_6
    const-string p0, "dynamic1 render error"

    .line 742
    .line 743
    return-object p0

    .line 744
    :cond_7
    const-string p0, "dynamic1 render time_out"

    .line 745
    .line 746
    return-object p0

    .line 747
    :cond_8
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 748
    .line 749
    .line 750
    move-result-object p0

    .line 751
    const-string v0, "tt_lack_android_manifest_configuration"

    .line 752
    .line 753
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object p0

    .line 757
    return-object p0

    .line 758
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    const-string v0, "tt_error_ad_able_false_msg"

    .line 763
    .line 764
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 768
    return-object p0

    .line 769
    :catchall_0
    const-string p0, ""

    .line 770
    .line 771
    return-object p0

    .line 772
    nop

    .line 773
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_25
        0x71 -> :sswitch_24
        0x7b -> :sswitch_23
        0x85 -> :sswitch_22
        0x4e21 -> :sswitch_21
        0x9c40 -> :sswitch_20
        0x9c41 -> :sswitch_1f
        0x9c42 -> :sswitch_1e
        0x9c43 -> :sswitch_1d
        0x9c44 -> :sswitch_1c
        0x9c45 -> :sswitch_1b
        0x9c46 -> :sswitch_1a
        0x9c47 -> :sswitch_19
        0x9c48 -> :sswitch_18
        0x9c49 -> :sswitch_17
        0x9c4a -> :sswitch_16
        0x9c4b -> :sswitch_15
        0x9c4c -> :sswitch_14
        0x9c4d -> :sswitch_13
        0x9c4e -> :sswitch_12
        0x9c4f -> :sswitch_11
        0x9c50 -> :sswitch_10
        0x9c51 -> :sswitch_14
        0x9c52 -> :sswitch_f
        0x9c53 -> :sswitch_e
        0x9c54 -> :sswitch_d
        0x9c55 -> :sswitch_c
        0x9c56 -> :sswitch_b
        0x9c57 -> :sswitch_a
        0x9c58 -> :sswitch_9
        0x9c5a -> :sswitch_8
        0x9c5c -> :sswitch_7
        0x9c62 -> :sswitch_6
        0x9c6a -> :sswitch_5
        0x9c7c -> :sswitch_4
        0xc351 -> :sswitch_3
        0xea61 -> :sswitch_2
        0xea62 -> :sswitch_1
        0xea67 -> :sswitch_0
    .end sparse-switch

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    :pswitch_data_2
    .packed-switch 0x2712
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    :pswitch_data_3
    .packed-switch 0x9c74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
