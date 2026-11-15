.class Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;
.super Landroidx/room/f0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->m0()Landroidx/room/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;->d:Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;

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
    const-string v0, "CREATE TABLE IF NOT EXISTS `short_tv_favorite_state` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `short_tv_ad_unlock_state` (`subjectId` TEXT NOT NULL, `unlockedEps` TEXT NOT NULL, PRIMARY KEY(`subjectId`))"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'7d0cc9a2b371c1f7329d0d00d8bd31c1\')"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public b(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `short_tv_favorite_state`"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `short_tv_ad_unlock_state`"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
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
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;->d:Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->l0(Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;Ly3/b;)V

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
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x4

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
    const-string v4, "subjectId"

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
    const-string v3, "subjectId"

    .line 24
    .line 25
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const-string v5, "favoriteNum"

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
    const-string v4, "favoriteNum"

    .line 43
    .line 44
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v2, Landroidx/room/util/m$a;

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x1

    .line 51
    const-string v6, "hasFavorite"

    .line 52
    .line 53
    const-string v7, "INTEGER"

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    const/4 v9, 0x0

    .line 57
    move-object v5, v2

    .line 58
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string v4, "hasFavorite"

    .line 62
    .line 63
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v2, Landroidx/room/util/m$a;

    .line 67
    .line 68
    const-string v6, "favoriteTime"

    .line 69
    .line 70
    const-string v7, "TEXT"

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v5, v2

    .line 74
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string v4, "favoriteTime"

    .line 78
    .line 79
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    new-instance v2, Ljava/util/HashSet;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-instance v5, Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Landroidx/room/util/m;

    .line 94
    .line 95
    const-string v7, "short_tv_favorite_state"

    .line 96
    .line 97
    invoke-direct {v6, v7, v1, v2, v5}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v7}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v6, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const-string v5, "\n Found:\n"

    .line 109
    .line 110
    if-nez v2, :cond_0

    .line 111
    .line 112
    new-instance v0, Landroidx/room/f0$a;

    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v3, "short_tv_favorite_state(com.transsion.shorttv.db.ShortTvFavoriteStateBean).\n Expected:\n"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v4, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 142
    .line 143
    const/4 v2, 0x2

    .line 144
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Landroidx/room/util/m$a;

    .line 148
    .line 149
    const/4 v11, 0x0

    .line 150
    const/4 v12, 0x1

    .line 151
    const-string v7, "subjectId"

    .line 152
    .line 153
    const-string v8, "TEXT"

    .line 154
    .line 155
    const/4 v9, 0x1

    .line 156
    const/4 v10, 0x1

    .line 157
    move-object v6, v2

    .line 158
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    new-instance v2, Landroidx/room/util/m$a;

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    const/16 v19, 0x1

    .line 169
    .line 170
    const-string v14, "unlockedEps"

    .line 171
    .line 172
    const-string v15, "TEXT"

    .line 173
    .line 174
    const/16 v16, 0x1

    .line 175
    .line 176
    const/16 v17, 0x0

    .line 177
    .line 178
    move-object v13, v2

    .line 179
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    const-string v3, "unlockedEps"

    .line 183
    .line 184
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    new-instance v2, Ljava/util/HashSet;

    .line 188
    .line 189
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 190
    .line 191
    .line 192
    new-instance v3, Ljava/util/HashSet;

    .line 193
    .line 194
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 195
    .line 196
    .line 197
    new-instance v6, Landroidx/room/util/m;

    .line 198
    .line 199
    const-string v7, "short_tv_ad_unlock_state"

    .line 200
    .line 201
    invoke-direct {v6, v7, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v7}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v6, v0}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_1

    .line 213
    .line 214
    new-instance v1, Landroidx/room/f0$a;

    .line 215
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v3, "short_tv_ad_unlock_state(com.transsion.shorttv.db.ShortTvAdUnlockStateBean).\n Expected:\n"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-direct {v1, v4, v0}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-object v1

    .line 243
    :cond_1
    new-instance v0, Landroidx/room/f0$a;

    .line 244
    .line 245
    const/4 v1, 0x1

    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-direct {v0, v1, v2}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-object v0
.end method
