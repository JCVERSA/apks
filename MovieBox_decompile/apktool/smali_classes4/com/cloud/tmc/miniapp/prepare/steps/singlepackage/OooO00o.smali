.class public Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0O0;
.source "source.java"


# instance fields
.field public OooO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0O0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "app"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "uniqueChainID"

    .line 22
    .line 23
    const-string v4, "-1"

    .line 24
    .line 25
    invoke-static {v3, v2, v4, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v5, 0x1

    .line 33
    :goto_0
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v6, ""

    .line 43
    .line 44
    const-class v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    sget-object v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 59
    .line 60
    invoke-interface {v5, v8, v12, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    :cond_2
    move-object v11, v9

    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 79
    .line 80
    iget-object v5, v9, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 81
    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-interface {v5, v8, v12}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget-object v8, v9, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 99
    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    invoke-interface {v8, v12, v13}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v0, v8}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const-string v12, "mpu_chain_uniqueId"

    .line 117
    .line 118
    const-string v13, "mpu_new_v"

    .line 119
    .line 120
    const-string v14, "mpu_old_v"

    .line 121
    .line 122
    const-string v15, "mpu_appId"

    .line 123
    .line 124
    if-eqz p5, :cond_4

    .line 125
    .line 126
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-nez v16, :cond_4

    .line 131
    .line 132
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    if-nez v16, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0, v8, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 155
    .line 156
    invoke-static {v10, v11, v15, v14, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    invoke-virtual {v11, v13, v8}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-static {v3, v2, v4, v11, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-interface {v0, v1, v11, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 182
    .line 183
    if-eqz p5, :cond_5

    .line 184
    .line 185
    const-string v11, "sync"

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    const-string v11, "async"

    .line 189
    .line 190
    :goto_1
    const-string v9, "mpu_download_type"

    .line 191
    .line 192
    invoke-virtual {v7, v9, v11}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-static {v10, v7, v15, v14, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7, v13, v8}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v3, v2, v4, v7, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-interface {v0, v1, v2, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    if-eqz p5, :cond_6

    .line 212
    .line 213
    const/4 v9, 0x2

    .line 214
    goto :goto_2

    .line 215
    :cond_6
    const/4 v9, 0x1

    .line 216
    :goto_2
    const-string v0, "SinglePkgDownloadStep startDownload:downloadUrl:"

    .line 217
    .line 218
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v1, ";appInfo:appId:"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v1, ";deployVersion:"

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v1, "Subpackage::"

    .line 258
    .line 259
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v11, p0

    .line 263
    .line 264
    iget-object v12, v11, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 265
    .line 266
    new-instance v13, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;

    .line 267
    .line 268
    move-object v0, v13

    .line 269
    move-object/from16 v1, p0

    .line 270
    .line 271
    move/from16 v2, p5

    .line 272
    .line 273
    move-object/from16 v3, p2

    .line 274
    .line 275
    move-object/from16 v4, p4

    .line 276
    .line 277
    move-object v6, v8

    .line 278
    move-object/from16 v7, p1

    .line 279
    .line 280
    move-object/from16 v8, p3

    .line 281
    .line 282
    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;ZLcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 283
    .line 284
    .line 285
    const/4 v0, 0x1

    .line 286
    invoke-interface {v12, v10, v9, v0, v13}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->downloadApp(Lcom/cloud/tmc/integration/model/AppModel;IZLcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :goto_3
    if-nez p5, :cond_7

    .line 291
    .line 292
    const/4 v0, 0x0

    .line 293
    move-object/from16 v1, p3

    .line 294
    .line 295
    invoke-interface {v1, v10, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 296
    .line 297
    .line 298
    :cond_7
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 299
    .line 300
    const-string v1, "11"

    .line 301
    .line 302
    const-string v2, "packageUrl is null or empty"

    .line 303
    .line 304
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v1, p1

    .line 308
    .line 309
    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getDevStatus()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v9, 0x2

    .line 16
    const-string v10, ""

    .line 17
    .line 18
    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v12, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iput-boolean v12, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 25
    .line 26
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 27
    .line 28
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 32
    .line 33
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3, v5, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3, v5, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3, v5, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v8, v8}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->lock(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v6, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 63
    .line 64
    move-object/from16 v1, p0

    .line 65
    .line 66
    move-object/from16 v2, p1

    .line 67
    .line 68
    move-object/from16 v3, p2

    .line 69
    .line 70
    move-object/from16 v4, p3

    .line 71
    .line 72
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v2, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_0

    .line 90
    .line 91
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 96
    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 102
    .line 103
    invoke-interface {v2, v0, v3, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v1, v3, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 120
    .line 121
    const-string v3, "Step_FW_Download_\u8d44\u6e90\u5305\u5df2\u4e0b\u8f7d\uff0c\u8df3\u8f6c\u5230\u89e3\u538b\u6b65\u9aa4"

    .line 122
    .line 123
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-boolean v2, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v3, 0x3

    .line 134
    if-eq v1, v3, :cond_4

    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v4, 0x4

    .line 141
    if-ne v1, v4, :cond_3

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    :goto_0
    move v3, v2

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    :goto_1
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 147
    .line 148
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 152
    .line 153
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ne v1, v3, :cond_5

    .line 161
    .line 162
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 163
    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v1, v3, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getNativeCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    iget-object v3, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 173
    .line 174
    const-string v4, "use native pkg resource"

    .line 175
    .line 176
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    move v3, v2

    .line 180
    goto :goto_2

    .line 181
    :cond_5
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 182
    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-interface {v1, v3, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getOfflineCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iget-object v3, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 192
    .line 193
    const-string v4, "use offline pkg resource"

    .line 194
    .line 195
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move v3, v12

    .line 199
    :goto_2
    iget-object v4, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v13, "Step_FW_Download_\u8d44\u6e90\u5305\u5df2\u4e0b\u8f7d\uff0c\u8df3\u8f6c\u5230\u89e3\u538b\u6b65\u9aa4->"

    .line 207
    .line 208
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v4, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    xor-int/2addr v1, v12

    .line 222
    iput-boolean v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 223
    .line 224
    :goto_3
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 225
    .line 226
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-interface {v1, v4, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_6

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-nez v4, :cond_6

    .line 249
    .line 250
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 251
    .line 252
    const-string v4, "DownloadStep preAppinfo is  subpackage,not use"

    .line 253
    .line 254
    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    move-object v1, v5

    .line 258
    :cond_6
    if-eqz v3, :cond_7

    .line 259
    .line 260
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 261
    .line 262
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-nez v13, :cond_7

    .line 275
    .line 276
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-nez v13, :cond_7

    .line 281
    .line 282
    invoke-virtual {v3, v6, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_7

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_7
    move-object v5, v1

    .line 290
    :goto_4
    if-eqz v5, :cond_c

    .line 291
    .line 292
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 293
    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-interface {v1, v3, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_a

    .line 303
    .line 304
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 305
    .line 306
    iget-object v2, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 307
    .line 308
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-nez v4, :cond_8

    .line 333
    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-nez v4, :cond_8

    .line 339
    .line 340
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_8

    .line 345
    .line 346
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 351
    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 357
    .line 358
    const-string v13, "mpu_appId"

    .line 359
    .line 360
    const-string v14, "mpu_old_v"

    .line 361
    .line 362
    invoke-static {v5, v9, v13, v14, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    const-string v9, "mpu_new_v"

    .line 367
    .line 368
    invoke-virtual {v2, v9, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    const-string v3, "-1"

    .line 373
    .line 374
    const-string v9, "mpu_chain_uniqueId"

    .line 375
    .line 376
    const-string v13, "uniqueChainID"

    .line 377
    .line 378
    invoke-static {v0, v13, v3, v2, v9}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-interface {v4, v6, v2, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    :cond_8
    iget-object v2, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 386
    .line 387
    const-string v3, "appModelFromPre is not null,Download_step_\u5f53\u524d\u7248\u672c\u5df2\u6709\u7f13\u5b58"

    .line 388
    .line 389
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Landroid/os/Bundle;

    .line 411
    .line 412
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 413
    .line 414
    .line 415
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-nez v2, :cond_9

    .line 425
    .line 426
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 431
    .line 432
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 437
    .line 438
    invoke-interface {v2, v0, v3, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 439
    .line 440
    .line 441
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :cond_a
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 446
    .line 447
    const-string v3, "appModelFromPre is not null,Step_Download_\u5220\u9664\u5f53\u524d\u6240\u6709\u7f13\u5b58"

    .line 448
    .line 449
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 453
    .line 454
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 455
    .line 456
    .line 457
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 458
    .line 459
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 460
    .line 461
    .line 462
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 463
    .line 464
    invoke-virtual {v1, v5, v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkFocusUpdateMyByteApp(Lcom/cloud/tmc/integration/model/AppModel;I)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-eqz v3, :cond_e

    .line 469
    .line 470
    iget-object v3, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 471
    .line 472
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    invoke-interface {v3, v4, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    if-eqz v3, :cond_e

    .line 485
    .line 486
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getLowestOpenedVersion()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    invoke-virtual {v1, v6, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    const-string v14, "\u53c2\u4e0e\u6bd4\u5bf9\u7684\u7248\u672c\u53f7:"

    .line 499
    .line 500
    if-nez v13, :cond_b

    .line 501
    .line 502
    iget-object v13, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 503
    .line 504
    const-string v15, "Download_step_\u5f53\u524d\u7248\u672c\u7f13\u5b58\u7b26\u5408\u53ef\u6253\u5f00\u7248\u672c\u53f7"

    .line 505
    .line 506
    invoke-static {v15}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-result-object v15

    .line 510
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v1, "\u6700\u4f4e\u53ef\u6253\u5f00\u7248\u672c\u53f7:"

    .line 518
    .line 519
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-static {v13, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iput-boolean v2, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 539
    .line 540
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 541
    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_b
    iput-boolean v12, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 545
    .line 546
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 547
    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    const-string v3, "Download_step_\u5f53\u524d\u7248\u672c\u7f13\u5b58\u4e0d\u7b26\u5408\u53ef\u6253\u5f00\u7248\u672c\u53f7\uff0c\u5f3a\u5236\u66f4\u65b0\u6700\u4f4e\u53ef\u6253\u5f00\u7248\u672c:"

    .line 554
    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    goto :goto_5

    .line 575
    :cond_c
    iget-boolean v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 576
    .line 577
    if-nez v1, :cond_e

    .line 578
    .line 579
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 580
    .line 581
    const-string v2, "not need download resource pkg"

    .line 582
    .line 583
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    new-instance v1, Landroid/os/Bundle;

    .line 587
    .line 588
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 589
    .line 590
    .line 591
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-nez v2, :cond_d

    .line 601
    .line 602
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 607
    .line 608
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 613
    .line 614
    invoke-interface {v2, v0, v3, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 615
    .line 616
    .line 617
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :cond_e
    :goto_5
    iget-boolean v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 622
    .line 623
    if-eqz v1, :cond_f

    .line 624
    .line 625
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 626
    .line 627
    const-string v2, "need download resource pkg"

    .line 628
    .line 629
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-interface {v8, v8}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->lock(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    :cond_f
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 636
    .line 637
    const-string v2, "Step_Download_\u5f00\u59cb\u4e0b\u8f7d\u8d44\u6e90\u5305"

    .line 638
    .line 639
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    if-eqz v5, :cond_12

    .line 643
    .line 644
    iget-boolean v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 645
    .line 646
    if-eqz v1, :cond_10

    .line 647
    .line 648
    goto :goto_6

    .line 649
    :cond_10
    move v9, v12

    .line 650
    :goto_6
    new-instance v1, Landroid/os/Bundle;

    .line 651
    .line 652
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 653
    .line 654
    .line 655
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v1, v2, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-nez v2, :cond_11

    .line 665
    .line 666
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 671
    .line 672
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 677
    .line 678
    invoke-interface {v2, v3, v4, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 679
    .line 680
    .line 681
    :cond_11
    iget-boolean v6, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 682
    .line 683
    move-object/from16 v1, p0

    .line 684
    .line 685
    move-object/from16 v2, p1

    .line 686
    .line 687
    move-object/from16 v3, p2

    .line 688
    .line 689
    move-object/from16 v4, p3

    .line 690
    .line 691
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 692
    .line 693
    .line 694
    goto :goto_8

    .line 695
    :cond_12
    iget-boolean v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 696
    .line 697
    if-eqz v1, :cond_13

    .line 698
    .line 699
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 700
    .line 701
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 706
    .line 707
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .line 719
    .line 720
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v5

    .line 724
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v5, "_pre"

    .line 728
    .line 729
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 740
    .line 741
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    const-wide/16 v3, 0x0

    .line 750
    .line 751
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->refreshUpdateTime(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .line 753
    .line 754
    goto :goto_7

    .line 755
    :catchall_0
    move-exception v0

    .line 756
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 757
    .line 758
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 759
    .line 760
    .line 761
    :goto_7
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 762
    .line 763
    const-string v1, "appModelFromPre is not exist"

    .line 764
    .line 765
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-interface {v8, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 769
    .line 770
    .line 771
    return-void

    .line 772
    :cond_13
    :goto_8
    iget-boolean v1, v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO:Z

    .line 773
    .line 774
    if-nez v1, :cond_15

    .line 775
    .line 776
    new-instance v1, Landroid/os/Bundle;

    .line 777
    .line 778
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 779
    .line 780
    .line 781
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 782
    .line 783
    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 787
    .line 788
    .line 789
    move-result v2

    .line 790
    if-nez v2, :cond_14

    .line 791
    .line 792
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 797
    .line 798
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 803
    .line 804
    invoke-interface {v2, v0, v3, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 805
    .line 806
    .line 807
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 808
    .line 809
    .line 810
    :cond_15
    return-void
.end method
