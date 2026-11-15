.class public Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "/"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    move-object v2, p0

    .line 58
    move-object v3, p1

    .line 59
    move-object v5, p3

    .line 60
    move-object v6, p4

    .line 61
    move-object v7, p5

    .line 62
    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {p5, v1, v2, v3, p6}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "StartStep:absPath:"

    .line 83
    .line 84
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, ";vUrl:"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "Subpackage::"

    .line 108
    .line 109
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v3, ".html"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_1

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 143
    .line 144
    const-string v3, "Step_LoadStep: tar\u5305\u7ed3\u6784: "

    .line 145
    .line 146
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_2
    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/integration/model/PrepareCallbackParam;
    .locals 27

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    const-string v11, "frameworkConfig \u4e0d\u5b58\u5728\uff1a"

    .line 8
    .line 9
    const-string v12, "frameworkConfig.json error"

    .line 10
    .line 11
    const-string v13, "\u8d44\u6e90\u6587\u4ef6\u51fa\u9519"

    .line 12
    .line 13
    const-string v14, "miniappzip error"

    .line 14
    .line 15
    const-string v0, "frameworkzip error"

    .line 16
    .line 17
    const-string v15, "14"

    .line 18
    .line 19
    const-string v7, "8"

    .line 20
    .line 21
    const-class v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 22
    .line 23
    const-string v5, "appConfig.json"

    .line 24
    .line 25
    const-string v4, "15"

    .line 26
    .line 27
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "startStep \u521b\u5efanormal app config"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const-class v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    move-object/from16 p3, v4

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v1, v2, v4}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->setPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object/from16 p3, v4

    .line 67
    .line 68
    :goto_0
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    move-object/from16 v16, v5

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, "_used"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 101
    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v1, v2, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getPreUnzipStatus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    const-string v1, "Tmc"

    .line 117
    .line 118
    const-string v2, "startStep_\u4f7f\u7528\u4e86\u9884\u5148\u89e3\u538b\u7684\u5305"

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v4, "preunzip"

    .line 136
    .line 137
    invoke-interface {v1, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 141
    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    move-object/from16 v17, v3

    .line 151
    .line 152
    const/4 v3, 0x0

    .line 153
    invoke-interface {v1, v2, v4, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updatePreUnzipStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    move-object/from16 v17, v3

    .line 158
    .line 159
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v3, Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v2, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    .line 178
    .line 179
    const-class v18, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 180
    .line 181
    invoke-static/range {v18 .. v18}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v18

    .line 185
    move-object/from16 v10, v18

    .line 186
    .line 187
    check-cast v10, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 188
    .line 189
    move-object/from16 v18, v1

    .line 190
    .line 191
    :try_start_0
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    .line 193
    move-object/from16 v19, v2

    .line 194
    .line 195
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v20

    .line 203
    if-eqz v20, :cond_2

    .line 204
    .line 205
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_3

    .line 210
    .line 211
    :cond_2
    move-object/from16 v24, v5

    .line 212
    .line 213
    move-object/from16 v25, v6

    .line 214
    .line 215
    move-object/from16 v26, v7

    .line 216
    .line 217
    move-object/from16 v20, v12

    .line 218
    .line 219
    move-object/from16 v23, v16

    .line 220
    .line 221
    move-object/from16 v22, v18

    .line 222
    .line 223
    move-object/from16 v18, v19

    .line 224
    .line 225
    move-object/from16 v12, p3

    .line 226
    .line 227
    move-object/from16 p3, v4

    .line 228
    .line 229
    move-object/from16 v19, v11

    .line 230
    .line 231
    move-object/from16 v11, v17

    .line 232
    .line 233
    move-object/from16 v17, v3

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const-string v21, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .line 242
    move-object/from16 v22, v18

    .line 243
    .line 244
    move-object/from16 v1, p0

    .line 245
    .line 246
    move-object/from16 v18, v19

    .line 247
    .line 248
    move-object/from16 v19, v11

    .line 249
    .line 250
    move-object/from16 v11, v17

    .line 251
    .line 252
    move-object/from16 v17, v3

    .line 253
    .line 254
    move-object/from16 v3, v20

    .line 255
    .line 256
    move-object/from16 v20, v12

    .line 257
    .line 258
    move-object/from16 v12, p3

    .line 259
    .line 260
    move-object/from16 p3, v4

    .line 261
    .line 262
    move-object/from16 v4, v17

    .line 263
    .line 264
    move-object/from16 v24, v5

    .line 265
    .line 266
    move-object/from16 v23, v16

    .line 267
    .line 268
    move-object/from16 v5, v22

    .line 269
    .line 270
    move-object/from16 v25, v6

    .line 271
    .line 272
    move-object v6, v10

    .line 273
    move-object/from16 v26, v7

    .line 274
    .line 275
    move-object/from16 v7, v21

    .line 276
    .line 277
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :catchall_0
    move-object/from16 v24, v5

    .line 282
    .line 283
    move-object/from16 v25, v6

    .line 284
    .line 285
    move-object/from16 v26, v7

    .line 286
    .line 287
    move-object/from16 v20, v12

    .line 288
    .line 289
    move-object/from16 v23, v16

    .line 290
    .line 291
    move-object/from16 v22, v18

    .line 292
    .line 293
    move-object/from16 v18, v19

    .line 294
    .line 295
    move-object/from16 v12, p3

    .line 296
    .line 297
    move-object/from16 p3, v4

    .line 298
    .line 299
    move-object/from16 v19, v11

    .line 300
    .line 301
    move-object/from16 v11, v17

    .line 302
    .line 303
    move-object/from16 v17, v3

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :goto_2
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 307
    .line 308
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 320
    .line 321
    invoke-direct {v1, v15, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 325
    .line 326
    .line 327
    goto/16 :goto_a

    .line 328
    .line 329
    :catchall_1
    move-object/from16 v24, v5

    .line 330
    .line 331
    move-object/from16 v25, v6

    .line 332
    .line 333
    move-object/from16 v26, v7

    .line 334
    .line 335
    move-object/from16 v19, v11

    .line 336
    .line 337
    move-object/from16 v20, v12

    .line 338
    .line 339
    move-object/from16 v23, v16

    .line 340
    .line 341
    move-object/from16 v11, v17

    .line 342
    .line 343
    move-object/from16 v22, v18

    .line 344
    .line 345
    move-object/from16 v12, p3

    .line 346
    .line 347
    move-object/from16 v18, v2

    .line 348
    .line 349
    move-object/from16 v17, v3

    .line 350
    .line 351
    move-object/from16 p3, v4

    .line 352
    .line 353
    :catchall_2
    :goto_3
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 354
    .line 355
    invoke-direct {v1, v15, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 362
    .line 363
    const-string v1, "\u8bf7\u5148\u4e0b\u8f7d\u6846\u67b6\u5305\u8d44\u6e90\u6587\u4ef6\uff1a"

    .line 364
    .line 365
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_4
    :try_start_3
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 369
    .line 370
    invoke-interface {v0, v11}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-eqz v3, :cond_5

    .line 375
    .line 376
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_4

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_4
    const-string v7, ""

    .line 384
    .line 385
    move-object/from16 v1, p0

    .line 386
    .line 387
    move-object v2, v11

    .line 388
    move-object/from16 v4, p3

    .line 389
    .line 390
    move-object/from16 v5, v22

    .line 391
    .line 392
    move-object v6, v10

    .line 393
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_7

    .line 397
    :catchall_3
    move-exception v0

    .line 398
    goto :goto_6

    .line 399
    :cond_5
    :goto_5
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 400
    .line 401
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v0, v1, v11}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 409
    .line 410
    invoke-direct {v0, v12, v14}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-interface {v9, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 414
    .line 415
    .line 416
    goto :goto_a

    .line 417
    :goto_6
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-direct {v1, v12, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v0, v13}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :goto_7
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 435
    .line 436
    invoke-virtual {v11}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_8

    .line 445
    .line 446
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getCommonResModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    if-eqz v2, :cond_8

    .line 451
    .line 452
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 453
    .line 454
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    if-eqz v3, :cond_7

    .line 459
    .line 460
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_6

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_6
    const-string v7, ""

    .line 468
    .line 469
    move-object/from16 v1, p0

    .line 470
    .line 471
    move-object/from16 v4, v18

    .line 472
    .line 473
    move-object/from16 v5, v22

    .line 474
    .line 475
    move-object v6, v10

    .line 476
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :catchall_4
    move-exception v0

    .line 481
    goto :goto_9

    .line 482
    :cond_7
    :goto_8
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 483
    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 489
    .line 490
    .line 491
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 492
    .line 493
    invoke-direct {v0, v12, v14}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v9, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 497
    .line 498
    .line 499
    goto :goto_a

    .line 500
    :goto_9
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-direct {v1, v12, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 513
    .line 514
    invoke-static {v0, v13}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    :cond_8
    :goto_a
    new-instance v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 518
    .line 519
    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/AppLoadResult;-><init>()V

    .line 520
    .line 521
    .line 522
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 523
    .line 524
    invoke-virtual {v1, v11}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appVersion:Ljava/lang/String;

    .line 529
    .line 530
    const-string v1, "https://100000.miniapp.transsion.com/index.html"

    .line 531
    .line 532
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainHtmlUrl:Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getCommonResModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    if-eqz v1, :cond_9

    .line 539
    .line 540
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    if-eqz v2, :cond_a

    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-nez v3, :cond_a

    .line 551
    .line 552
    iget-object v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 553
    .line 554
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    move-object/from16 v6, v24

    .line 567
    .line 568
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-interface {v3, v4, v1, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setCurrentUseCommonResVersion(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 587
    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_9
    const-string v2, ""

    .line 591
    .line 592
    :catchall_5
    :cond_a
    :goto_b
    invoke-virtual {v11}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    move-object/from16 v4, p3

    .line 597
    .line 598
    move-object/from16 v3, v23

    .line 599
    .line 600
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    check-cast v4, Ljava/lang/String;

    .line 605
    .line 606
    if-eqz v4, :cond_b

    .line 607
    .line 608
    iget-object v5, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 609
    .line 610
    invoke-interface {v10, v1, v4}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-interface {v5, v1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    sget-object v4, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 619
    .line 620
    move-object/from16 v5, v25

    .line 621
    .line 622
    :try_start_7
    invoke-virtual {v4, v1, v5}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 627
    .line 628
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 629
    .line 630
    :goto_c
    move-object/from16 v1, v17

    .line 631
    .line 632
    move-object/from16 v6, v26

    .line 633
    .line 634
    goto :goto_e

    .line 635
    :catchall_6
    move-object/from16 v5, v25

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_b
    move-object/from16 v5, v25

    .line 639
    .line 640
    goto :goto_c

    .line 641
    :catchall_7
    :goto_d
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 642
    .line 643
    const-string v4, "appConfig\u4e0d\u5b58\u5728\uff1a"

    .line 644
    .line 645
    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 649
    .line 650
    const-string v4, "appConfig.json error"

    .line 651
    .line 652
    move-object/from16 v6, v26

    .line 653
    .line 654
    invoke-direct {v1, v6, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 658
    .line 659
    .line 660
    move-object/from16 v1, v17

    .line 661
    .line 662
    :goto_e
    :try_start_8
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    check-cast v1, Ljava/lang/String;

    .line 667
    .line 668
    if-eqz v1, :cond_c

    .line 669
    .line 670
    iget-object v4, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 671
    .line 672
    const-string v7, "100000"

    .line 673
    .line 674
    invoke-interface {v10, v7, v1}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-interface {v4, v1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    sget-object v4, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 683
    .line 684
    invoke-virtual {v4, v1, v5}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 689
    .line 690
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameworkConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 691
    .line 692
    :cond_c
    move-object/from16 v7, v19

    .line 693
    .line 694
    move-object/from16 v4, v20

    .line 695
    .line 696
    goto :goto_f

    .line 697
    :catchall_8
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 698
    .line 699
    move-object/from16 v4, v20

    .line 700
    .line 701
    invoke-direct {v1, v6, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 708
    .line 709
    move-object/from16 v7, v19

    .line 710
    .line 711
    invoke-static {v1, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_f
    if-eqz v2, :cond_d

    .line 715
    .line 716
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-nez v1, :cond_d

    .line 721
    .line 722
    move-object/from16 v1, v18

    .line 723
    .line 724
    :try_start_9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    check-cast v1, Ljava/lang/String;

    .line 729
    .line 730
    if-eqz v1, :cond_d

    .line 731
    .line 732
    iget-object v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 733
    .line 734
    invoke-interface {v10, v2, v1}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    invoke-interface {v3, v1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    sget-object v2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 743
    .line 744
    invoke-virtual {v2, v1, v5}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 749
    .line 750
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->commonResAppConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 751
    .line 752
    :cond_d
    :goto_10
    move-object/from16 v1, v22

    .line 753
    .line 754
    goto :goto_11

    .line 755
    :catchall_9
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 756
    .line 757
    invoke-direct {v1, v6, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-interface {v9, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 761
    .line 762
    .line 763
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 764
    .line 765
    invoke-static {v1, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    goto :goto_10

    .line 769
    :goto_11
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->htmlMap:Ljava/util/HashMap;

    .line 770
    .line 771
    const-string v1, "WEB_TINY"

    .line 772
    .line 773
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameWorkModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 780
    .line 781
    new-instance v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 782
    .line 783
    move-object/from16 v2, p2

    .line 784
    .line 785
    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 786
    .line 787
    .line 788
    iput-object v0, v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 789
    .line 790
    new-instance v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 791
    .line 792
    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 793
    .line 794
    .line 795
    iput-object v0, v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 796
    .line 797
    return-object v1
.end method
