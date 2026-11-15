.class public final Lcom/cloud/tmc/integration/MiniAppConfigStore;
.super Lcom/cloud/config/AbsConfigStore;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/MiniAppConfigStore;",
        "Lcom/cloud/config/AbsConfigStore;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "CONFIG_QUERY_KEY",
        "",
        "getCONFIG_QUERY_KEY",
        "()Ljava/lang/String;",
        "CONFIG_QUERY_KEY$delegate",
        "Lkotlin/Lazy;",
        "getConfigUrl",
        "getContentArray",
        "",
        "getPackageName",
        "registerCloudConfig",
        "setDebugMode",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final CONFIG_QUERY_KEY$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/config/AbsConfigStore;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/cloud/tmc/integration/MiniAppConfigStore$CONFIG_QUERY_KEY$2;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/MiniAppConfigStore$CONFIG_QUERY_KEY$2;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/tmc/integration/MiniAppConfigStore;->CONFIG_QUERY_KEY$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getMultiMMKVInstance()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/cloud/config/AbsConfigStore;->setMMKV(Lcom/tencent/mmkv/MMKV;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final getCONFIG_QUERY_KEY()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/MiniAppConfigStore;->CONFIG_QUERY_KEY$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_CONFIG_QUERY()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected getContentArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/MiniAppConfigStore;->registerCloudConfig()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getKEY_OFFLINE_CONFIG()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/MiniAppConfigStore;->getCONFIG_QUERY_KEY()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final registerCloudConfig()Ljava/util/List;
    .locals 200
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v198, "autoAgreePrivacy"

    .line 2
    .line 3
    const-string v199, "privacyEnableHosts"

    .line 4
    .line 5
    const-string v0, "miniZeroNewsRequestNum"

    .line 6
    .line 7
    const-string v1, "enableOpenBrowserConfig"

    .line 8
    .line 9
    const-string v2, "hybridUrlBlackList"

    .line 10
    .line 11
    const-string v3, "preManagerConfigUrl"

    .line 12
    .line 13
    const-string v4, "miniWidgetForbidLoadStatus"

    .line 14
    .line 15
    const-string v5, "closeMiniAppSDK"

    .line 16
    .line 17
    const-string v6, "whiteScreen"

    .line 18
    .line 19
    const-string v7, "jsapiPermission"

    .line 20
    .line 21
    const-string v8, "appinfoRefreshInterval"

    .line 22
    .line 23
    const-string v9, "fwRefreshInterval"

    .line 24
    .line 25
    const-string v10, "updateConfigByLaunch"

    .line 26
    .line 27
    const-string v11, "packageSize"

    .line 28
    .line 29
    const-string v12, "updateCompareVersion"

    .line 30
    .line 31
    const-string v13, "layerHardware"

    .line 32
    .line 33
    const-string v14, "shortShareUrl"

    .line 34
    .line 35
    const-string v15, "minicardTargetAppUrl"

    .line 36
    .line 37
    const-string v16, "minicardEnable"

    .line 38
    .line 39
    const-string v17, "minicardLimitNum"

    .line 40
    .line 41
    const-string v18, "mutipleTaskV2"

    .line 42
    .line 43
    const-string v19, "shellSchemeFilter"

    .line 44
    .line 45
    const-string v20, "byteBridge"

    .line 46
    .line 47
    const-string v21, "fps"

    .line 48
    .line 49
    const-string v22, "miniappStorageWhiteList"

    .line 50
    .line 51
    const-string v23, "miniappStorageEnable"

    .line 52
    .line 53
    const-string v24, "enableAnimMemorySize"

    .line 54
    .line 55
    const-string v25, "logEReport"

    .line 56
    .line 57
    const-string v26, "scopeConfig"

    .line 58
    .line 59
    const-string v27, "scopeRequestDiff"

    .line 60
    .line 61
    const-string v28, "miniStorageWhiteMaxSize"

    .line 62
    .line 63
    const-string v29, "miniStorageDefaultMaxSize"

    .line 64
    .line 65
    const-string v30, "miniStorageAllMaxSize"

    .line 66
    .line 67
    const-string v31, "miniLoadProgressConfig"

    .line 68
    .line 69
    const-string v32, "miniLogoAnimateConfig"

    .line 70
    .line 71
    const-string v33, "networkImproveNumV2"

    .line 72
    .line 73
    const-string v34, "enableAdsense"

    .line 74
    .line 75
    const-string v35, "scanCode"

    .line 76
    .line 77
    const-string v36, "appInfoCDNConfig"

    .line 78
    .line 79
    const-string v37, "miniFeedbackId"

    .line 80
    .line 81
    const-string v38, "miniAddHomeBubbleForbidId"

    .line 82
    .line 83
    const-string v39, "miniPopwindowintervalTime"

    .line 84
    .line 85
    const-string v40, "miniShowAddHomeBubbleDelay"

    .line 86
    .line 87
    const-string v41, "miniCameraEnable"

    .line 88
    .line 89
    const-string v42, "miniPopWindowTime"

    .line 90
    .line 91
    const-string v43, "privacyAgreementDialogWhiteListV4"

    .line 92
    .line 93
    const-string v44, "miniPermissionIgnoreId"

    .line 94
    .line 95
    const-string v45, "requestConfig"

    .line 96
    .line 97
    const-string v46, "webviewCacheStrategy"

    .line 98
    .line 99
    const-string v47, "miniEnableForceUpdateModelList"

    .line 100
    .line 101
    const-string v48, "miniAddHomeTime"

    .line 102
    .line 103
    const-string v49, "miniAddHomeNum"

    .line 104
    .line 105
    const-string v50, "resourceResponseEncoding"

    .line 106
    .line 107
    const-string v51, "athenaReportPaths"

    .line 108
    .line 109
    const-string v52, "miniBackInterceptorTime"

    .line 110
    .line 111
    const-string v53, "miniBackInterceptorShowTime"

    .line 112
    .line 113
    const-string v54, "miniBackInterceptorNum"

    .line 114
    .line 115
    const-string v55, "miniBackInterceptorEnable"

    .line 116
    .line 117
    const-string v56, "miniShowMsgBubbleDelay"

    .line 118
    .line 119
    const-string v57, "miniMsgBubbleEnable"

    .line 120
    .line 121
    const-string v58, "miniPopwindowMsgBubbleForbidId"

    .line 122
    .line 123
    const-string v59, "msgRefreshInterval"

    .line 124
    .line 125
    const-string v60, "msgTotalEnable"

    .line 126
    .line 127
    const-string v61, "msgBubbleEnable"

    .line 128
    .line 129
    const-string v62, "msgBottomItemEnable"

    .line 130
    .line 131
    const-string v63, "miniOfflineDownloadDisableAntiShake"

    .line 132
    .line 133
    const-string v64, "miniAddHomeCustomWhitelist"

    .line 134
    .line 135
    const-string v65, "miniSharpNewsInterval"

    .line 136
    .line 137
    const-string v66, "enableSharpNewsPreRequest"

    .line 138
    .line 139
    const-string v67, "enableSharpNewsPreFullSearch"

    .line 140
    .line 141
    const-string v68, "enableSharpNewsPreZero"

    .line 142
    .line 143
    const-string v69, "enableSharpNewsVideo"

    .line 144
    .line 145
    const-string v70, "innerWarmup"

    .line 146
    .line 147
    const-string v71, "innerWarmupSetting"

    .line 148
    .line 149
    const-string v72, "innerWebviewWarmupV3"

    .line 150
    .line 151
    const-string v73, "miniStartRecordForbidId"

    .line 152
    .line 153
    const-string v74, "enablePreUnZipV3"

    .line 154
    .line 155
    const-string v75, "preUnZipIdList"

    .line 156
    .line 157
    const-string v76, "enablePreUnZipRetry"

    .line 158
    .line 159
    const-string v77, "miniEnableQuickModeLaunch"

    .line 160
    .line 161
    const-string v78, "enableBackgroundUnzipV3"

    .line 162
    .line 163
    const-string v79, "enableCheckDownloadZip"

    .line 164
    .line 165
    const-string v80, "enableWebViewMask"

    .line 166
    .line 167
    const-string v81, "miniShowAddHomeBubbleInterval"

    .line 168
    .line 169
    const-string v82, "miniShowMsgBubbleInterval"

    .line 170
    .line 171
    const-string v83, "miniEnableNewMiniappInit"

    .line 172
    .line 173
    const-string v84, "enableZeroNewsPreRequest"

    .line 174
    .line 175
    const-string v85, "maxSharpNewsZeroScreenPreRequest"

    .line 176
    .line 177
    const-string v86, "maxSharpNewsZeroTopicPreRequest"

    .line 178
    .line 179
    const-string v87, "enableSharpNewsPreZeroNews"

    .line 180
    .line 181
    const-string v88, "enableZeroNewsTopicPreRequest"

    .line 182
    .line 183
    const-string v89, "enableZeroScreenNewsSync"

    .line 184
    .line 185
    const-string v90, "enableZeroScreenTopicSync"

    .line 186
    .line 187
    const-string v91, "zeroNewsPreSize"

    .line 188
    .line 189
    const-string v92, "zeroTopicPreSize"

    .line 190
    .line 191
    const-string v93, "miniEnableClearPreStorage"

    .line 192
    .line 193
    const-string v94, "miniClearPreDiff"

    .line 194
    .line 195
    const-string v95, "miniTopicRequestNum"

    .line 196
    .line 197
    const-string v96, "miniFullSearchRequestNum"

    .line 198
    .line 199
    const-string v97, "enableShellDestory"

    .line 200
    .line 201
    const-string v98, "enableSystemDestory"

    .line 202
    .line 203
    const-string v99, "appInfoConfig"

    .line 204
    .line 205
    const-string v100, "enableH5DomMonitor"

    .line 206
    .line 207
    const-string v101, "enableShellDomMonitor"

    .line 208
    .line 209
    const-string v102, "enableCheckAddHomeButtom"

    .line 210
    .line 211
    const-string v103, "enableCheckAsyncInit"

    .line 212
    .line 213
    const-string v104, "warmUpEntranceConfig"

    .line 214
    .line 215
    const-string v105, "getGaid"

    .line 216
    .line 217
    const-string v106, "miniPreHtmlRequestNum"

    .line 218
    .line 219
    const-string v107, "maxminiPreRequest"

    .line 220
    .line 221
    const-string v108, "enableShellPreRequest"

    .line 222
    .line 223
    const-string v109, "enablePreConfig"

    .line 224
    .line 225
    const-string v110, "enablePreHtmlPreConfig"

    .line 226
    .line 227
    const-string v111, "enableOfflinePackageConfig"

    .line 228
    .line 229
    const-string v112, "enableAppinfoPreConfig"

    .line 230
    .line 231
    const-string v113, "forceUpdatePreConfig"

    .line 232
    .line 233
    const-string v114, "updatePreConfigInterval"

    .line 234
    .line 235
    const-string v115, "enablePreInitV2"

    .line 236
    .line 237
    const-string v116, "jumpStoreDeeplink"

    .line 238
    .line 239
    const-string v117, "preHtmlExpiredTime"

    .line 240
    .line 241
    const-string v118, "enablePreManagerCongig"

    .line 242
    .line 243
    const-string v119, "enableMoveToBack"

    .line 244
    .line 245
    const-string v120, "enableFixMiniHotOpen"

    .line 246
    .line 247
    const-string v121, "enableFixHotStartUrl"

    .line 248
    .line 249
    const-string v122, "corsList"

    .line 250
    .line 251
    const-string v123, "enableAppinfoCdn"

    .line 252
    .line 253
    const-string v124, "enableOpenBrowserConfig"

    .line 254
    .line 255
    const-string v125, "enableMiniWidget"

    .line 256
    .line 257
    const-string v126, "corsList"

    .line 258
    .line 259
    const-string v127, "athenaInitDelay"

    .line 260
    .line 261
    const-string v128, "athenaCacheSize"

    .line 262
    .line 263
    const-string v129, "nativeWebviewDownloadConfig"

    .line 264
    .line 265
    const-string v130, "miniAppFilePathValid"

    .line 266
    .line 267
    const-string v131, "maxNativeWebviewNum"

    .line 268
    .line 269
    const-string v132, "miniGoHomeAllowId"

    .line 270
    .line 271
    const-string v133, "miniShellJumpUrlWhiteList"

    .line 272
    .line 273
    const-string v134, "clearOfflineDownloadCache"

    .line 274
    .line 275
    const-string v135, "enableAsyncAddHomeReceiver"

    .line 276
    .line 277
    const-string v136, "hideLoadingNativeTime"

    .line 278
    .line 279
    const-string v137, "hideLoadingH5Time"

    .line 280
    .line 281
    const-string v138, "injectJSConfigV3"

    .line 282
    .line 283
    const-string v139, "enablePreHybridPreConfig"

    .line 284
    .line 285
    const-string v140, "showAddHomeCustomDialog"

    .line 286
    .line 287
    const-string v141, "enableAddHomeUseAssets"

    .line 288
    .line 289
    const-string v142, "hideLoadingNativeTime"

    .line 290
    .line 291
    const-string v143, "hideLoadingH5Time"

    .line 292
    .line 293
    const-string v144, "downgradeScanFile"

    .line 294
    .line 295
    const-string v145, "enableCheckShareButtom"

    .line 296
    .line 297
    const-string v146, "addHomeTipsRequestInterval"

    .line 298
    .line 299
    const-string v147, "enableAddHomeTopTip"

    .line 300
    .line 301
    const-string v148, "enableAddHomeBottomTip"

    .line 302
    .line 303
    const-string v149, "enableAddHomeBackDialogTip"

    .line 304
    .line 305
    const-string v150, "offScreenRender"

    .line 306
    .line 307
    const-string v151, "keyGamePerformanceMonitorStr"

    .line 308
    .line 309
    const-string v152, "fixEncodeUrl"

    .line 310
    .line 311
    const-string v153, "keyGamePerformanceMonitorStrUseLocal"

    .line 312
    .line 313
    const-string v154, "enablePreStrategyTrackPoint"

    .line 314
    .line 315
    const-string v155, "enablePreZeroScreenUpdate"

    .line 316
    .line 317
    const-string v156, "enableUseOxygenBus"

    .line 318
    .line 319
    const-string v157, "clearStartTimeDataInterval"

    .line 320
    .line 321
    const-string v158, "collectUsageDataDurationCondition"

    .line 322
    .line 323
    const-string v159, "forceAthenaReportMode"

    .line 324
    .line 325
    const-string v160, "postInitAdsense"

    .line 326
    .line 327
    const-string v161, "mfahList"

    .line 328
    .line 329
    const-string v162, "enableForceAddHome"

    .line 330
    .line 331
    const-string v163, "enableUpdateAddHome"

    .line 332
    .line 333
    const-string v164, "miniAppServerId"

    .line 334
    .line 335
    const-string v165, "cameraSlowAutoFocusDeviceWhiteList"

    .line 336
    .line 337
    const-string v166, "enableMiniSubPackage"

    .line 338
    .line 339
    const-string v167, "prefetchConfigUrl"

    .line 340
    .line 341
    const-string v168, "prefetchV2Enable"

    .line 342
    .line 343
    const-string v169, "prefetchFreshTime"

    .line 344
    .line 345
    const-string v170, "eofflineafq"

    .line 346
    .line 347
    const-string v171, "forceFinishMiniApp"

    .line 348
    .line 349
    const-string v172, "ccrInterval"

    .line 350
    .line 351
    const-string v173, "cdnrInterval"

    .line 352
    .line 353
    const-string v174, "cdnConfigsuccess"

    .line 354
    .line 355
    const-string v175, "fpnav"

    .line 356
    .line 357
    const-string v176, "addHomeSwitch"

    .line 358
    .line 359
    const-string v177, "offlineAppsSwitch"

    .line 360
    .line 361
    const-string v178, "offlineAppsAbilitySwitch"

    .line 362
    .line 363
    const-string v179, "offlineAppsList"

    .line 364
    .line 365
    const-string v180, "offlineAppsScanLevel"

    .line 366
    .line 367
    const-string v181, "oflHostInterval"

    .line 368
    .line 369
    const-string v182, "oflInterval"

    .line 370
    .line 371
    const-string v183, "uofhs"

    .line 372
    .line 373
    const-string v184, "uofms"

    .line 374
    .line 375
    const-string v185, "merqm"

    .line 376
    .line 377
    const-string v186, "muscl"

    .line 378
    .line 379
    const-string v187, "enableDevUserAgreement"

    .line 380
    .line 381
    const-string v188, "enableduaWhitlist"

    .line 382
    .line 383
    const-string v189, "miniPsStorageSizeMin"

    .line 384
    .line 385
    const-string v190, "miniPsStoragews"

    .line 386
    .line 387
    const-string v191, "miniStartToPs"

    .line 388
    .line 389
    const-string v192, "miniStartSyncOnlyPsLink"

    .line 390
    .line 391
    const-string v193, "enableAppinfoDownload"

    .line 392
    .line 393
    const-string v194, "showAddHomeCustomLowVersion"

    .line 394
    .line 395
    const-string v195, "miniesti"

    .line 396
    .line 397
    const-string v196, "privacyAutoBlackCountry"

    .line 398
    .line 399
    const-string v197, "privacyAutoWhiteCountry"

    .line 400
    .line 401
    filled-new-array/range {v0 .. v199}, [Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    return-object v0
.end method

.method public setDebugMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getCONFIG_DEV_MODE()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
