.class public final Lxi/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lxi/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lxi/h$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lxi/h$a;-><init>(Lxi/h;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lxi/h;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lxi/h$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lxi/h$b;-><init>(Lxi/h;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lxi/h;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxi/h;->n(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxi/h;->q(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lxi/h;->o(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ly3/b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lxi/h;->p(Ly3/b;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lxi/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxi/h;->r(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lxi/h;Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxi/h;->s(Ljava/util/List;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static m()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic n(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM music_liked WHERE subjectId = ?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-interface {p1}, Ly3/e;->close()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1
    invoke-interface {p1}, Ly3/e;->close()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static synthetic o(Ly3/b;)Ljava/util/List;
    .locals 28

    .line 1
    const-string v0, "SELECT * FROM music_liked ORDER BY timeStamp DESC"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v0, "subjectId"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "title"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "coverUrl"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "countryName"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "genre"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "releaseDate"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "durationSeconds"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "singerName"

    .line 52
    .line 53
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "singerAvatar"

    .line 58
    .line 59
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "path"

    .line 64
    .line 65
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "timeStamp"

    .line 70
    .line 71
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    new-instance v12, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    if-eqz v13, :cond_9

    .line 85
    .line 86
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-eqz v13, :cond_0

    .line 91
    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_0
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    move-object/from16 v16, v13

    .line 100
    .line 101
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_1

    .line 106
    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    move-object/from16 v17, v13

    .line 115
    .line 116
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_2

    .line 121
    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    move-object/from16 v18, v13

    .line 130
    .line 131
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    if-eqz v13, :cond_3

    .line 136
    .line 137
    const/16 v19, 0x0

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    move-object/from16 v19, v13

    .line 145
    .line 146
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    if-eqz v13, :cond_4

    .line 151
    .line 152
    const/16 v20, 0x0

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_4
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    move-object/from16 v20, v13

    .line 160
    .line 161
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-eqz v13, :cond_5

    .line 166
    .line 167
    const/16 v21, 0x0

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_5
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    move-object/from16 v21, v13

    .line 175
    .line 176
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v14

    .line 180
    long-to-int v13, v14

    .line 181
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-eqz v14, :cond_6

    .line 186
    .line 187
    const/16 v23, 0x0

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_6
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    move-object/from16 v23, v14

    .line 195
    .line 196
    :goto_7
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_7

    .line 201
    .line 202
    const/16 v24, 0x0

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_7
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    move-object/from16 v24, v14

    .line 210
    .line 211
    :goto_8
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-eqz v14, :cond_8

    .line 216
    .line 217
    const/16 v25, 0x0

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_8
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    move-object/from16 v25, v14

    .line 225
    .line 226
    :goto_9
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v26

    .line 230
    new-instance v14, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 231
    .line 232
    move-object v15, v14

    .line 233
    move/from16 v22, v13

    .line 234
    .line 235
    invoke-direct/range {v15 .. v27}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :catchall_0
    move-exception v0

    .line 244
    goto :goto_a

    .line 245
    :cond_9
    invoke-interface {v1}, Ly3/e;->close()V

    .line 246
    .line 247
    .line 248
    return-object v12

    .line 249
    :goto_a
    invoke-interface {v1}, Ly3/e;->close()V

    .line 250
    .line 251
    .line 252
    throw v0
.end method

.method private static synthetic p(Ly3/b;)Ljava/lang/Integer;
    .locals 3

    .line 1
    const-string v0, "SELECT COUNT(*) FROM music_liked"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p0, v0}, Ly3/e;->isNull(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p0, v0}, Ly3/e;->getLong(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    long-to-int v0, v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p0}, Ly3/e;->close()V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :goto_1
    invoke-interface {p0}, Ly3/e;->close()V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method private static synthetic q(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM music_liked WHERE subjectId = ?"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto/16 :goto_b

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "subjectId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "title"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "coverUrl"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "countryName"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "genre"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "releaseDate"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "durationSeconds"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "singerName"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "singerAvatar"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "path"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "timeStamp"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    const/4 v13, 0x0

    .line 95
    if-eqz v12, :cond_a

    .line 96
    .line 97
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_1

    .line 102
    .line 103
    move-object v15, v13

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object v15, v0

    .line 110
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    move-object/from16 v16, v13

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v16, v0

    .line 124
    .line 125
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    move-object/from16 v17, v13

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    move-object/from16 v17, v0

    .line 139
    .line 140
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    move-object/from16 v18, v13

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_4
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    move-object/from16 v18, v0

    .line 154
    .line 155
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    move-object/from16 v19, v13

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_5
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    move-object/from16 v19, v0

    .line 169
    .line 170
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    move-object/from16 v20, v13

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_6
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    move-object/from16 v20, v0

    .line 184
    .line 185
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    long-to-int v0, v2

    .line 190
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_7

    .line 195
    .line 196
    move-object/from16 v22, v13

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_7
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    move-object/from16 v22, v2

    .line 204
    .line 205
    :goto_7
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_8

    .line 210
    .line 211
    move-object/from16 v23, v13

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_8
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    move-object/from16 v23, v2

    .line 219
    .line 220
    :goto_8
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_9

    .line 225
    .line 226
    :goto_9
    move-object/from16 v24, v13

    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_9
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    goto :goto_9

    .line 234
    :goto_a
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 235
    .line 236
    .line 237
    move-result-wide v25

    .line 238
    new-instance v13, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 239
    .line 240
    move-object v14, v13

    .line 241
    move/from16 v21, v0

    .line 242
    .line 243
    invoke-direct/range {v14 .. v26}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .line 245
    .line 246
    :cond_a
    invoke-interface {v1}, Ly3/e;->close()V

    .line 247
    .line 248
    .line 249
    return-object v13

    .line 250
    :goto_b
    invoke-interface {v1}, Ly3/e;->close()V

    .line 251
    .line 252
    .line 253
    throw v0
.end method

.method private synthetic r(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lxi/h;->b:Landroidx/room/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Ly3/b;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method private synthetic s(Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lxi/h;->b:Landroidx/room/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Ly3/b;Ljava/lang/Iterable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxi/d;

    .line 4
    .line 5
    invoke-direct {v1}, Lxi/d;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lxi/f;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lxi/f;-><init>(Lxi/h;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxi/c;

    .line 4
    .line 5
    invoke-direct {v1}, Lxi/c;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxi/g;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lxi/g;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxi/b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lxi/b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public f(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lxi/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lxi/e;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lxi/e;-><init>(Lxi/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
