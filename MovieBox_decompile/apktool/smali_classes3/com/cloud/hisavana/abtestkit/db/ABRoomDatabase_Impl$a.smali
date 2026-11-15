.class public final Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;
.super Landroidx/room/h0$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->s(Landroidx/room/c;)Lz3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/room/h0$b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `hisavana_ab_room` (`layer_id` INTEGER NOT NULL, `request_time` INTEGER NOT NULL, `ab_info` TEXT, PRIMARY KEY(`layer_id`))"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `hisavana_local_ab_room` (`local_ab_version_code` INTEGER NOT NULL, `local_ab_json` TEXT, PRIMARY KEY(`local_ab_version_code`))"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c3731bb55f7c1b83c5a17ab41e6dc2b1\')"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b(Lz3/d;)V
    .locals 2

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `hisavana_ab_room`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `hisavana_local_ab_room`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->i0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;

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
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->d(Lz3/d;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final c(Lz3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->k0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;

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

.method public final d(Lz3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->j0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;Lz3/d;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->l0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;Lz3/d;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->m0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;

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

.method public final e(Lz3/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lz3/d;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/b;->b(Lz3/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Lz3/d;)Landroidx/room/h0$c;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/room/util/m$a;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x1

    .line 11
    const-string v3, "layer_id"

    .line 12
    .line 13
    const-string v4, "INTEGER"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x1

    .line 17
    move-object v2, v1

    .line 18
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v2, "layer_id"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/room/util/m$a;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x1

    .line 30
    const-string v4, "request_time"

    .line 31
    .line 32
    const-string v5, "INTEGER"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v3, v1

    .line 36
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string v2, "request_time"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/room/util/m$a;

    .line 45
    .line 46
    const-string v4, "ab_info"

    .line 47
    .line 48
    const-string v5, "TEXT"

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v3, v1

    .line 52
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string v2, "ab_info"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/util/HashSet;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Landroidx/room/util/m;

    .line 72
    .line 73
    const-string v5, "hisavana_ab_room"

    .line 74
    .line 75
    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v5}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v4, v0}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const-string v3, "\n Found:\n"

    .line 87
    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    new-instance p1, Landroidx/room/h0$c;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v5, "hisavana_ab_room(com.cloud.hisavana.abtestkit.db.entities.OnlineABEntity).\n Expected:\n"

    .line 95
    .line 96
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v2, v0}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 117
    .line 118
    const/4 v1, 0x2

    .line 119
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroidx/room/util/m$a;

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x1

    .line 126
    const-string v5, "local_ab_version_code"

    .line 127
    .line 128
    const-string v6, "INTEGER"

    .line 129
    .line 130
    const/4 v7, 0x1

    .line 131
    const/4 v8, 0x1

    .line 132
    move-object v4, v1

    .line 133
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    const-string v4, "local_ab_version_code"

    .line 137
    .line 138
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    new-instance v1, Landroidx/room/util/m$a;

    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v11, 0x1

    .line 145
    const-string v6, "local_ab_json"

    .line 146
    .line 147
    const-string v7, "TEXT"

    .line 148
    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v9, 0x0

    .line 151
    move-object v5, v1

    .line 152
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    const-string v4, "local_ab_json"

    .line 156
    .line 157
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance v1, Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v4, Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v5, Landroidx/room/util/m;

    .line 171
    .line 172
    const-string v6, "hisavana_local_ab_room"

    .line 173
    .line 174
    invoke-direct {v5, v6, v0, v1, v4}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v6}, Landroidx/room/util/m;->b(Lz3/d;Ljava/lang/String;)Landroidx/room/util/m;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v5, p1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_1

    .line 186
    .line 187
    new-instance v0, Landroidx/room/h0$c;

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v4, "hisavana_local_ab_room(com.cloud.hisavana.abtestkit.db.entities.LocalABEntity).\n Expected:\n"

    .line 192
    .line 193
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {v0, v2, p1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_1
    new-instance p1, Landroidx/room/h0$c;

    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    const/4 v1, 0x0

    .line 217
    invoke-direct {p1, v0, v1}, Landroidx/room/h0$c;-><init>(ZLjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-object p1
.end method
