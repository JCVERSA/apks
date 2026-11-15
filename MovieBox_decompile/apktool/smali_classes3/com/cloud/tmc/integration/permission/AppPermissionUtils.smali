.class public Lcom/cloud/tmc/integration/permission/AppPermissionUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Tmcintegration:AppPermissionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static convert2ApiPermissionInfo(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;
    .locals 14

    .line 1
    const-string v0, "Tmcintegration:AppPermissionUtils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "convert2ApiPermissionInfo "

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p0, :cond_c

    .line 25
    .line 26
    new-instance v2, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getJsapiList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    instance-of v6, v5, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_1
    const-string v3, "JSAPI_List"

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getValidDomains()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_5

    .line 91
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_4

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    instance-of v6, v5, Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    check-cast v5, Ljava/lang/String;

    .line 116
    .line 117
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const-string v3, "validDomain"

    .line 122
    .line 123
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getSpecialConfigs()Lcom/google/gson/JsonObject;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_b

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_b

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_b

    .line 151
    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p0, v4, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_6

    .line 163
    .line 164
    new-instance v6, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const-string v9, "JSAPI_SP_Config_"

    .line 182
    .line 183
    if-eqz v8, :cond_a

    .line 184
    .line 185
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Ljava/lang/String;

    .line 190
    .line 191
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v8, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonArray(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    if-eqz v10, :cond_7

    .line 199
    .line 200
    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-nez v11, :cond_7

    .line 205
    .line 206
    new-instance v11, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-eqz v12, :cond_9

    .line 220
    .line 221
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    instance-of v13, v12, Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v13, :cond_8

    .line 228
    .line 229
    check-cast v12, Ljava/lang/String;

    .line 230
    .line 231
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v9, "_"

    .line 247
    .line 248
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v2, v8, v11}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v2, v4, v6}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :cond_b
    const/4 p0, 0x1

    .line 283
    invoke-virtual {v2, p0}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setHasPermissionFile(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    .line 285
    .line 286
    return-object v2

    .line 287
    :goto_5
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :cond_c
    return-object v1
.end method

.method public static getAggregationMainAppId(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtendInfos()Lcom/google/gson/JsonObject;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtendInfos()Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "launchParams"

    .line 15
    .line 16
    invoke-static {p0, v1, v0}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string v0, "aggregationMainAppId"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    return-object v0
.end method

.method public static getApp(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/integration/structure/App;
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    check-cast p0, Lcom/cloud/tmc/kernel/node/Node;

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    :goto_0
    if-eqz p0, :cond_2

    .line 11
    .line 12
    add-int/lit8 v2, v0, -0x1

    .line 13
    .line 14
    if-lez v0, :cond_2

    .line 15
    .line 16
    instance-of v0, p0, Lcom/cloud/tmc/integration/structure/App;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return-object v1
.end method

.method public static getPermissionAppId(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getApp(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static getPermissionModel(Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "appInfo"

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPermissionModel(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 3

    .line 3
    instance-of v0, p0, Lcom/cloud/tmc/kernel/node/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    check-cast p0, Lcom/cloud/tmc/kernel/node/Node;

    const/4 v0, 0x5

    :goto_0
    if-eqz p0, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    .line 5
    instance-of v0, p0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p0

    move v0, v2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_3

    return-object v1

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getPermissionModel(Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object p0

    return-object p0
.end method
