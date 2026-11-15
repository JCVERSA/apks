.class Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;
.super Landroidx/room/h0$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->s(Landroidx/room/c;)Lz3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/h0$b;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `cloudList_room` (`codeSeatId` TEXT NOT NULL, `code_seat_bean` TEXT, PRIMARY KEY(`codeSeatId`))"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `adList_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_creative_id` TEXT, `codeSeatId` TEXT, `file_path` TEXT, `price` REAL, `is_offline_ad` INTEGER, `ad_request_ver` INTEGER, `ad_bean` TEXT)"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS `attr_click_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ac_type` INTEGER NOT NULL, `pkg` TEXT NOT NULL, `dl_type` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `click_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `attr_impression_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `pkg` TEXT NOT NULL, `imp_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS `retry_tracking_table_room` (`uuid` TEXT NOT NULL, `create_time` INTEGER, `retry_times` INTEGER, `tracking_data` TEXT, `md5` TEXT, PRIMARY KEY(`uuid`))"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE TABLE IF NOT EXISTS `default_ad_room` (`ad_creative_id` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `ad_type` INTEGER NOT NULL, `price` REAL, `ad_request_ver` INTEGER NOT NULL, `displayed_times` INTEGER NOT NULL, `displayed_date` TEXT, `start_date` TEXT, `end_date` TEXT, `display_max_times` INTEGER NOT NULL, `file_path` TEXT, `default_country_white` TEXT, `default_country_black` TEXT, `default_brand_white` TEXT, `default_brand_black` TEXT, `ad_bean` TEXT, PRIMARY KEY(`ad_creative_id`, `codeSeatId`))"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'45caaee56032168186f6d5e50f533e4c\')"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public b(Lz3/d;)V
    .locals 2

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `cloudList_room`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `adList_room`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `attr_click_room`"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `attr_impression_room`"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DROP TABLE IF EXISTS `retry_tracking_table_room`"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE IF EXISTS `default_ad_room`"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->D0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/room/RoomDatabase$b;

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->d(Lz3/d;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public c(Lz3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->F0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/room/RoomDatabase$b;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->b(Lz3/d;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public d(Lz3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->E0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;Lz3/d;)Lz3/d;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->G0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;Lz3/d;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->H0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/room/RoomDatabase$b;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->f(Lz3/d;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public e(Lz3/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Lz3/d;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/b;->b(Lz3/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Lz3/d;)Landroidx/room/h0$c;
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Landroidx/room/util/m$a;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    const-string v4, "codeSeatId"

    .line 14
    .line 15
    const-string v5, "TEXT"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x1

    .line 19
    move-object v3, v2

    .line 20
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string v3, "codeSeatId"

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v2, Landroidx/room/util/m$a;

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x1

    .line 32
    const-string v5, "code_seat_bean"

    .line 33
    .line 34
    const-string v6, "TEXT"

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v4, v2

    .line 39
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v4, "code_seat_bean"

    .line 43
    .line 44
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/util/HashSet;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Landroidx/room/util/m;

    .line 59
    .line 60
    const-string v7, "cloudList_room"

    .line 61
    .line 62
    invoke-direct {v6, v7, v1, v2, v5}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v7}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v6, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-string v5, "\n Found:\n"

    .line 74
    .line 75
    if-nez v2, :cond_0

    .line 76
    .line 77
    new-instance v0, Landroidx/room/h0$c;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "cloudList_room(com.cloud.hisavana.sdk.database.entities.CloudConfigEntity).\n Expected:\n"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v4, v1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 107
    .line 108
    const/16 v2, 0x8

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Landroidx/room/util/m$a;

    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x1

    .line 117
    const-string v7, "_id"

    .line 118
    .line 119
    const-string v8, "INTEGER"

    .line 120
    .line 121
    const/4 v9, 0x1

    .line 122
    const/4 v10, 0x1

    .line 123
    move-object v6, v2

    .line 124
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string v6, "_id"

    .line 128
    .line 129
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v2, Landroidx/room/util/m$a;

    .line 133
    .line 134
    const/4 v12, 0x0

    .line 135
    const/4 v13, 0x1

    .line 136
    const-string v8, "ad_creative_id"

    .line 137
    .line 138
    const-string v9, "TEXT"

    .line 139
    .line 140
    const/4 v10, 0x0

    .line 141
    const/4 v11, 0x0

    .line 142
    move-object v7, v2

    .line 143
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const-string v7, "ad_creative_id"

    .line 147
    .line 148
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    new-instance v2, Landroidx/room/util/m$a;

    .line 152
    .line 153
    const/4 v13, 0x0

    .line 154
    const/4 v14, 0x1

    .line 155
    const-string v9, "codeSeatId"

    .line 156
    .line 157
    const-string v10, "TEXT"

    .line 158
    .line 159
    const/4 v12, 0x0

    .line 160
    move-object v8, v2

    .line 161
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    new-instance v2, Landroidx/room/util/m$a;

    .line 168
    .line 169
    const/16 v20, 0x0

    .line 170
    .line 171
    const/16 v21, 0x1

    .line 172
    .line 173
    const-string v16, "file_path"

    .line 174
    .line 175
    const-string v17, "TEXT"

    .line 176
    .line 177
    const/16 v18, 0x0

    .line 178
    .line 179
    const/16 v19, 0x0

    .line 180
    .line 181
    move-object v15, v2

    .line 182
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    const-string v8, "file_path"

    .line 186
    .line 187
    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    new-instance v2, Landroidx/room/util/m$a;

    .line 191
    .line 192
    const/4 v14, 0x0

    .line 193
    const/4 v15, 0x1

    .line 194
    const-string v10, "price"

    .line 195
    .line 196
    const-string v11, "REAL"

    .line 197
    .line 198
    const/4 v13, 0x0

    .line 199
    move-object v9, v2

    .line 200
    invoke-direct/range {v9 .. v15}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    const-string v9, "price"

    .line 204
    .line 205
    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    new-instance v2, Landroidx/room/util/m$a;

    .line 209
    .line 210
    const/4 v15, 0x0

    .line 211
    const/16 v16, 0x1

    .line 212
    .line 213
    const-string v11, "is_offline_ad"

    .line 214
    .line 215
    const-string v12, "INTEGER"

    .line 216
    .line 217
    const/4 v14, 0x0

    .line 218
    move-object v10, v2

    .line 219
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    const-string v10, "is_offline_ad"

    .line 223
    .line 224
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    new-instance v2, Landroidx/room/util/m$a;

    .line 228
    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    const/16 v17, 0x1

    .line 232
    .line 233
    const-string v12, "ad_request_ver"

    .line 234
    .line 235
    const-string v13, "INTEGER"

    .line 236
    .line 237
    const/4 v15, 0x0

    .line 238
    move-object v11, v2

    .line 239
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    const-string v10, "ad_request_ver"

    .line 243
    .line 244
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    new-instance v2, Landroidx/room/util/m$a;

    .line 248
    .line 249
    const-string v12, "ad_bean"

    .line 250
    .line 251
    const-string v13, "TEXT"

    .line 252
    .line 253
    move-object v11, v2

    .line 254
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    const-string v11, "ad_bean"

    .line 258
    .line 259
    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    new-instance v2, Ljava/util/HashSet;

    .line 263
    .line 264
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 265
    .line 266
    .line 267
    new-instance v12, Ljava/util/HashSet;

    .line 268
    .line 269
    invoke-direct {v12, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 270
    .line 271
    .line 272
    new-instance v13, Landroidx/room/util/m;

    .line 273
    .line 274
    const-string v14, "adList_room"

    .line 275
    .line 276
    invoke-direct {v13, v14, v1, v2, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v14}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v13, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-nez v2, :cond_1

    .line 288
    .line 289
    new-instance v0, Landroidx/room/h0$c;

    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v3, "adList_room(com.cloud.hisavana.sdk.database.entities.AdListEntity).\n Expected:\n"

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {v0, v4, v1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return-object v0

    .line 318
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 319
    .line 320
    const/4 v2, 0x7

    .line 321
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 322
    .line 323
    .line 324
    new-instance v2, Landroidx/room/util/m$a;

    .line 325
    .line 326
    const/16 v17, 0x0

    .line 327
    .line 328
    const/16 v18, 0x1

    .line 329
    .line 330
    const-string v13, "_id"

    .line 331
    .line 332
    const-string v14, "INTEGER"

    .line 333
    .line 334
    const/4 v15, 0x1

    .line 335
    const/16 v16, 0x1

    .line 336
    .line 337
    move-object v12, v2

    .line 338
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    new-instance v2, Landroidx/room/util/m$a;

    .line 345
    .line 346
    const/16 v24, 0x0

    .line 347
    .line 348
    const/16 v25, 0x1

    .line 349
    .line 350
    const-string v20, "ac_type"

    .line 351
    .line 352
    const-string v21, "INTEGER"

    .line 353
    .line 354
    const/16 v22, 0x1

    .line 355
    .line 356
    const/16 v23, 0x0

    .line 357
    .line 358
    move-object/from16 v19, v2

    .line 359
    .line 360
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    const-string v12, "ac_type"

    .line 364
    .line 365
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    new-instance v2, Landroidx/room/util/m$a;

    .line 369
    .line 370
    const/16 v18, 0x0

    .line 371
    .line 372
    const/16 v19, 0x1

    .line 373
    .line 374
    const-string v14, "pkg"

    .line 375
    .line 376
    const-string v15, "TEXT"

    .line 377
    .line 378
    const/16 v17, 0x0

    .line 379
    .line 380
    move-object v13, v2

    .line 381
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 382
    .line 383
    .line 384
    const-string v12, "pkg"

    .line 385
    .line 386
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    new-instance v2, Landroidx/room/util/m$a;

    .line 390
    .line 391
    const-string v14, "dl_type"

    .line 392
    .line 393
    const-string v15, "TEXT"

    .line 394
    .line 395
    move-object v13, v2

    .line 396
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 397
    .line 398
    .line 399
    const-string v13, "dl_type"

    .line 400
    .line 401
    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    new-instance v2, Landroidx/room/util/m$a;

    .line 405
    .line 406
    const/16 v19, 0x0

    .line 407
    .line 408
    const/16 v20, 0x1

    .line 409
    .line 410
    const-string v15, "codeSeatId"

    .line 411
    .line 412
    const-string v16, "TEXT"

    .line 413
    .line 414
    const/16 v17, 0x1

    .line 415
    .line 416
    const/16 v18, 0x0

    .line 417
    .line 418
    move-object v14, v2

    .line 419
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    new-instance v2, Landroidx/room/util/m$a;

    .line 426
    .line 427
    const/16 v26, 0x0

    .line 428
    .line 429
    const/16 v27, 0x1

    .line 430
    .line 431
    const-string v22, "click_ts"

    .line 432
    .line 433
    const-string v23, "INTEGER"

    .line 434
    .line 435
    const/16 v24, 0x1

    .line 436
    .line 437
    const/16 v25, 0x0

    .line 438
    .line 439
    move-object/from16 v21, v2

    .line 440
    .line 441
    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    const-string v13, "click_ts"

    .line 445
    .line 446
    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    new-instance v2, Landroidx/room/util/m$a;

    .line 450
    .line 451
    const-string v15, "ad_creative_id"

    .line 452
    .line 453
    const-string v16, "TEXT"

    .line 454
    .line 455
    move-object v14, v2

    .line 456
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    new-instance v2, Ljava/util/HashSet;

    .line 463
    .line 464
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 465
    .line 466
    .line 467
    new-instance v13, Ljava/util/HashSet;

    .line 468
    .line 469
    invoke-direct {v13, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 470
    .line 471
    .line 472
    new-instance v14, Landroidx/room/util/m;

    .line 473
    .line 474
    const-string v15, "attr_click_room"

    .line 475
    .line 476
    invoke-direct {v14, v15, v1, v2, v13}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v0, v15}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v14, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    if-nez v2, :cond_2

    .line 488
    .line 489
    new-instance v0, Landroidx/room/h0$c;

    .line 490
    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    const-string v3, "attr_click_room(com.cloud.hisavana.sdk.database.entities.AttrClickEntity).\n Expected:\n"

    .line 497
    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-direct {v0, v4, v1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 515
    .line 516
    .line 517
    return-object v0

    .line 518
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 519
    .line 520
    const/4 v2, 0x4

    .line 521
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 522
    .line 523
    .line 524
    new-instance v2, Landroidx/room/util/m$a;

    .line 525
    .line 526
    const/16 v18, 0x0

    .line 527
    .line 528
    const/16 v19, 0x1

    .line 529
    .line 530
    const-string v14, "_id"

    .line 531
    .line 532
    const-string v15, "INTEGER"

    .line 533
    .line 534
    const/16 v16, 0x1

    .line 535
    .line 536
    const/16 v17, 0x1

    .line 537
    .line 538
    move-object v13, v2

    .line 539
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    new-instance v2, Landroidx/room/util/m$a;

    .line 546
    .line 547
    const/16 v25, 0x0

    .line 548
    .line 549
    const/16 v26, 0x1

    .line 550
    .line 551
    const-string v21, "pkg"

    .line 552
    .line 553
    const-string v22, "TEXT"

    .line 554
    .line 555
    const/16 v23, 0x1

    .line 556
    .line 557
    const/16 v24, 0x0

    .line 558
    .line 559
    move-object/from16 v20, v2

    .line 560
    .line 561
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    new-instance v2, Landroidx/room/util/m$a;

    .line 568
    .line 569
    const-string v14, "imp_ts"

    .line 570
    .line 571
    const-string v15, "INTEGER"

    .line 572
    .line 573
    const/16 v17, 0x0

    .line 574
    .line 575
    move-object v13, v2

    .line 576
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 577
    .line 578
    .line 579
    const-string v6, "imp_ts"

    .line 580
    .line 581
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    new-instance v2, Landroidx/room/util/m$a;

    .line 585
    .line 586
    const/16 v17, 0x0

    .line 587
    .line 588
    const/16 v18, 0x1

    .line 589
    .line 590
    const-string v13, "ad_creative_id"

    .line 591
    .line 592
    const-string v14, "TEXT"

    .line 593
    .line 594
    const/4 v15, 0x1

    .line 595
    const/16 v16, 0x0

    .line 596
    .line 597
    move-object v12, v2

    .line 598
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    new-instance v2, Ljava/util/HashSet;

    .line 605
    .line 606
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 607
    .line 608
    .line 609
    new-instance v6, Ljava/util/HashSet;

    .line 610
    .line 611
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 612
    .line 613
    .line 614
    new-instance v12, Landroidx/room/util/m;

    .line 615
    .line 616
    const-string v13, "attr_impression_room"

    .line 617
    .line 618
    invoke-direct {v12, v13, v1, v2, v6}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v0, v13}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-nez v2, :cond_3

    .line 630
    .line 631
    new-instance v0, Landroidx/room/h0$c;

    .line 632
    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .line 637
    .line 638
    const-string v3, "attr_impression_room(com.cloud.hisavana.sdk.database.entities.AttrImpressionEntity).\n Expected:\n"

    .line 639
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-direct {v0, v4, v1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 657
    .line 658
    .line 659
    return-object v0

    .line 660
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 661
    .line 662
    const/4 v2, 0x5

    .line 663
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 664
    .line 665
    .line 666
    new-instance v2, Landroidx/room/util/m$a;

    .line 667
    .line 668
    const/16 v17, 0x0

    .line 669
    .line 670
    const/16 v18, 0x1

    .line 671
    .line 672
    const-string v13, "uuid"

    .line 673
    .line 674
    const-string v14, "TEXT"

    .line 675
    .line 676
    const/4 v15, 0x1

    .line 677
    const/16 v16, 0x1

    .line 678
    .line 679
    move-object v12, v2

    .line 680
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 681
    .line 682
    .line 683
    const-string v6, "uuid"

    .line 684
    .line 685
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    new-instance v2, Landroidx/room/util/m$a;

    .line 689
    .line 690
    const-string v13, "create_time"

    .line 691
    .line 692
    const-string v14, "INTEGER"

    .line 693
    .line 694
    const/4 v15, 0x0

    .line 695
    const/16 v16, 0x0

    .line 696
    .line 697
    move-object v12, v2

    .line 698
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 699
    .line 700
    .line 701
    const-string v6, "create_time"

    .line 702
    .line 703
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    new-instance v2, Landroidx/room/util/m$a;

    .line 707
    .line 708
    const-string v13, "retry_times"

    .line 709
    .line 710
    const-string v14, "INTEGER"

    .line 711
    .line 712
    move-object v12, v2

    .line 713
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 714
    .line 715
    .line 716
    const-string v6, "retry_times"

    .line 717
    .line 718
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    new-instance v2, Landroidx/room/util/m$a;

    .line 722
    .line 723
    const-string v13, "tracking_data"

    .line 724
    .line 725
    const-string v14, "TEXT"

    .line 726
    .line 727
    move-object v12, v2

    .line 728
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 729
    .line 730
    .line 731
    const-string v6, "tracking_data"

    .line 732
    .line 733
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    new-instance v2, Landroidx/room/util/m$a;

    .line 737
    .line 738
    const-string v13, "md5"

    .line 739
    .line 740
    const-string v14, "TEXT"

    .line 741
    .line 742
    move-object v12, v2

    .line 743
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 744
    .line 745
    .line 746
    const-string v6, "md5"

    .line 747
    .line 748
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    new-instance v2, Ljava/util/HashSet;

    .line 752
    .line 753
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 754
    .line 755
    .line 756
    new-instance v6, Ljava/util/HashSet;

    .line 757
    .line 758
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 759
    .line 760
    .line 761
    new-instance v12, Landroidx/room/util/m;

    .line 762
    .line 763
    const-string v13, "retry_tracking_table_room"

    .line 764
    .line 765
    invoke-direct {v12, v13, v1, v2, v6}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 766
    .line 767
    .line 768
    invoke-static {v0, v13}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    if-nez v2, :cond_4

    .line 777
    .line 778
    new-instance v0, Landroidx/room/h0$c;

    .line 779
    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .line 784
    .line 785
    const-string v3, "retry_tracking_table_room(com.cloud.hisavana.sdk.database.entities.RetryTrackingEntity).\n Expected:\n"

    .line 786
    .line 787
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    invoke-direct {v0, v4, v1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 804
    .line 805
    .line 806
    return-object v0

    .line 807
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 808
    .line 809
    const/16 v2, 0x10

    .line 810
    .line 811
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 812
    .line 813
    .line 814
    new-instance v2, Landroidx/room/util/m$a;

    .line 815
    .line 816
    const/16 v17, 0x0

    .line 817
    .line 818
    const/16 v18, 0x1

    .line 819
    .line 820
    const/4 v15, 0x1

    .line 821
    const/16 v16, 0x1

    .line 822
    .line 823
    const-string v13, "ad_creative_id"

    .line 824
    .line 825
    const-string v14, "TEXT"

    .line 826
    .line 827
    move-object v12, v2

    .line 828
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    new-instance v2, Landroidx/room/util/m$a;

    .line 835
    .line 836
    const/16 v24, 0x0

    .line 837
    .line 838
    const/16 v25, 0x1

    .line 839
    .line 840
    const/16 v22, 0x1

    .line 841
    .line 842
    const/16 v23, 0x2

    .line 843
    .line 844
    const-string v20, "codeSeatId"

    .line 845
    .line 846
    const-string v21, "TEXT"

    .line 847
    .line 848
    move-object/from16 v19, v2

    .line 849
    .line 850
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    new-instance v2, Landroidx/room/util/m$a;

    .line 857
    .line 858
    const/16 v16, 0x0

    .line 859
    .line 860
    const-string v13, "ad_type"

    .line 861
    .line 862
    const-string v14, "INTEGER"

    .line 863
    .line 864
    move-object v12, v2

    .line 865
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 866
    .line 867
    .line 868
    const-string v3, "ad_type"

    .line 869
    .line 870
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    new-instance v2, Landroidx/room/util/m$a;

    .line 874
    .line 875
    const/4 v15, 0x0

    .line 876
    const-string v13, "price"

    .line 877
    .line 878
    const-string v14, "REAL"

    .line 879
    .line 880
    move-object v12, v2

    .line 881
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    new-instance v2, Landroidx/room/util/m$a;

    .line 888
    .line 889
    const/16 v23, 0x0

    .line 890
    .line 891
    const-string v20, "ad_request_ver"

    .line 892
    .line 893
    const-string v21, "INTEGER"

    .line 894
    .line 895
    move-object/from16 v19, v2

    .line 896
    .line 897
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    new-instance v2, Landroidx/room/util/m$a;

    .line 904
    .line 905
    const/4 v15, 0x1

    .line 906
    const-string v13, "displayed_times"

    .line 907
    .line 908
    const-string v14, "INTEGER"

    .line 909
    .line 910
    move-object v12, v2

    .line 911
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 912
    .line 913
    .line 914
    const-string v3, "displayed_times"

    .line 915
    .line 916
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    new-instance v2, Landroidx/room/util/m$a;

    .line 920
    .line 921
    const/4 v15, 0x0

    .line 922
    const-string v13, "displayed_date"

    .line 923
    .line 924
    const-string v14, "TEXT"

    .line 925
    .line 926
    move-object v12, v2

    .line 927
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 928
    .line 929
    .line 930
    const-string v3, "displayed_date"

    .line 931
    .line 932
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    new-instance v2, Landroidx/room/util/m$a;

    .line 936
    .line 937
    const-string v13, "start_date"

    .line 938
    .line 939
    const-string v14, "TEXT"

    .line 940
    .line 941
    move-object v12, v2

    .line 942
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 943
    .line 944
    .line 945
    const-string v3, "start_date"

    .line 946
    .line 947
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    new-instance v2, Landroidx/room/util/m$a;

    .line 951
    .line 952
    const-string v13, "end_date"

    .line 953
    .line 954
    const-string v14, "TEXT"

    .line 955
    .line 956
    move-object v12, v2

    .line 957
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 958
    .line 959
    .line 960
    const-string v3, "end_date"

    .line 961
    .line 962
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    new-instance v2, Landroidx/room/util/m$a;

    .line 966
    .line 967
    const/4 v15, 0x1

    .line 968
    const-string v13, "display_max_times"

    .line 969
    .line 970
    const-string v14, "INTEGER"

    .line 971
    .line 972
    move-object v12, v2

    .line 973
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 974
    .line 975
    .line 976
    const-string v3, "display_max_times"

    .line 977
    .line 978
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    new-instance v2, Landroidx/room/util/m$a;

    .line 982
    .line 983
    const/4 v15, 0x0

    .line 984
    const-string v13, "file_path"

    .line 985
    .line 986
    const-string v14, "TEXT"

    .line 987
    .line 988
    move-object v12, v2

    .line 989
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    new-instance v2, Landroidx/room/util/m$a;

    .line 996
    .line 997
    const/16 v22, 0x0

    .line 998
    .line 999
    const-string v20, "default_country_white"

    .line 1000
    .line 1001
    const-string v21, "TEXT"

    .line 1002
    .line 1003
    move-object/from16 v19, v2

    .line 1004
    .line 1005
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1006
    .line 1007
    .line 1008
    const-string v3, "default_country_white"

    .line 1009
    .line 1010
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    new-instance v2, Landroidx/room/util/m$a;

    .line 1014
    .line 1015
    const-string v13, "default_country_black"

    .line 1016
    .line 1017
    const-string v14, "TEXT"

    .line 1018
    .line 1019
    move-object v12, v2

    .line 1020
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1021
    .line 1022
    .line 1023
    const-string v3, "default_country_black"

    .line 1024
    .line 1025
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    new-instance v2, Landroidx/room/util/m$a;

    .line 1029
    .line 1030
    const-string v13, "default_brand_white"

    .line 1031
    .line 1032
    const-string v14, "TEXT"

    .line 1033
    .line 1034
    move-object v12, v2

    .line 1035
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1036
    .line 1037
    .line 1038
    const-string v3, "default_brand_white"

    .line 1039
    .line 1040
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    new-instance v2, Landroidx/room/util/m$a;

    .line 1044
    .line 1045
    const-string v13, "default_brand_black"

    .line 1046
    .line 1047
    const-string v14, "TEXT"

    .line 1048
    .line 1049
    move-object v12, v2

    .line 1050
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1051
    .line 1052
    .line 1053
    const-string v3, "default_brand_black"

    .line 1054
    .line 1055
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    new-instance v2, Landroidx/room/util/m$a;

    .line 1059
    .line 1060
    const-string v13, "ad_bean"

    .line 1061
    .line 1062
    const-string v14, "TEXT"

    .line 1063
    .line 1064
    move-object v12, v2

    .line 1065
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    new-instance v2, Ljava/util/HashSet;

    .line 1072
    .line 1073
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1074
    .line 1075
    .line 1076
    new-instance v3, Ljava/util/HashSet;

    .line 1077
    .line 1078
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1079
    .line 1080
    .line 1081
    new-instance v6, Landroidx/room/util/m;

    .line 1082
    .line 1083
    const-string v7, "default_ad_room"

    .line 1084
    .line 1085
    invoke-direct {v6, v7, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v0, v7}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-virtual {v6, v0}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v1

    .line 1096
    if-nez v1, :cond_5

    .line 1097
    .line 1098
    new-instance v1, Landroidx/room/h0$c;

    .line 1099
    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    .line 1104
    .line 1105
    const-string v3, "default_ad_room(com.cloud.hisavana.sdk.database.entities.DefaultAdEntity).\n Expected:\n"

    .line 1106
    .line 1107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    invoke-direct {v1, v4, v0}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    return-object v1

    .line 1127
    :cond_5
    new-instance v0, Landroidx/room/h0$c;

    .line 1128
    .line 1129
    const/4 v1, 0x1

    .line 1130
    const/4 v2, 0x0

    .line 1131
    invoke-direct {v0, v1, v2}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    return-object v0
.end method
