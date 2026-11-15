.class Lcom/transsion/ad/db/MbAdDatabase_Impl$a;
.super Landroidx/room/f0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/db/MbAdDatabase_Impl;->B0()Landroidx/room/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/db/MbAdDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/ad/db/MbAdDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/MbAdDatabase_Impl$a;->d:Lcom/transsion/ad/db/MbAdDatabase_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroidx/room/f0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `mb_ad_db_plans` (`id` TEXT NOT NULL, `version` TEXT, `name` TEXT, `startTime` TEXT, `endTime` TEXT, `extraConfig` TEXT, `displayTimes` INTEGER, `showedTimes` INTEGER, `showDate` TEXT, `advertiserName` TEXT, `advertiserAvatar` TEXT, `advertiserAvatarPath` TEXT, `brand` TEXT, `denyBrand` TEXT, `model` TEXT, `denyModel` TEXT, `country` TEXT, `scenes` TEXT, `adSource` TEXT, `extAdSlot` TEXT, `adMaterialList` TEXT, `adPlanUpdateTime` TEXT, `sort` INTEGER, `adShowLevel` TEXT, `filterClientVersion` TEXT, `adPlanCreateTime` TEXT, `appStarDesc` TEXT, `appSizeDesc` TEXT, `ctxEnableExpr` TEXT, `ctxDisableExpr` TEXT, `ctxAttributeConfig` TEXT, `dispatchTimeStart` TEXT, `dispatchTimeEnd` TEXT, `extImage` TEXT, `bidEcpmCent` REAL, `ecpmCent` INTEGER, `isValid` INTEGER NOT NULL, `h5LinkPreload` INTEGER NOT NULL, `h5LinkOpenByCct` INTEGER NOT NULL, `countryCode` TEXT, PRIMARY KEY(`id`))"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `local_mcc` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS `ps_link_ad` (`id` INTEGER NOT NULL, `nonId` TEXT NOT NULL, `adSource` TEXT NOT NULL, `extAdSlot` TEXT NOT NULL, `rank` INTEGER NOT NULL, `psPlanId` TEXT, `psLinkAdInfoStr` TEXT, `psInfoJson` TEXT, `updateTimestamp` INTEGER, `showMax` INTEGER, `clickMax` INTEGER, `showHours` TEXT, `showedTimes` INTEGER NOT NULL, `clickedTimes` INTEGER NOT NULL, `showDate` TEXT, PRIMARY KEY(`id`))"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `attribution_points` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `psId` TEXT NOT NULL, `failCount` INTEGER NOT NULL, `reportUrl` TEXT NOT NULL, `type` TEXT NOT NULL, `updateTimestamp` INTEGER NOT NULL)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS `app_installed` (`packageName` TEXT NOT NULL, `source` TEXT, `appName` TEXT, `versionName` TEXT, `versionCode` TEXT, `horizontalImageUrl` TEXT, `eCPM` REAL, `installTime` INTEGER, `lastOpenTime` INTEGER, PRIMARY KEY(`packageName`))"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE TABLE IF NOT EXISTS `ad_scene_limit_table` (`sceneId` TEXT NOT NULL, `lastDisplayAdDate` TEXT NOT NULL, `lastDisplayAdTimestamp` INTEGER NOT NULL, `displayTimes` INTEGER NOT NULL, PRIMARY KEY(`sceneId`))"

    .line 27
    .line 28
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 32
    .line 33
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'58697ca485708a9a9f5014d94ad4e49f\')"

    .line 37
    .line 38
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public b(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `mb_ad_db_plans`"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `local_mcc`"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `ps_link_ad`"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `attribution_points`"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DROP TABLE IF EXISTS `app_installed`"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE IF EXISTS `ad_scene_limit_table`"

    .line 27
    .line 28
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public f(Ly3/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ly3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/MbAdDatabase_Impl$a;->d:Lcom/transsion/ad/db/MbAdDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/ad/db/MbAdDatabase_Impl;->A0(Lcom/transsion/ad/db/MbAdDatabase_Impl;Ly3/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Ly3/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Ly3/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/b;->a(Ly3/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j(Ly3/b;)Landroidx/room/f0$a;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/16 v2, 0x28

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/room/util/m$a;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    const-string v4, "id"

    .line 15
    .line 16
    const-string v5, "TEXT"

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x1

    .line 20
    move-object v3, v2

    .line 21
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v3, "id"

    .line 25
    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroidx/room/util/m$a;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x1

    .line 33
    const-string v5, "version"

    .line 34
    .line 35
    const-string v6, "TEXT"

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v4, v2

    .line 40
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v4, "version"

    .line 44
    .line 45
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v2, Landroidx/room/util/m$a;

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x1

    .line 52
    const-string v6, "name"

    .line 53
    .line 54
    const-string v7, "TEXT"

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    move-object v5, v2

    .line 58
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string v4, "name"

    .line 62
    .line 63
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v2, Landroidx/room/util/m$a;

    .line 67
    .line 68
    const-string v6, "startTime"

    .line 69
    .line 70
    const-string v7, "TEXT"

    .line 71
    .line 72
    move-object v5, v2

    .line 73
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string v4, "startTime"

    .line 77
    .line 78
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance v2, Landroidx/room/util/m$a;

    .line 82
    .line 83
    const-string v6, "endTime"

    .line 84
    .line 85
    const-string v7, "TEXT"

    .line 86
    .line 87
    move-object v5, v2

    .line 88
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    const-string v4, "endTime"

    .line 92
    .line 93
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    new-instance v2, Landroidx/room/util/m$a;

    .line 97
    .line 98
    const-string v6, "extraConfig"

    .line 99
    .line 100
    const-string v7, "TEXT"

    .line 101
    .line 102
    move-object v5, v2

    .line 103
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const-string v4, "extraConfig"

    .line 107
    .line 108
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    new-instance v2, Landroidx/room/util/m$a;

    .line 112
    .line 113
    const-string v6, "displayTimes"

    .line 114
    .line 115
    const-string v7, "INTEGER"

    .line 116
    .line 117
    move-object v5, v2

    .line 118
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string v4, "displayTimes"

    .line 122
    .line 123
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    new-instance v2, Landroidx/room/util/m$a;

    .line 127
    .line 128
    const-string v6, "showedTimes"

    .line 129
    .line 130
    const-string v7, "INTEGER"

    .line 131
    .line 132
    move-object v5, v2

    .line 133
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    const-string v5, "showedTimes"

    .line 137
    .line 138
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    new-instance v2, Landroidx/room/util/m$a;

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x1

    .line 145
    const-string v7, "showDate"

    .line 146
    .line 147
    const-string v8, "TEXT"

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    move-object v6, v2

    .line 151
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    const-string v6, "showDate"

    .line 155
    .line 156
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    new-instance v2, Landroidx/room/util/m$a;

    .line 160
    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x1

    .line 163
    const-string v8, "advertiserName"

    .line 164
    .line 165
    const-string v9, "TEXT"

    .line 166
    .line 167
    const/4 v11, 0x0

    .line 168
    move-object v7, v2

    .line 169
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    const-string v7, "advertiserName"

    .line 173
    .line 174
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    new-instance v2, Landroidx/room/util/m$a;

    .line 178
    .line 179
    const/4 v13, 0x0

    .line 180
    const/4 v14, 0x1

    .line 181
    const-string v9, "advertiserAvatar"

    .line 182
    .line 183
    const-string v10, "TEXT"

    .line 184
    .line 185
    const/4 v12, 0x0

    .line 186
    move-object v8, v2

    .line 187
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string v7, "advertiserAvatar"

    .line 191
    .line 192
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    new-instance v2, Landroidx/room/util/m$a;

    .line 196
    .line 197
    const-string v9, "advertiserAvatarPath"

    .line 198
    .line 199
    const-string v10, "TEXT"

    .line 200
    .line 201
    move-object v8, v2

    .line 202
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string v7, "advertiserAvatarPath"

    .line 206
    .line 207
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    new-instance v2, Landroidx/room/util/m$a;

    .line 211
    .line 212
    const-string v9, "brand"

    .line 213
    .line 214
    const-string v10, "TEXT"

    .line 215
    .line 216
    move-object v8, v2

    .line 217
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    const-string v7, "brand"

    .line 221
    .line 222
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    new-instance v2, Landroidx/room/util/m$a;

    .line 226
    .line 227
    const-string v9, "denyBrand"

    .line 228
    .line 229
    const-string v10, "TEXT"

    .line 230
    .line 231
    move-object v8, v2

    .line 232
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    const-string v7, "denyBrand"

    .line 236
    .line 237
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    new-instance v2, Landroidx/room/util/m$a;

    .line 241
    .line 242
    const-string v9, "model"

    .line 243
    .line 244
    const-string v10, "TEXT"

    .line 245
    .line 246
    move-object v8, v2

    .line 247
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    const-string v7, "model"

    .line 251
    .line 252
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    new-instance v2, Landroidx/room/util/m$a;

    .line 256
    .line 257
    const-string v9, "denyModel"

    .line 258
    .line 259
    const-string v10, "TEXT"

    .line 260
    .line 261
    move-object v8, v2

    .line 262
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    const-string v7, "denyModel"

    .line 266
    .line 267
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    new-instance v2, Landroidx/room/util/m$a;

    .line 271
    .line 272
    const-string v9, "country"

    .line 273
    .line 274
    const-string v10, "TEXT"

    .line 275
    .line 276
    move-object v8, v2

    .line 277
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 278
    .line 279
    .line 280
    const-string v7, "country"

    .line 281
    .line 282
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    new-instance v2, Landroidx/room/util/m$a;

    .line 286
    .line 287
    const-string v9, "scenes"

    .line 288
    .line 289
    const-string v10, "TEXT"

    .line 290
    .line 291
    move-object v8, v2

    .line 292
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    const-string v7, "scenes"

    .line 296
    .line 297
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    new-instance v2, Landroidx/room/util/m$a;

    .line 301
    .line 302
    const-string v9, "adSource"

    .line 303
    .line 304
    const-string v10, "TEXT"

    .line 305
    .line 306
    move-object v8, v2

    .line 307
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    const-string v7, "adSource"

    .line 311
    .line 312
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    new-instance v2, Landroidx/room/util/m$a;

    .line 316
    .line 317
    const-string v9, "extAdSlot"

    .line 318
    .line 319
    const-string v10, "TEXT"

    .line 320
    .line 321
    move-object v8, v2

    .line 322
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    const-string v8, "extAdSlot"

    .line 326
    .line 327
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    new-instance v2, Landroidx/room/util/m$a;

    .line 331
    .line 332
    const/4 v14, 0x0

    .line 333
    const/4 v15, 0x1

    .line 334
    const-string v10, "adMaterialList"

    .line 335
    .line 336
    const-string v11, "TEXT"

    .line 337
    .line 338
    const/4 v13, 0x0

    .line 339
    move-object v9, v2

    .line 340
    invoke-direct/range {v9 .. v15}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    const-string v9, "adMaterialList"

    .line 344
    .line 345
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    new-instance v2, Landroidx/room/util/m$a;

    .line 349
    .line 350
    const/4 v15, 0x0

    .line 351
    const/16 v16, 0x1

    .line 352
    .line 353
    const-string v11, "adPlanUpdateTime"

    .line 354
    .line 355
    const-string v12, "TEXT"

    .line 356
    .line 357
    const/4 v14, 0x0

    .line 358
    move-object v10, v2

    .line 359
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    const-string v9, "adPlanUpdateTime"

    .line 363
    .line 364
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    new-instance v2, Landroidx/room/util/m$a;

    .line 368
    .line 369
    const-string v11, "sort"

    .line 370
    .line 371
    const-string v12, "INTEGER"

    .line 372
    .line 373
    move-object v10, v2

    .line 374
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 375
    .line 376
    .line 377
    const-string v9, "sort"

    .line 378
    .line 379
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    new-instance v2, Landroidx/room/util/m$a;

    .line 383
    .line 384
    const-string v11, "adShowLevel"

    .line 385
    .line 386
    const-string v12, "TEXT"

    .line 387
    .line 388
    move-object v10, v2

    .line 389
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    const-string v9, "adShowLevel"

    .line 393
    .line 394
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    new-instance v2, Landroidx/room/util/m$a;

    .line 398
    .line 399
    const-string v11, "filterClientVersion"

    .line 400
    .line 401
    const-string v12, "TEXT"

    .line 402
    .line 403
    move-object v10, v2

    .line 404
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    const-string v9, "filterClientVersion"

    .line 408
    .line 409
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    new-instance v2, Landroidx/room/util/m$a;

    .line 413
    .line 414
    const-string v11, "adPlanCreateTime"

    .line 415
    .line 416
    const-string v12, "TEXT"

    .line 417
    .line 418
    move-object v10, v2

    .line 419
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    const-string v9, "adPlanCreateTime"

    .line 423
    .line 424
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    new-instance v2, Landroidx/room/util/m$a;

    .line 428
    .line 429
    const-string v11, "appStarDesc"

    .line 430
    .line 431
    const-string v12, "TEXT"

    .line 432
    .line 433
    move-object v10, v2

    .line 434
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 435
    .line 436
    .line 437
    const-string v9, "appStarDesc"

    .line 438
    .line 439
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    new-instance v2, Landroidx/room/util/m$a;

    .line 443
    .line 444
    const-string v11, "appSizeDesc"

    .line 445
    .line 446
    const-string v12, "TEXT"

    .line 447
    .line 448
    move-object v10, v2

    .line 449
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    const-string v9, "appSizeDesc"

    .line 453
    .line 454
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    new-instance v2, Landroidx/room/util/m$a;

    .line 458
    .line 459
    const-string v11, "ctxEnableExpr"

    .line 460
    .line 461
    const-string v12, "TEXT"

    .line 462
    .line 463
    move-object v10, v2

    .line 464
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 465
    .line 466
    .line 467
    const-string v9, "ctxEnableExpr"

    .line 468
    .line 469
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    new-instance v2, Landroidx/room/util/m$a;

    .line 473
    .line 474
    const-string v11, "ctxDisableExpr"

    .line 475
    .line 476
    const-string v12, "TEXT"

    .line 477
    .line 478
    move-object v10, v2

    .line 479
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 480
    .line 481
    .line 482
    const-string v9, "ctxDisableExpr"

    .line 483
    .line 484
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    new-instance v2, Landroidx/room/util/m$a;

    .line 488
    .line 489
    const-string v11, "ctxAttributeConfig"

    .line 490
    .line 491
    const-string v12, "TEXT"

    .line 492
    .line 493
    move-object v10, v2

    .line 494
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    const-string v9, "ctxAttributeConfig"

    .line 498
    .line 499
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    new-instance v2, Landroidx/room/util/m$a;

    .line 503
    .line 504
    const-string v11, "dispatchTimeStart"

    .line 505
    .line 506
    const-string v12, "TEXT"

    .line 507
    .line 508
    move-object v10, v2

    .line 509
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 510
    .line 511
    .line 512
    const-string v9, "dispatchTimeStart"

    .line 513
    .line 514
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    new-instance v2, Landroidx/room/util/m$a;

    .line 518
    .line 519
    const-string v11, "dispatchTimeEnd"

    .line 520
    .line 521
    const-string v12, "TEXT"

    .line 522
    .line 523
    move-object v10, v2

    .line 524
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    const-string v9, "dispatchTimeEnd"

    .line 528
    .line 529
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    new-instance v2, Landroidx/room/util/m$a;

    .line 533
    .line 534
    const-string v11, "extImage"

    .line 535
    .line 536
    const-string v12, "TEXT"

    .line 537
    .line 538
    move-object v10, v2

    .line 539
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 540
    .line 541
    .line 542
    const-string v9, "extImage"

    .line 543
    .line 544
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    new-instance v2, Landroidx/room/util/m$a;

    .line 548
    .line 549
    const-string v11, "bidEcpmCent"

    .line 550
    .line 551
    const-string v12, "REAL"

    .line 552
    .line 553
    move-object v10, v2

    .line 554
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    const-string v9, "bidEcpmCent"

    .line 558
    .line 559
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    new-instance v2, Landroidx/room/util/m$a;

    .line 563
    .line 564
    const-string v11, "ecpmCent"

    .line 565
    .line 566
    const-string v12, "INTEGER"

    .line 567
    .line 568
    move-object v10, v2

    .line 569
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 570
    .line 571
    .line 572
    const-string v9, "ecpmCent"

    .line 573
    .line 574
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    new-instance v2, Landroidx/room/util/m$a;

    .line 578
    .line 579
    const-string v11, "isValid"

    .line 580
    .line 581
    const-string v12, "INTEGER"

    .line 582
    .line 583
    const/4 v13, 0x1

    .line 584
    move-object v10, v2

    .line 585
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 586
    .line 587
    .line 588
    const-string v9, "isValid"

    .line 589
    .line 590
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    new-instance v2, Landroidx/room/util/m$a;

    .line 594
    .line 595
    const-string v11, "h5LinkPreload"

    .line 596
    .line 597
    const-string v12, "INTEGER"

    .line 598
    .line 599
    move-object v10, v2

    .line 600
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 601
    .line 602
    .line 603
    const-string v9, "h5LinkPreload"

    .line 604
    .line 605
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    new-instance v2, Landroidx/room/util/m$a;

    .line 609
    .line 610
    const-string v11, "h5LinkOpenByCct"

    .line 611
    .line 612
    const-string v12, "INTEGER"

    .line 613
    .line 614
    move-object v10, v2

    .line 615
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 616
    .line 617
    .line 618
    const-string v9, "h5LinkOpenByCct"

    .line 619
    .line 620
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    new-instance v2, Landroidx/room/util/m$a;

    .line 624
    .line 625
    const-string v11, "countryCode"

    .line 626
    .line 627
    const-string v12, "TEXT"

    .line 628
    .line 629
    const/4 v13, 0x0

    .line 630
    move-object v10, v2

    .line 631
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 632
    .line 633
    .line 634
    const-string v9, "countryCode"

    .line 635
    .line 636
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    new-instance v2, Ljava/util/HashSet;

    .line 640
    .line 641
    const/4 v9, 0x0

    .line 642
    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 643
    .line 644
    .line 645
    new-instance v10, Ljava/util/HashSet;

    .line 646
    .line 647
    invoke-direct {v10, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 648
    .line 649
    .line 650
    new-instance v11, Landroidx/room/util/m;

    .line 651
    .line 652
    const-string v12, "mb_ad_db_plans"

    .line 653
    .line 654
    invoke-direct {v11, v12, v1, v2, v10}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 655
    .line 656
    .line 657
    invoke-static {v0, v12}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-virtual {v11, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    const-string v10, "\n Found:\n"

    .line 666
    .line 667
    if-nez v2, :cond_0

    .line 668
    .line 669
    new-instance v0, Landroidx/room/f0$a;

    .line 670
    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    const-string v3, "mb_ad_db_plans(com.transsion.ad.db.plan.MbAdDbPlans).\n Expected:\n"

    .line 677
    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-direct {v0, v9, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 695
    .line 696
    .line 697
    return-object v0

    .line 698
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 699
    .line 700
    const/4 v2, 0x5

    .line 701
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 702
    .line 703
    .line 704
    new-instance v2, Landroidx/room/util/m$a;

    .line 705
    .line 706
    const/16 v16, 0x0

    .line 707
    .line 708
    const/16 v17, 0x1

    .line 709
    .line 710
    const-string v12, "id"

    .line 711
    .line 712
    const-string v13, "INTEGER"

    .line 713
    .line 714
    const/4 v14, 0x1

    .line 715
    const/4 v15, 0x1

    .line 716
    move-object v11, v2

    .line 717
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 718
    .line 719
    .line 720
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    new-instance v2, Landroidx/room/util/m$a;

    .line 724
    .line 725
    const/16 v23, 0x0

    .line 726
    .line 727
    const/16 v24, 0x1

    .line 728
    .line 729
    const-string v19, "Country"

    .line 730
    .line 731
    const-string v20, "TEXT"

    .line 732
    .line 733
    const/16 v21, 0x1

    .line 734
    .line 735
    const/16 v22, 0x0

    .line 736
    .line 737
    move-object/from16 v18, v2

    .line 738
    .line 739
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 740
    .line 741
    .line 742
    const-string v11, "Country"

    .line 743
    .line 744
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    new-instance v2, Landroidx/room/util/m$a;

    .line 748
    .line 749
    const/16 v17, 0x0

    .line 750
    .line 751
    const/16 v18, 0x1

    .line 752
    .line 753
    const-string v13, "Mcc"

    .line 754
    .line 755
    const-string v14, "TEXT"

    .line 756
    .line 757
    const/16 v16, 0x0

    .line 758
    .line 759
    move-object v12, v2

    .line 760
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 761
    .line 762
    .line 763
    const-string v11, "Mcc"

    .line 764
    .line 765
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    new-instance v2, Landroidx/room/util/m$a;

    .line 769
    .line 770
    const-string v13, "Iso"

    .line 771
    .line 772
    const-string v14, "TEXT"

    .line 773
    .line 774
    move-object v12, v2

    .line 775
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 776
    .line 777
    .line 778
    const-string v11, "Iso"

    .line 779
    .line 780
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    new-instance v2, Landroidx/room/util/m$a;

    .line 784
    .line 785
    const-string v13, "CountryCode"

    .line 786
    .line 787
    const-string v14, "TEXT"

    .line 788
    .line 789
    move-object v12, v2

    .line 790
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 791
    .line 792
    .line 793
    const-string v11, "CountryCode"

    .line 794
    .line 795
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    new-instance v2, Ljava/util/HashSet;

    .line 799
    .line 800
    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 801
    .line 802
    .line 803
    new-instance v11, Ljava/util/HashSet;

    .line 804
    .line 805
    invoke-direct {v11, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 806
    .line 807
    .line 808
    new-instance v12, Landroidx/room/util/m;

    .line 809
    .line 810
    const-string v13, "local_mcc"

    .line 811
    .line 812
    invoke-direct {v12, v13, v1, v2, v11}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 813
    .line 814
    .line 815
    invoke-static {v0, v13}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    if-nez v2, :cond_1

    .line 824
    .line 825
    new-instance v0, Landroidx/room/f0$a;

    .line 826
    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .line 831
    .line 832
    const-string v3, "local_mcc(com.transsion.ad.db.mcc.LocalMcc).\n Expected:\n"

    .line 833
    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    invoke-direct {v0, v9, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 851
    .line 852
    .line 853
    return-object v0

    .line 854
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 855
    .line 856
    const/16 v2, 0xf

    .line 857
    .line 858
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 859
    .line 860
    .line 861
    new-instance v2, Landroidx/room/util/m$a;

    .line 862
    .line 863
    const/16 v16, 0x0

    .line 864
    .line 865
    const/16 v17, 0x1

    .line 866
    .line 867
    const/4 v14, 0x1

    .line 868
    const/4 v15, 0x1

    .line 869
    const-string v12, "id"

    .line 870
    .line 871
    const-string v13, "INTEGER"

    .line 872
    .line 873
    move-object v11, v2

    .line 874
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 875
    .line 876
    .line 877
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    new-instance v2, Landroidx/room/util/m$a;

    .line 881
    .line 882
    const/16 v23, 0x0

    .line 883
    .line 884
    const/16 v24, 0x1

    .line 885
    .line 886
    const/16 v21, 0x1

    .line 887
    .line 888
    const/16 v22, 0x0

    .line 889
    .line 890
    const-string v19, "nonId"

    .line 891
    .line 892
    const-string v20, "TEXT"

    .line 893
    .line 894
    move-object/from16 v18, v2

    .line 895
    .line 896
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 897
    .line 898
    .line 899
    const-string v11, "nonId"

    .line 900
    .line 901
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    new-instance v2, Landroidx/room/util/m$a;

    .line 905
    .line 906
    const/16 v17, 0x0

    .line 907
    .line 908
    const/16 v18, 0x1

    .line 909
    .line 910
    const/16 v16, 0x0

    .line 911
    .line 912
    const-string v13, "adSource"

    .line 913
    .line 914
    const-string v14, "TEXT"

    .line 915
    .line 916
    move-object v12, v2

    .line 917
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 918
    .line 919
    .line 920
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    new-instance v2, Landroidx/room/util/m$a;

    .line 924
    .line 925
    const/16 v24, 0x0

    .line 926
    .line 927
    const/16 v25, 0x1

    .line 928
    .line 929
    const/16 v22, 0x1

    .line 930
    .line 931
    const/16 v23, 0x0

    .line 932
    .line 933
    const-string v20, "extAdSlot"

    .line 934
    .line 935
    const-string v21, "TEXT"

    .line 936
    .line 937
    move-object/from16 v19, v2

    .line 938
    .line 939
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 940
    .line 941
    .line 942
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    new-instance v2, Landroidx/room/util/m$a;

    .line 946
    .line 947
    const/16 v16, 0x0

    .line 948
    .line 949
    const/16 v17, 0x1

    .line 950
    .line 951
    const/4 v14, 0x1

    .line 952
    const/4 v15, 0x0

    .line 953
    const-string v12, "rank"

    .line 954
    .line 955
    const-string v13, "INTEGER"

    .line 956
    .line 957
    move-object v11, v2

    .line 958
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 959
    .line 960
    .line 961
    const-string v7, "rank"

    .line 962
    .line 963
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    new-instance v2, Landroidx/room/util/m$a;

    .line 967
    .line 968
    const/4 v14, 0x0

    .line 969
    const-string v12, "psPlanId"

    .line 970
    .line 971
    const-string v13, "TEXT"

    .line 972
    .line 973
    move-object v11, v2

    .line 974
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 975
    .line 976
    .line 977
    const-string v7, "psPlanId"

    .line 978
    .line 979
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    new-instance v2, Landroidx/room/util/m$a;

    .line 983
    .line 984
    const-string v12, "psLinkAdInfoStr"

    .line 985
    .line 986
    const-string v13, "TEXT"

    .line 987
    .line 988
    move-object v11, v2

    .line 989
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 990
    .line 991
    .line 992
    const-string v7, "psLinkAdInfoStr"

    .line 993
    .line 994
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    new-instance v2, Landroidx/room/util/m$a;

    .line 998
    .line 999
    const-string v12, "psInfoJson"

    .line 1000
    .line 1001
    const-string v13, "TEXT"

    .line 1002
    .line 1003
    move-object v11, v2

    .line 1004
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1005
    .line 1006
    .line 1007
    const-string v7, "psInfoJson"

    .line 1008
    .line 1009
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    new-instance v2, Landroidx/room/util/m$a;

    .line 1013
    .line 1014
    const-string v12, "updateTimestamp"

    .line 1015
    .line 1016
    const-string v13, "INTEGER"

    .line 1017
    .line 1018
    move-object v11, v2

    .line 1019
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1020
    .line 1021
    .line 1022
    const-string v7, "updateTimestamp"

    .line 1023
    .line 1024
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    new-instance v2, Landroidx/room/util/m$a;

    .line 1028
    .line 1029
    const-string v12, "showMax"

    .line 1030
    .line 1031
    const-string v13, "INTEGER"

    .line 1032
    .line 1033
    move-object v11, v2

    .line 1034
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1035
    .line 1036
    .line 1037
    const-string v8, "showMax"

    .line 1038
    .line 1039
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    new-instance v2, Landroidx/room/util/m$a;

    .line 1043
    .line 1044
    const-string v12, "clickMax"

    .line 1045
    .line 1046
    const-string v13, "INTEGER"

    .line 1047
    .line 1048
    move-object v11, v2

    .line 1049
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1050
    .line 1051
    .line 1052
    const-string v8, "clickMax"

    .line 1053
    .line 1054
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    new-instance v2, Landroidx/room/util/m$a;

    .line 1058
    .line 1059
    const-string v12, "showHours"

    .line 1060
    .line 1061
    const-string v13, "TEXT"

    .line 1062
    .line 1063
    move-object v11, v2

    .line 1064
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1065
    .line 1066
    .line 1067
    const-string v8, "showHours"

    .line 1068
    .line 1069
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    new-instance v2, Landroidx/room/util/m$a;

    .line 1073
    .line 1074
    const/4 v14, 0x1

    .line 1075
    const-string v12, "showedTimes"

    .line 1076
    .line 1077
    const-string v13, "INTEGER"

    .line 1078
    .line 1079
    move-object v11, v2

    .line 1080
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1081
    .line 1082
    .line 1083
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    new-instance v2, Landroidx/room/util/m$a;

    .line 1087
    .line 1088
    const/16 v23, 0x0

    .line 1089
    .line 1090
    const/16 v24, 0x1

    .line 1091
    .line 1092
    const/16 v21, 0x1

    .line 1093
    .line 1094
    const/16 v22, 0x0

    .line 1095
    .line 1096
    const-string v19, "clickedTimes"

    .line 1097
    .line 1098
    const-string v20, "INTEGER"

    .line 1099
    .line 1100
    move-object/from16 v18, v2

    .line 1101
    .line 1102
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1103
    .line 1104
    .line 1105
    const-string v5, "clickedTimes"

    .line 1106
    .line 1107
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    new-instance v2, Landroidx/room/util/m$a;

    .line 1111
    .line 1112
    const/4 v14, 0x0

    .line 1113
    const-string v12, "showDate"

    .line 1114
    .line 1115
    const-string v13, "TEXT"

    .line 1116
    .line 1117
    move-object v11, v2

    .line 1118
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1119
    .line 1120
    .line 1121
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    new-instance v2, Ljava/util/HashSet;

    .line 1125
    .line 1126
    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1127
    .line 1128
    .line 1129
    new-instance v5, Ljava/util/HashSet;

    .line 1130
    .line 1131
    invoke-direct {v5, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1132
    .line 1133
    .line 1134
    new-instance v6, Landroidx/room/util/m;

    .line 1135
    .line 1136
    const-string v8, "ps_link_ad"

    .line 1137
    .line 1138
    invoke-direct {v6, v8, v1, v2, v5}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-static {v0, v8}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    invoke-virtual {v6, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v2

    .line 1149
    if-nez v2, :cond_2

    .line 1150
    .line 1151
    new-instance v0, Landroidx/room/f0$a;

    .line 1152
    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    .line 1157
    .line 1158
    const-string v3, "ps_link_ad(com.transsion.ad.db.pslink.PsLinkAdPlan).\n Expected:\n"

    .line 1159
    .line 1160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    invoke-direct {v0, v9, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    return-object v0

    .line 1180
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 1181
    .line 1182
    const/4 v2, 0x6

    .line 1183
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1184
    .line 1185
    .line 1186
    new-instance v2, Landroidx/room/util/m$a;

    .line 1187
    .line 1188
    const/16 v16, 0x0

    .line 1189
    .line 1190
    const/16 v17, 0x1

    .line 1191
    .line 1192
    const-string v12, "id"

    .line 1193
    .line 1194
    const-string v13, "INTEGER"

    .line 1195
    .line 1196
    const/4 v14, 0x1

    .line 1197
    const/4 v15, 0x1

    .line 1198
    move-object v11, v2

    .line 1199
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1200
    .line 1201
    .line 1202
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    new-instance v2, Landroidx/room/util/m$a;

    .line 1206
    .line 1207
    const/16 v23, 0x0

    .line 1208
    .line 1209
    const/16 v24, 0x1

    .line 1210
    .line 1211
    const-string v19, "psId"

    .line 1212
    .line 1213
    const-string v20, "TEXT"

    .line 1214
    .line 1215
    const/16 v21, 0x1

    .line 1216
    .line 1217
    const/16 v22, 0x0

    .line 1218
    .line 1219
    move-object/from16 v18, v2

    .line 1220
    .line 1221
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1222
    .line 1223
    .line 1224
    const-string v3, "psId"

    .line 1225
    .line 1226
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    new-instance v2, Landroidx/room/util/m$a;

    .line 1230
    .line 1231
    const-string v12, "failCount"

    .line 1232
    .line 1233
    const-string v13, "INTEGER"

    .line 1234
    .line 1235
    const/4 v15, 0x0

    .line 1236
    move-object v11, v2

    .line 1237
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1238
    .line 1239
    .line 1240
    const-string v3, "failCount"

    .line 1241
    .line 1242
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    new-instance v2, Landroidx/room/util/m$a;

    .line 1246
    .line 1247
    const-string v12, "reportUrl"

    .line 1248
    .line 1249
    const-string v13, "TEXT"

    .line 1250
    .line 1251
    move-object v11, v2

    .line 1252
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1253
    .line 1254
    .line 1255
    const-string v3, "reportUrl"

    .line 1256
    .line 1257
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    new-instance v2, Landroidx/room/util/m$a;

    .line 1261
    .line 1262
    const-string v12, "type"

    .line 1263
    .line 1264
    const-string v13, "TEXT"

    .line 1265
    .line 1266
    move-object v11, v2

    .line 1267
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1268
    .line 1269
    .line 1270
    const-string v3, "type"

    .line 1271
    .line 1272
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    new-instance v2, Landroidx/room/util/m$a;

    .line 1276
    .line 1277
    const-string v12, "updateTimestamp"

    .line 1278
    .line 1279
    const-string v13, "INTEGER"

    .line 1280
    .line 1281
    move-object v11, v2

    .line 1282
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    new-instance v2, Ljava/util/HashSet;

    .line 1289
    .line 1290
    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1291
    .line 1292
    .line 1293
    new-instance v3, Ljava/util/HashSet;

    .line 1294
    .line 1295
    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1296
    .line 1297
    .line 1298
    new-instance v5, Landroidx/room/util/m;

    .line 1299
    .line 1300
    const-string v6, "attribution_points"

    .line 1301
    .line 1302
    invoke-direct {v5, v6, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-static {v0, v6}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    invoke-virtual {v5, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v2

    .line 1313
    if-nez v2, :cond_3

    .line 1314
    .line 1315
    new-instance v0, Landroidx/room/f0$a;

    .line 1316
    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .line 1321
    .line 1322
    const-string v3, "attribution_points(com.transsion.ad.db.pslink.AttributionPoint).\n Expected:\n"

    .line 1323
    .line 1324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    invoke-direct {v0, v9, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    return-object v0

    .line 1344
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 1345
    .line 1346
    const/16 v2, 0x9

    .line 1347
    .line 1348
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1349
    .line 1350
    .line 1351
    new-instance v2, Landroidx/room/util/m$a;

    .line 1352
    .line 1353
    const/16 v16, 0x0

    .line 1354
    .line 1355
    const/16 v17, 0x1

    .line 1356
    .line 1357
    const-string v12, "packageName"

    .line 1358
    .line 1359
    const-string v13, "TEXT"

    .line 1360
    .line 1361
    const/4 v14, 0x1

    .line 1362
    const/4 v15, 0x1

    .line 1363
    move-object v11, v2

    .line 1364
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1365
    .line 1366
    .line 1367
    const-string v3, "packageName"

    .line 1368
    .line 1369
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    new-instance v2, Landroidx/room/util/m$a;

    .line 1373
    .line 1374
    const-string v12, "source"

    .line 1375
    .line 1376
    const-string v13, "TEXT"

    .line 1377
    .line 1378
    const/4 v14, 0x0

    .line 1379
    const/4 v15, 0x0

    .line 1380
    move-object v11, v2

    .line 1381
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1382
    .line 1383
    .line 1384
    const-string v3, "source"

    .line 1385
    .line 1386
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    new-instance v2, Landroidx/room/util/m$a;

    .line 1390
    .line 1391
    const-string v12, "appName"

    .line 1392
    .line 1393
    const-string v13, "TEXT"

    .line 1394
    .line 1395
    move-object v11, v2

    .line 1396
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1397
    .line 1398
    .line 1399
    const-string v3, "appName"

    .line 1400
    .line 1401
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    new-instance v2, Landroidx/room/util/m$a;

    .line 1405
    .line 1406
    const-string v12, "versionName"

    .line 1407
    .line 1408
    const-string v13, "TEXT"

    .line 1409
    .line 1410
    move-object v11, v2

    .line 1411
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1412
    .line 1413
    .line 1414
    const-string v3, "versionName"

    .line 1415
    .line 1416
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    new-instance v2, Landroidx/room/util/m$a;

    .line 1420
    .line 1421
    const-string v12, "versionCode"

    .line 1422
    .line 1423
    const-string v13, "TEXT"

    .line 1424
    .line 1425
    move-object v11, v2

    .line 1426
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1427
    .line 1428
    .line 1429
    const-string v3, "versionCode"

    .line 1430
    .line 1431
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    new-instance v2, Landroidx/room/util/m$a;

    .line 1435
    .line 1436
    const-string v12, "horizontalImageUrl"

    .line 1437
    .line 1438
    const-string v13, "TEXT"

    .line 1439
    .line 1440
    move-object v11, v2

    .line 1441
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1442
    .line 1443
    .line 1444
    const-string v3, "horizontalImageUrl"

    .line 1445
    .line 1446
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    new-instance v2, Landroidx/room/util/m$a;

    .line 1450
    .line 1451
    const-string v12, "eCPM"

    .line 1452
    .line 1453
    const-string v13, "REAL"

    .line 1454
    .line 1455
    move-object v11, v2

    .line 1456
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1457
    .line 1458
    .line 1459
    const-string v3, "eCPM"

    .line 1460
    .line 1461
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    new-instance v2, Landroidx/room/util/m$a;

    .line 1465
    .line 1466
    const-string v12, "installTime"

    .line 1467
    .line 1468
    const-string v13, "INTEGER"

    .line 1469
    .line 1470
    move-object v11, v2

    .line 1471
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1472
    .line 1473
    .line 1474
    const-string v3, "installTime"

    .line 1475
    .line 1476
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    new-instance v2, Landroidx/room/util/m$a;

    .line 1480
    .line 1481
    const-string v12, "lastOpenTime"

    .line 1482
    .line 1483
    const-string v13, "INTEGER"

    .line 1484
    .line 1485
    move-object v11, v2

    .line 1486
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1487
    .line 1488
    .line 1489
    const-string v3, "lastOpenTime"

    .line 1490
    .line 1491
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    new-instance v2, Ljava/util/HashSet;

    .line 1495
    .line 1496
    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1497
    .line 1498
    .line 1499
    new-instance v3, Ljava/util/HashSet;

    .line 1500
    .line 1501
    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1502
    .line 1503
    .line 1504
    new-instance v5, Landroidx/room/util/m;

    .line 1505
    .line 1506
    const-string v6, "app_installed"

    .line 1507
    .line 1508
    invoke-direct {v5, v6, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-static {v0, v6}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v1

    .line 1515
    invoke-virtual {v5, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v2

    .line 1519
    if-nez v2, :cond_4

    .line 1520
    .line 1521
    new-instance v0, Landroidx/room/f0$a;

    .line 1522
    .line 1523
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1526
    .line 1527
    .line 1528
    const-string v3, "app_installed(com.transsion.ad.db.pslink.AppInstalledBean).\n Expected:\n"

    .line 1529
    .line 1530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v1

    .line 1546
    invoke-direct {v0, v9, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    return-object v0

    .line 1550
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 1551
    .line 1552
    const/4 v2, 0x4

    .line 1553
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1554
    .line 1555
    .line 1556
    new-instance v2, Landroidx/room/util/m$a;

    .line 1557
    .line 1558
    const/16 v16, 0x0

    .line 1559
    .line 1560
    const/16 v17, 0x1

    .line 1561
    .line 1562
    const-string v12, "sceneId"

    .line 1563
    .line 1564
    const-string v13, "TEXT"

    .line 1565
    .line 1566
    const/4 v14, 0x1

    .line 1567
    const/4 v15, 0x1

    .line 1568
    move-object v11, v2

    .line 1569
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1570
    .line 1571
    .line 1572
    const-string v3, "sceneId"

    .line 1573
    .line 1574
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    new-instance v2, Landroidx/room/util/m$a;

    .line 1578
    .line 1579
    const-string v12, "lastDisplayAdDate"

    .line 1580
    .line 1581
    const-string v13, "TEXT"

    .line 1582
    .line 1583
    const/4 v15, 0x0

    .line 1584
    move-object v11, v2

    .line 1585
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1586
    .line 1587
    .line 1588
    const-string v3, "lastDisplayAdDate"

    .line 1589
    .line 1590
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    new-instance v2, Landroidx/room/util/m$a;

    .line 1594
    .line 1595
    const-string v12, "lastDisplayAdTimestamp"

    .line 1596
    .line 1597
    const-string v13, "INTEGER"

    .line 1598
    .line 1599
    move-object v11, v2

    .line 1600
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1601
    .line 1602
    .line 1603
    const-string v3, "lastDisplayAdTimestamp"

    .line 1604
    .line 1605
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    new-instance v2, Landroidx/room/util/m$a;

    .line 1609
    .line 1610
    const-string v12, "displayTimes"

    .line 1611
    .line 1612
    const-string v13, "INTEGER"

    .line 1613
    .line 1614
    move-object v11, v2

    .line 1615
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1616
    .line 1617
    .line 1618
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    new-instance v2, Ljava/util/HashSet;

    .line 1622
    .line 1623
    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1624
    .line 1625
    .line 1626
    new-instance v3, Ljava/util/HashSet;

    .line 1627
    .line 1628
    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1629
    .line 1630
    .line 1631
    new-instance v4, Landroidx/room/util/m;

    .line 1632
    .line 1633
    const-string v5, "ad_scene_limit_table"

    .line 1634
    .line 1635
    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1636
    .line 1637
    .line 1638
    invoke-static {v0, v5}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    invoke-virtual {v4, v0}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v1

    .line 1646
    if-nez v1, :cond_5

    .line 1647
    .line 1648
    new-instance v1, Landroidx/room/f0$a;

    .line 1649
    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1653
    .line 1654
    .line 1655
    const-string v3, "ad_scene_limit_table(com.transsion.ad.db.scene.AdSceneLimit).\n Expected:\n"

    .line 1656
    .line 1657
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    invoke-direct {v1, v9, v0}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    return-object v1

    .line 1677
    :cond_5
    new-instance v0, Landroidx/room/f0$a;

    .line 1678
    .line 1679
    const/4 v1, 0x1

    .line 1680
    const/4 v2, 0x0

    .line 1681
    invoke-direct {v0, v1, v2}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 1682
    .line 1683
    .line 1684
    return-object v0
.end method
