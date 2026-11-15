.class public final Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;
.super Landroidx/room/f0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->j0()Landroidx/room/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;->d:Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;

    .line 2
    .line 3
    const-string p1, "8fb9548e62ef8b007d7fa7c9d6d00479"

    .line 4
    .line 5
    const-string v0, "a675d4e34806d9830871c01a4db0b4d7"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v1, p1, v0}, Landroidx/room/f0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `mb_web_res_db` (`scene` TEXT NOT NULL, `htmlUrl` TEXT NOT NULL, `zipUrl` TEXT NOT NULL, `zipMd5` TEXT NOT NULL, `sourceType` INTEGER NOT NULL, `updateTime` TEXT, PRIMARY KEY(`scene`))"

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
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'8fb9548e62ef8b007d7fa7c9d6d00479\')"

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
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `mb_web_res_db`"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;->d:Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->i0(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;Ly3/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/room/util/b;->a(Ly3/b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(Ly3/b;)Landroidx/room/f0$a;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "connection"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v9, Landroidx/room/util/m$a;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    const-string v3, "scene"

    .line 18
    .line 19
    const-string v4, "TEXT"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x1

    .line 23
    move-object v2, v9

    .line 24
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v2, "scene"

    .line 28
    .line 29
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/room/util/m$a;

    .line 33
    .line 34
    const/4 v15, 0x0

    .line 35
    const/16 v16, 0x1

    .line 36
    .line 37
    const-string v11, "htmlUrl"

    .line 38
    .line 39
    const-string v12, "TEXT"

    .line 40
    .line 41
    const/4 v13, 0x1

    .line 42
    const/4 v14, 0x0

    .line 43
    move-object v10, v2

    .line 44
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v3, "htmlUrl"

    .line 48
    .line 49
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroidx/room/util/m$a;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x1

    .line 56
    const-string v5, "zipUrl"

    .line 57
    .line 58
    const-string v6, "TEXT"

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v4, v2

    .line 63
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const-string v3, "zipUrl"

    .line 67
    .line 68
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance v2, Landroidx/room/util/m$a;

    .line 72
    .line 73
    const-string v5, "zipMd5"

    .line 74
    .line 75
    const-string v6, "TEXT"

    .line 76
    .line 77
    move-object v4, v2

    .line 78
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string v3, "zipMd5"

    .line 82
    .line 83
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v2, Landroidx/room/util/m$a;

    .line 87
    .line 88
    const-string v5, "sourceType"

    .line 89
    .line 90
    const-string v6, "INTEGER"

    .line 91
    .line 92
    move-object v4, v2

    .line 93
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    const-string v3, "sourceType"

    .line 97
    .line 98
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    new-instance v2, Landroidx/room/util/m$a;

    .line 102
    .line 103
    const-string v5, "updateTime"

    .line 104
    .line 105
    const-string v6, "TEXT"

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    move-object v4, v2

    .line 109
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const-string v3, "updateTime"

    .line 113
    .line 114
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v4, Landroidx/room/util/m;

    .line 128
    .line 129
    const-string v5, "mb_web_res_db"

    .line 130
    .line 131
    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 132
    .line 133
    .line 134
    sget-object v1, Landroidx/room/util/m;->e:Landroidx/room/util/m$b;

    .line 135
    .line 136
    invoke-virtual {v1, v0, v5}, Landroidx/room/util/m$b;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v4, v0}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_0

    .line 145
    .line 146
    new-instance v1, Landroidx/room/f0$a;

    .line 147
    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v3, "mb_web_res_db(com.transsion.lib_web.zip.db.WebViewCacheConfigData).\n Expected:\n"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v3, "\n Found:\n"

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/4 v2, 0x0

    .line 174
    invoke-direct {v1, v2, v0}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v1

    .line 178
    :cond_0
    new-instance v0, Landroidx/room/f0$a;

    .line 179
    .line 180
    const/4 v1, 0x1

    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-direct {v0, v1, v2}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-object v0
.end method
