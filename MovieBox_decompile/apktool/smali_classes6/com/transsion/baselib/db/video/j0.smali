.class public final Lcom/transsion/baselib/db/video/j0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/baselib/db/video/j0$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/j0$a;-><init>(Lcom/transsion/baselib/db/video/j0;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/video/j0;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/baselib/db/video/j0$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/j0$b;-><init>(Lcom/transsion/baselib/db/video/j0;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/baselib/db/video/j0;->c:Landroidx/room/e;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/baselib/db/video/j0$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/j0$c;-><init>(Lcom/transsion/baselib/db/video/j0;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/baselib/db/video/j0;->d:Landroidx/room/e;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic A(JLjava/lang/String;JILjava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsion/baselib/db/video/j0;->f0(JLjava/lang/String;JILjava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(IILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->c0(IILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Ljava/lang/String;IILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/j0;->S(Ljava/lang/String;IILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(IILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->T(IILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->X(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lcom/transsion/baselib/db/video/j0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->e0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Ljava/lang/String;IILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/j0;->b0(Ljava/lang/String;IILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->g0(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/j0;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->a0(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/db/video/j0;->Q(Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/j0;->U(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/j0;->R(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->W(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lcom/transsion/baselib/db/video/j0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0;->d0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static P()Ljava/util/List;
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

.method private static synthetic Q(Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM UGC_VIDEO_DETAIL_PLAY"

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
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    invoke-interface {p0}, Ly3/e;->close()V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-interface {p0}, Ly3/e;->close()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private static synthetic R(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId=?"

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

.method private static synthetic S(Ljava/lang/String;IILy3/b;)Ljava/util/List;
    .locals 80

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

    .line 4
    .line 5
    move-object/from16 v2, p3

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
    goto/16 :goto_29

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v3, 0x2

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, v3}, Ly3/e;->g(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {v1, v3, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    const/4 v0, 0x3

    .line 35
    move/from16 v3, p1

    .line 36
    .line 37
    int-to-long v3, v3

    .line 38
    invoke-interface {v1, v0, v3, v4}, Ly3/e;->c(IJ)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    move/from16 v3, p2

    .line 43
    .line 44
    int-to-long v3, v3

    .line 45
    invoke-interface {v1, v0, v3, v4}, Ly3/e;->c(IJ)V

    .line 46
    .line 47
    .line 48
    const-string v0, "collectionId"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v3, "ugcVideoId"

    .line 55
    .line 56
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const-string v4, "progress"

    .line 61
    .line 62
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const-string v5, "title"

    .line 67
    .line 68
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string v6, "coverUrl"

    .line 73
    .line 74
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const-string v7, "thumbnail"

    .line 79
    .line 80
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const-string v8, "position"

    .line 85
    .line 86
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const-string v9, "type"

    .line 91
    .line 92
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    const-string v10, "cateLev1Id"

    .line 97
    .line 98
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const-string v11, "cateLev2Id"

    .line 103
    .line 104
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    const-string v12, "cateLev3Id"

    .line 109
    .line 110
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    const-string v13, "cateLev4Id"

    .line 115
    .line 116
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    const-string v14, "timeStamp"

    .line 121
    .line 122
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    const-string v15, "subtitleSelectId"

    .line 127
    .line 128
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    const-string v2, "totalDuration"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    move/from16 p0, v2

    .line 139
    .line 140
    const-string v2, "subjectDurationSeconds"

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move/from16 p1, v2

    .line 147
    .line 148
    const-string v2, "averageHueLight"

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    move/from16 p2, v2

    .line 155
    .line 156
    const-string v2, "subjectType"

    .line 157
    .line 158
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    move/from16 v16, v2

    .line 163
    .line 164
    const-string v2, "hasDelete"

    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v17, v2

    .line 171
    .line 172
    const-string v2, "playMode"

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    move/from16 v18, v2

    .line 179
    .line 180
    const-string v2, "downloadUrl"

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move/from16 v19, v2

    .line 187
    .line 188
    const-string v2, "downloadResid"

    .line 189
    .line 190
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    move/from16 v20, v2

    .line 195
    .line 196
    const-string v2, "downloadFilePath"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v21, v2

    .line 203
    .line 204
    const-string v2, "downloadSize"

    .line 205
    .line 206
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    move/from16 v22, v2

    .line 211
    .line 212
    const-string v2, "lastAdStartTimeStamp"

    .line 213
    .line 214
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    move/from16 v23, v2

    .line 219
    .line 220
    const-string v2, "lastAdEndTimeStamp"

    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    move/from16 v24, v2

    .line 227
    .line 228
    const-string v2, "rewardPlayed"

    .line 229
    .line 230
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    move/from16 v25, v2

    .line 235
    .line 236
    const-string v2, "rewardUnlock"

    .line 237
    .line 238
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    move/from16 v26, v2

    .line 243
    .line 244
    const-string v2, "rewardFree"

    .line 245
    .line 246
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    move/from16 v27, v2

    .line 251
    .line 252
    const-string v2, "ops"

    .line 253
    .line 254
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    move/from16 v28, v2

    .line 259
    .line 260
    const-string v2, "uid"

    .line 261
    .line 262
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    move/from16 v29, v2

    .line 267
    .line 268
    const-string v2, "userName"

    .line 269
    .line 270
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    move/from16 v30, v2

    .line 275
    .line 276
    const-string v2, "userAvatar"

    .line 277
    .line 278
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    move/from16 v31, v2

    .line 283
    .line 284
    const-string v2, "description"

    .line 285
    .line 286
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    move/from16 v32, v2

    .line 291
    .line 292
    const-string v2, "videoStyle"

    .line 293
    .line 294
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    move/from16 v33, v2

    .line 299
    .line 300
    const-string v2, "kidId"

    .line 301
    .line 302
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    move/from16 v34, v2

    .line 307
    .line 308
    new-instance v2, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    :goto_2
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 314
    .line 315
    .line 316
    move-result v35

    .line 317
    if-eqz v35, :cond_22

    .line 318
    .line 319
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 320
    .line 321
    .line 322
    move-result v35

    .line 323
    const/16 v36, 0x0

    .line 324
    .line 325
    if-eqz v35, :cond_2

    .line 326
    .line 327
    move-object/from16 v38, v36

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_2
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v35

    .line 334
    move-object/from16 v38, v35

    .line 335
    .line 336
    :goto_3
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 337
    .line 338
    .line 339
    move-result v35

    .line 340
    if-eqz v35, :cond_3

    .line 341
    .line 342
    move-object/from16 v39, v36

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v35

    .line 349
    move-object/from16 v39, v35

    .line 350
    .line 351
    :goto_4
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v40

    .line 355
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 356
    .line 357
    .line 358
    move-result v35

    .line 359
    if-eqz v35, :cond_4

    .line 360
    .line 361
    move-object/from16 v42, v36

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_4
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v35

    .line 368
    move-object/from16 v42, v35

    .line 369
    .line 370
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 371
    .line 372
    .line 373
    move-result v35

    .line 374
    if-eqz v35, :cond_5

    .line 375
    .line 376
    move-object/from16 v43, v36

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_5
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v35

    .line 383
    move-object/from16 v43, v35

    .line 384
    .line 385
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 386
    .line 387
    .line 388
    move-result v35

    .line 389
    if-eqz v35, :cond_6

    .line 390
    .line 391
    move/from16 v35, v3

    .line 392
    .line 393
    move/from16 v77, v4

    .line 394
    .line 395
    move-object/from16 v44, v36

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_6
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v35

    .line 402
    move/from16 v77, v4

    .line 403
    .line 404
    move-object/from16 v44, v35

    .line 405
    .line 406
    move/from16 v35, v3

    .line 407
    .line 408
    :goto_7
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 409
    .line 410
    .line 411
    move-result-wide v3

    .line 412
    long-to-int v3, v3

    .line 413
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-eqz v4, :cond_7

    .line 418
    .line 419
    move-object/from16 v46, v36

    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_7
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    move-object/from16 v46, v4

    .line 427
    .line 428
    :goto_8
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_8

    .line 433
    .line 434
    move/from16 v78, v5

    .line 435
    .line 436
    move-object/from16 v47, v36

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_8
    move/from16 v78, v5

    .line 440
    .line 441
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    long-to-int v4, v4

    .line 446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    move-object/from16 v47, v4

    .line 451
    .line 452
    :goto_9
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-eqz v4, :cond_9

    .line 457
    .line 458
    move-object/from16 v48, v36

    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_9
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 462
    .line 463
    .line 464
    move-result-wide v4

    .line 465
    long-to-int v4, v4

    .line 466
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    move-object/from16 v48, v4

    .line 471
    .line 472
    :goto_a
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-eqz v4, :cond_a

    .line 477
    .line 478
    move-object/from16 v49, v36

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    .line 482
    .line 483
    .line 484
    move-result-wide v4

    .line 485
    long-to-int v4, v4

    .line 486
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    move-object/from16 v49, v4

    .line 491
    .line 492
    :goto_b
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-eqz v4, :cond_b

    .line 497
    .line 498
    move-object/from16 v50, v36

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :cond_b
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 502
    .line 503
    .line 504
    move-result-wide v4

    .line 505
    long-to-int v4, v4

    .line 506
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    move-object/from16 v50, v4

    .line 511
    .line 512
    :goto_c
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v51

    .line 516
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    if-eqz v4, :cond_c

    .line 521
    .line 522
    move/from16 v4, p0

    .line 523
    .line 524
    move-object/from16 v53, v36

    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_c
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    move-object/from16 v53, v4

    .line 532
    .line 533
    move/from16 v4, p0

    .line 534
    .line 535
    :goto_d
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    if-eqz v5, :cond_d

    .line 540
    .line 541
    move/from16 v5, p1

    .line 542
    .line 543
    move-object/from16 v54, v36

    .line 544
    .line 545
    goto :goto_e

    .line 546
    :cond_d
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 547
    .line 548
    .line 549
    move-result-wide v54

    .line 550
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    move-object/from16 v54, v5

    .line 555
    .line 556
    move/from16 v5, p1

    .line 557
    .line 558
    :goto_e
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 559
    .line 560
    .line 561
    move-result v37

    .line 562
    if-eqz v37, :cond_e

    .line 563
    .line 564
    move/from16 p0, v0

    .line 565
    .line 566
    move-object/from16 v55, v36

    .line 567
    .line 568
    :goto_f
    move/from16 v0, p2

    .line 569
    .line 570
    goto :goto_10

    .line 571
    :cond_e
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 572
    .line 573
    .line 574
    move-result-wide v55

    .line 575
    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 576
    .line 577
    .line 578
    move-result-object v37

    .line 579
    move/from16 p0, v0

    .line 580
    .line 581
    move-object/from16 v55, v37

    .line 582
    .line 583
    goto :goto_f

    .line 584
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 585
    .line 586
    .line 587
    move-result v37

    .line 588
    if-eqz v37, :cond_f

    .line 589
    .line 590
    move/from16 p2, v0

    .line 591
    .line 592
    move/from16 v0, v16

    .line 593
    .line 594
    move-object/from16 v56, v36

    .line 595
    .line 596
    goto :goto_11

    .line 597
    :cond_f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v37

    .line 601
    move/from16 p2, v0

    .line 602
    .line 603
    move/from16 v0, v16

    .line 604
    .line 605
    move-object/from16 v56, v37

    .line 606
    .line 607
    :goto_11
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 608
    .line 609
    .line 610
    move-result v16

    .line 611
    if-eqz v16, :cond_10

    .line 612
    .line 613
    move/from16 v16, v4

    .line 614
    .line 615
    move/from16 p1, v5

    .line 616
    .line 617
    move/from16 v4, v17

    .line 618
    .line 619
    move-object/from16 v57, v36

    .line 620
    .line 621
    :goto_12
    move/from16 v17, v6

    .line 622
    .line 623
    goto :goto_13

    .line 624
    :cond_10
    move/from16 v16, v4

    .line 625
    .line 626
    move/from16 p1, v5

    .line 627
    .line 628
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 629
    .line 630
    .line 631
    move-result-wide v4

    .line 632
    long-to-int v4, v4

    .line 633
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    move-object/from16 v57, v4

    .line 638
    .line 639
    move/from16 v4, v17

    .line 640
    .line 641
    goto :goto_12

    .line 642
    :goto_13
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 643
    .line 644
    .line 645
    move-result-wide v5

    .line 646
    long-to-int v5, v5

    .line 647
    if-eqz v5, :cond_11

    .line 648
    .line 649
    move/from16 v5, v18

    .line 650
    .line 651
    const/16 v58, 0x1

    .line 652
    .line 653
    goto :goto_14

    .line 654
    :cond_11
    move/from16 v5, v18

    .line 655
    .line 656
    const/16 v58, 0x0

    .line 657
    .line 658
    :goto_14
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 659
    .line 660
    .line 661
    move-result v18

    .line 662
    if-eqz v18, :cond_12

    .line 663
    .line 664
    move/from16 v6, v19

    .line 665
    .line 666
    move-object/from16 v59, v36

    .line 667
    .line 668
    goto :goto_15

    .line 669
    :cond_12
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v18

    .line 673
    move-object/from16 v59, v18

    .line 674
    .line 675
    move/from16 v6, v19

    .line 676
    .line 677
    :goto_15
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 678
    .line 679
    .line 680
    move-result v19

    .line 681
    if-eqz v19, :cond_13

    .line 682
    .line 683
    move/from16 v19, v0

    .line 684
    .line 685
    move/from16 v0, v20

    .line 686
    .line 687
    move-object/from16 v60, v36

    .line 688
    .line 689
    goto :goto_16

    .line 690
    :cond_13
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v19

    .line 694
    move-object/from16 v60, v19

    .line 695
    .line 696
    move/from16 v19, v0

    .line 697
    .line 698
    move/from16 v0, v20

    .line 699
    .line 700
    :goto_16
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 701
    .line 702
    .line 703
    move-result v20

    .line 704
    if-eqz v20, :cond_14

    .line 705
    .line 706
    move/from16 v20, v0

    .line 707
    .line 708
    move/from16 v0, v21

    .line 709
    .line 710
    move-object/from16 v61, v36

    .line 711
    .line 712
    goto :goto_17

    .line 713
    :cond_14
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v20

    .line 717
    move-object/from16 v61, v20

    .line 718
    .line 719
    move/from16 v20, v0

    .line 720
    .line 721
    move/from16 v0, v21

    .line 722
    .line 723
    :goto_17
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 724
    .line 725
    .line 726
    move-result v21

    .line 727
    if-eqz v21, :cond_15

    .line 728
    .line 729
    move/from16 v21, v0

    .line 730
    .line 731
    move/from16 v0, v22

    .line 732
    .line 733
    move-object/from16 v62, v36

    .line 734
    .line 735
    goto :goto_18

    .line 736
    :cond_15
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v21

    .line 740
    move-object/from16 v62, v21

    .line 741
    .line 742
    move/from16 v21, v0

    .line 743
    .line 744
    move/from16 v0, v22

    .line 745
    .line 746
    :goto_18
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 747
    .line 748
    .line 749
    move-result-wide v63

    .line 750
    move/from16 v22, v0

    .line 751
    .line 752
    move/from16 v0, v23

    .line 753
    .line 754
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 755
    .line 756
    .line 757
    move-result v23

    .line 758
    if-eqz v23, :cond_16

    .line 759
    .line 760
    move/from16 v23, v0

    .line 761
    .line 762
    move/from16 v0, v24

    .line 763
    .line 764
    move-object/from16 v65, v36

    .line 765
    .line 766
    goto :goto_19

    .line 767
    :cond_16
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 768
    .line 769
    .line 770
    move-result-wide v65

    .line 771
    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 772
    .line 773
    .line 774
    move-result-object v23

    .line 775
    move-object/from16 v65, v23

    .line 776
    .line 777
    move/from16 v23, v0

    .line 778
    .line 779
    move/from16 v0, v24

    .line 780
    .line 781
    :goto_19
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 782
    .line 783
    .line 784
    move-result v24

    .line 785
    if-eqz v24, :cond_17

    .line 786
    .line 787
    move/from16 v24, v0

    .line 788
    .line 789
    move/from16 v79, v5

    .line 790
    .line 791
    move/from16 v0, v25

    .line 792
    .line 793
    move-object/from16 v66, v36

    .line 794
    .line 795
    :goto_1a
    move/from16 v25, v4

    .line 796
    .line 797
    goto :goto_1b

    .line 798
    :cond_17
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 799
    .line 800
    .line 801
    move-result-wide v66

    .line 802
    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 803
    .line 804
    .line 805
    move-result-object v24

    .line 806
    move/from16 v79, v5

    .line 807
    .line 808
    move-object/from16 v66, v24

    .line 809
    .line 810
    move/from16 v24, v0

    .line 811
    .line 812
    move/from16 v0, v25

    .line 813
    .line 814
    goto :goto_1a

    .line 815
    :goto_1b
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 816
    .line 817
    .line 818
    move-result-wide v4

    .line 819
    long-to-int v4, v4

    .line 820
    if-eqz v4, :cond_18

    .line 821
    .line 822
    move/from16 v4, v26

    .line 823
    .line 824
    const/16 v67, 0x1

    .line 825
    .line 826
    :goto_1c
    move/from16 v26, v6

    .line 827
    .line 828
    goto :goto_1d

    .line 829
    :cond_18
    move/from16 v4, v26

    .line 830
    .line 831
    const/16 v67, 0x0

    .line 832
    .line 833
    goto :goto_1c

    .line 834
    :goto_1d
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 835
    .line 836
    .line 837
    move-result-wide v5

    .line 838
    long-to-int v5, v5

    .line 839
    if-eqz v5, :cond_19

    .line 840
    .line 841
    move/from16 v5, v27

    .line 842
    .line 843
    const/16 v68, 0x1

    .line 844
    .line 845
    :goto_1e
    move/from16 v27, v7

    .line 846
    .line 847
    goto :goto_1f

    .line 848
    :cond_19
    move/from16 v5, v27

    .line 849
    .line 850
    const/16 v68, 0x0

    .line 851
    .line 852
    goto :goto_1e

    .line 853
    :goto_1f
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 854
    .line 855
    .line 856
    move-result-wide v6

    .line 857
    long-to-int v6, v6

    .line 858
    if-eqz v6, :cond_1a

    .line 859
    .line 860
    move/from16 v6, v28

    .line 861
    .line 862
    const/16 v69, 0x1

    .line 863
    .line 864
    goto :goto_20

    .line 865
    :cond_1a
    move/from16 v6, v28

    .line 866
    .line 867
    const/16 v69, 0x0

    .line 868
    .line 869
    :goto_20
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 870
    .line 871
    .line 872
    move-result v7

    .line 873
    if-eqz v7, :cond_1b

    .line 874
    .line 875
    move/from16 v7, v29

    .line 876
    .line 877
    move-object/from16 v70, v36

    .line 878
    .line 879
    goto :goto_21

    .line 880
    :cond_1b
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v7

    .line 884
    move-object/from16 v70, v7

    .line 885
    .line 886
    move/from16 v7, v29

    .line 887
    .line 888
    :goto_21
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 889
    .line 890
    .line 891
    move-result v18

    .line 892
    if-eqz v18, :cond_1c

    .line 893
    .line 894
    move/from16 v18, v0

    .line 895
    .line 896
    move/from16 v0, v30

    .line 897
    .line 898
    move-object/from16 v71, v36

    .line 899
    .line 900
    goto :goto_22

    .line 901
    :cond_1c
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v18

    .line 905
    move-object/from16 v71, v18

    .line 906
    .line 907
    move/from16 v18, v0

    .line 908
    .line 909
    move/from16 v0, v30

    .line 910
    .line 911
    :goto_22
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 912
    .line 913
    .line 914
    move-result v28

    .line 915
    if-eqz v28, :cond_1d

    .line 916
    .line 917
    move/from16 v30, v0

    .line 918
    .line 919
    move/from16 v0, v31

    .line 920
    .line 921
    move-object/from16 v72, v36

    .line 922
    .line 923
    goto :goto_23

    .line 924
    :cond_1d
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v28

    .line 928
    move/from16 v30, v0

    .line 929
    .line 930
    move-object/from16 v72, v28

    .line 931
    .line 932
    move/from16 v0, v31

    .line 933
    .line 934
    :goto_23
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 935
    .line 936
    .line 937
    move-result v28

    .line 938
    if-eqz v28, :cond_1e

    .line 939
    .line 940
    move/from16 v31, v0

    .line 941
    .line 942
    move/from16 v0, v32

    .line 943
    .line 944
    move-object/from16 v73, v36

    .line 945
    .line 946
    goto :goto_24

    .line 947
    :cond_1e
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v28

    .line 951
    move/from16 v31, v0

    .line 952
    .line 953
    move-object/from16 v73, v28

    .line 954
    .line 955
    move/from16 v0, v32

    .line 956
    .line 957
    :goto_24
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 958
    .line 959
    .line 960
    move-result v28

    .line 961
    if-eqz v28, :cond_1f

    .line 962
    .line 963
    move/from16 v32, v0

    .line 964
    .line 965
    move/from16 v0, v33

    .line 966
    .line 967
    move-object/from16 v74, v36

    .line 968
    .line 969
    goto :goto_25

    .line 970
    :cond_1f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v28

    .line 974
    move/from16 v32, v0

    .line 975
    .line 976
    move-object/from16 v74, v28

    .line 977
    .line 978
    move/from16 v0, v33

    .line 979
    .line 980
    :goto_25
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 981
    .line 982
    .line 983
    move-result v28

    .line 984
    if-eqz v28, :cond_20

    .line 985
    .line 986
    move/from16 v33, v0

    .line 987
    .line 988
    move/from16 v0, v34

    .line 989
    .line 990
    move-object/from16 v75, v36

    .line 991
    .line 992
    goto :goto_26

    .line 993
    :cond_20
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v28

    .line 997
    move/from16 v33, v0

    .line 998
    .line 999
    move-object/from16 v75, v28

    .line 1000
    .line 1001
    move/from16 v0, v34

    .line 1002
    .line 1003
    :goto_26
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v28

    .line 1007
    if-eqz v28, :cond_21

    .line 1008
    .line 1009
    :goto_27
    move/from16 v34, v0

    .line 1010
    .line 1011
    move-object/from16 v76, v36

    .line 1012
    .line 1013
    goto :goto_28

    .line 1014
    :cond_21
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v36

    .line 1018
    goto :goto_27

    .line 1019
    :goto_28
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 1020
    .line 1021
    move-object/from16 v37, v0

    .line 1022
    .line 1023
    move/from16 v45, v3

    .line 1024
    .line 1025
    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    .line 1030
    .line 1031
    move/from16 v0, p0

    .line 1032
    .line 1033
    move/from16 v28, v6

    .line 1034
    .line 1035
    move/from16 v29, v7

    .line 1036
    .line 1037
    move/from16 p0, v16

    .line 1038
    .line 1039
    move/from16 v6, v17

    .line 1040
    .line 1041
    move/from16 v16, v19

    .line 1042
    .line 1043
    move/from16 v17, v25

    .line 1044
    .line 1045
    move/from16 v19, v26

    .line 1046
    .line 1047
    move/from16 v7, v27

    .line 1048
    .line 1049
    move/from16 v3, v35

    .line 1050
    .line 1051
    move/from16 v26, v4

    .line 1052
    .line 1053
    move/from16 v27, v5

    .line 1054
    .line 1055
    move/from16 v25, v18

    .line 1056
    .line 1057
    move/from16 v4, v77

    .line 1058
    .line 1059
    move/from16 v5, v78

    .line 1060
    .line 1061
    move/from16 v18, v79

    .line 1062
    .line 1063
    goto/16 :goto_2

    .line 1064
    .line 1065
    :cond_22
    invoke-interface {v1}, Ly3/e;->close()V

    .line 1066
    .line 1067
    .line 1068
    return-object v2

    .line 1069
    :goto_29
    invoke-interface {v1}, Ly3/e;->close()V

    .line 1070
    .line 1071
    .line 1072
    throw v0
.end method

.method private static synthetic T(IILy3/b;)Ljava/util/List;
    .locals 83

    .line 1
    const-string v0, "SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = \'\') AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = \'\') AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    move-result-object v1

    move/from16 v0, p0

    int-to-long v2, v0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    .line 3
    invoke-interface {v1, v2, v3, v4}, Ly3/e;->c(IJ)V

    .line 4
    const-string v2, "collectionId"

    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v2

    .line 5
    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v3

    .line 6
    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v4

    .line 7
    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v5

    .line 8
    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v6

    .line 9
    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v7

    .line 10
    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v8

    .line 11
    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v9

    .line 12
    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v10

    .line 13
    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v11

    .line 14
    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v12

    .line 15
    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v13

    .line 16
    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v14

    .line 17
    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v15

    .line 18
    const-string v0, "totalDuration"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    .line 19
    const-string v0, "subjectDurationSeconds"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    .line 20
    const-string v0, "averageHueLight"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    .line 21
    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 22
    const-string v0, "hasDelete"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 23
    const-string v0, "playMode"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    .line 24
    const-string v0, "downloadUrl"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    .line 25
    const-string v0, "downloadResid"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    .line 26
    const-string v0, "downloadFilePath"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    .line 27
    const-string v0, "downloadSize"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 28
    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    .line 29
    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    .line 30
    const-string v0, "rewardPlayed"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    .line 31
    const-string v0, "rewardUnlock"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    .line 32
    const-string v0, "rewardFree"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    .line 33
    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    .line 34
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    .line 35
    const-string v0, "userName"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    .line 36
    const-string v0, "userAvatar"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    .line 37
    const-string v0, "description"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    .line 38
    const-string v0, "videoStyle"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v34, v0

    .line 39
    const-string v0, "kidId"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v35, v0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    move-result v36

    if-eqz v36, :cond_20

    .line 42
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_0

    move-object/from16 v39, v37

    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v39, v36

    .line 44
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v40, v37

    goto :goto_2

    .line 45
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v40, v36

    .line 46
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v41

    .line 47
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v43, v37

    goto :goto_3

    .line 48
    :cond_2
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v43, v36

    .line 49
    :goto_3
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v44, v37

    goto :goto_4

    .line 50
    :cond_3
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v44, v36

    .line 51
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    move/from16 v36, v2

    move/from16 v78, v3

    move-object/from16 v45, v37

    goto :goto_5

    .line 52
    :cond_4
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move/from16 v78, v3

    move-object/from16 v45, v36

    move/from16 v36, v2

    .line 53
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 54
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v47, v37

    goto :goto_6

    .line 55
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    .line 56
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v79, v4

    move-object/from16 v48, v37

    goto :goto_7

    :cond_6
    move/from16 v79, v4

    .line 57
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    .line 58
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v49, v37

    goto :goto_8

    .line 59
    :cond_7
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    .line 60
    :goto_8
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v50, v37

    goto :goto_9

    .line 61
    :cond_8
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    .line 62
    :goto_9
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v51, v37

    goto :goto_a

    .line 63
    :cond_9
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    .line 64
    :goto_a
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    move-result-wide v52

    .line 65
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, p1

    move-object/from16 v54, v37

    goto :goto_b

    .line 66
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p1

    .line 67
    :goto_b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, p2

    move-object/from16 v55, v37

    goto :goto_c

    .line 68
    :cond_b
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v55, v4

    move/from16 v4, p2

    .line 69
    :goto_c
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_c

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v37

    goto :goto_d

    .line 70
    :cond_c
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v38

    .line 71
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v3

    move/from16 v3, v17

    move-object/from16 v57, v37

    goto :goto_e

    .line 72
    :cond_d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v57, v16

    move/from16 v16, v3

    move/from16 v3, v17

    .line 73
    :goto_e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v17, v4

    move/from16 p2, v5

    move/from16 v4, v18

    move-object/from16 v58, v37

    :goto_f
    move/from16 v18, v6

    goto :goto_10

    :cond_e
    move/from16 v17, v4

    move/from16 p2, v5

    .line 74
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v58, v4

    move/from16 v4, v18

    goto :goto_f

    .line 75
    :goto_10
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_f

    move/from16 v5, v19

    const/16 v59, 0x1

    goto :goto_11

    :cond_f
    move/from16 v5, v19

    const/16 v59, 0x0

    .line 76
    :goto_11
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v6, v20

    move-object/from16 v60, v37

    goto :goto_12

    .line 77
    :cond_10
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v60, v19

    move/from16 v6, v20

    .line 78
    :goto_12
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    move/from16 v20, v3

    move/from16 v3, v21

    move-object/from16 v61, v37

    goto :goto_13

    .line 79
    :cond_11
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v61, v20

    move/from16 v20, v3

    move/from16 v3, v21

    .line 80
    :goto_13
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_12

    move/from16 v21, v3

    move/from16 v3, v22

    move-object/from16 v62, v37

    goto :goto_14

    .line 81
    :cond_12
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v62, v21

    move/from16 v21, v3

    move/from16 v3, v22

    .line 82
    :goto_14
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v22, v3

    move/from16 v3, v23

    move-object/from16 v63, v37

    goto :goto_15

    .line 83
    :cond_13
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v63, v22

    move/from16 v22, v3

    move/from16 v3, v23

    .line 84
    :goto_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v23, v3

    move/from16 v3, v24

    .line 85
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_14

    move/from16 v24, v3

    move/from16 v3, v25

    move-object/from16 v66, v37

    goto :goto_16

    .line 86
    :cond_14
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v66, v24

    move/from16 v24, v3

    move/from16 v3, v25

    .line 87
    :goto_16
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_15

    move/from16 v25, v3

    move/from16 v80, v5

    move/from16 v3, v26

    move-object/from16 v67, v37

    :goto_17
    move/from16 v26, v4

    goto :goto_18

    .line 88
    :cond_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v67

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move/from16 v80, v5

    move-object/from16 v67, v25

    move/from16 v25, v3

    move/from16 v3, v26

    goto :goto_17

    .line 89
    :goto_18
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_16

    move/from16 v4, v27

    const/16 v68, 0x1

    :goto_19
    move/from16 v27, v6

    goto :goto_1a

    :cond_16
    move/from16 v4, v27

    const/16 v68, 0x0

    goto :goto_19

    .line 90
    :goto_1a
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v3

    if-eqz v5, :cond_17

    move/from16 v5, v28

    const/16 v69, 0x1

    :goto_1b
    move/from16 v28, v4

    goto :goto_1c

    :cond_17
    move/from16 v5, v28

    const/16 v69, 0x0

    goto :goto_1b

    .line 91
    :goto_1c
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v70, 0x1

    goto :goto_1d

    :cond_18
    move/from16 v3, v29

    const/16 v70, 0x0

    .line 92
    :goto_1d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v4, v30

    move-object/from16 v71, v37

    goto :goto_1e

    .line 93
    :cond_19
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v71, v4

    move/from16 v4, v30

    .line 94
    :goto_1e
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    move/from16 v29, v3

    move/from16 v3, v31

    move-object/from16 v72, v37

    goto :goto_1f

    .line 95
    :cond_1a
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v29, v3

    move-object/from16 v72, v19

    move/from16 v3, v31

    .line 96
    :goto_1f
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    move/from16 v31, v3

    move/from16 v3, v32

    move-object/from16 v73, v37

    goto :goto_20

    .line 97
    :cond_1b
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v31, v3

    move-object/from16 v73, v19

    move/from16 v3, v32

    .line 98
    :goto_20
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1c

    move/from16 v32, v3

    move/from16 v3, v33

    move-object/from16 v74, v37

    goto :goto_21

    .line 99
    :cond_1c
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v32, v3

    move-object/from16 v74, v19

    move/from16 v3, v33

    .line 100
    :goto_21
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1d

    move/from16 v33, v3

    move/from16 v3, v34

    move-object/from16 v75, v37

    goto :goto_22

    .line 101
    :cond_1d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v33, v3

    move-object/from16 v75, v19

    move/from16 v3, v34

    .line 102
    :goto_22
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1e

    move/from16 v34, v3

    move/from16 v3, v35

    move-object/from16 v76, v37

    goto :goto_23

    .line 103
    :cond_1e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v34, v3

    move-object/from16 v76, v19

    move/from16 v3, v35

    .line 104
    :goto_23
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1f

    :goto_24
    move/from16 v35, v3

    move-object/from16 v77, v37

    goto :goto_25

    .line 105
    :cond_1f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_24

    .line 106
    :goto_25
    new-instance v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v3

    move/from16 v46, v2

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v30, v4

    move/from16 v2, v36

    move/from16 v3, v78

    move/from16 v4, v79

    move/from16 v19, v80

    move/from16 v81, v5

    move/from16 v5, p2

    move/from16 p2, v17

    move/from16 v17, v20

    move/from16 v20, v27

    move/from16 v27, v28

    move/from16 v28, v81

    move/from16 v82, v26

    move/from16 v26, v6

    move/from16 v6, v18

    move/from16 v18, v82

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_26

    .line 108
    :cond_20
    invoke-interface {v1}, Ly3/e;->close()V

    return-object v0

    :goto_26
    invoke-interface {v1}, Ly3/e;->close()V

    .line 109
    throw v0
.end method

.method private static synthetic U(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 78

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId NOT LIKE \'SINGLE_%\' ORDER BY timeStamp DESC LIMIT 1"

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
    goto/16 :goto_22

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "collectionId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v3, "ugcVideoId"

    .line 31
    .line 32
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "progress"

    .line 37
    .line 38
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "title"

    .line 43
    .line 44
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "coverUrl"

    .line 49
    .line 50
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "thumbnail"

    .line 55
    .line 56
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "position"

    .line 61
    .line 62
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "type"

    .line 67
    .line 68
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "cateLev1Id"

    .line 73
    .line 74
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-string v11, "cateLev2Id"

    .line 79
    .line 80
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    const-string v12, "cateLev3Id"

    .line 85
    .line 86
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const-string v13, "cateLev4Id"

    .line 91
    .line 92
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    const-string v14, "timeStamp"

    .line 97
    .line 98
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    const-string v15, "subtitleSelectId"

    .line 103
    .line 104
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    const-string v2, "totalDuration"

    .line 109
    .line 110
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    move/from16 p0, v2

    .line 115
    .line 116
    const-string v2, "subjectDurationSeconds"

    .line 117
    .line 118
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    move/from16 v16, v2

    .line 123
    .line 124
    const-string v2, "averageHueLight"

    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    move/from16 v17, v2

    .line 131
    .line 132
    const-string v2, "subjectType"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    move/from16 v18, v2

    .line 139
    .line 140
    const-string v2, "hasDelete"

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move/from16 v19, v2

    .line 147
    .line 148
    const-string v2, "playMode"

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    move/from16 v20, v2

    .line 155
    .line 156
    const-string v2, "downloadUrl"

    .line 157
    .line 158
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    move/from16 v21, v2

    .line 163
    .line 164
    const-string v2, "downloadResid"

    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v22, v2

    .line 171
    .line 172
    const-string v2, "downloadFilePath"

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    move/from16 v23, v2

    .line 179
    .line 180
    const-string v2, "downloadSize"

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move/from16 v24, v2

    .line 187
    .line 188
    const-string v2, "lastAdStartTimeStamp"

    .line 189
    .line 190
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    move/from16 v25, v2

    .line 195
    .line 196
    const-string v2, "lastAdEndTimeStamp"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v26, v2

    .line 203
    .line 204
    const-string v2, "rewardPlayed"

    .line 205
    .line 206
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    move/from16 v27, v2

    .line 211
    .line 212
    const-string v2, "rewardUnlock"

    .line 213
    .line 214
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    move/from16 v28, v2

    .line 219
    .line 220
    const-string v2, "rewardFree"

    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    move/from16 v29, v2

    .line 227
    .line 228
    const-string v2, "ops"

    .line 229
    .line 230
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    move/from16 v30, v2

    .line 235
    .line 236
    const-string v2, "uid"

    .line 237
    .line 238
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    move/from16 v31, v2

    .line 243
    .line 244
    const-string v2, "userName"

    .line 245
    .line 246
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    move/from16 v32, v2

    .line 251
    .line 252
    const-string v2, "userAvatar"

    .line 253
    .line 254
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    move/from16 v33, v2

    .line 259
    .line 260
    const-string v2, "description"

    .line 261
    .line 262
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    move/from16 v34, v2

    .line 267
    .line 268
    const-string v2, "videoStyle"

    .line 269
    .line 270
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    move/from16 v35, v2

    .line 275
    .line 276
    const-string v2, "kidId"

    .line 277
    .line 278
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 283
    .line 284
    .line 285
    move-result v36

    .line 286
    const/16 v37, 0x0

    .line 287
    .line 288
    if-eqz v36, :cond_21

    .line 289
    .line 290
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 291
    .line 292
    .line 293
    move-result v36

    .line 294
    if-eqz v36, :cond_1

    .line 295
    .line 296
    move-object/from16 v39, v37

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    move-object/from16 v39, v0

    .line 304
    .line 305
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    .line 311
    move-object/from16 v40, v37

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    move-object/from16 v40, v0

    .line 319
    .line 320
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v41

    .line 324
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_3

    .line 329
    .line 330
    move-object/from16 v43, v37

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_3
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    move-object/from16 v43, v0

    .line 338
    .line 339
    :goto_3
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_4

    .line 344
    .line 345
    move-object/from16 v44, v37

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_4
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    move-object/from16 v44, v0

    .line 353
    .line 354
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    .line 360
    move-object/from16 v45, v37

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_5
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    move-object/from16 v45, v0

    .line 368
    .line 369
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v3

    .line 373
    long-to-int v0, v3

    .line 374
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_6

    .line 379
    .line 380
    move-object/from16 v47, v37

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_6
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    move-object/from16 v47, v3

    .line 388
    .line 389
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_7

    .line 394
    .line 395
    move-object/from16 v48, v37

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_7
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 399
    .line 400
    .line 401
    move-result-wide v3

    .line 402
    long-to-int v3, v3

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    move-object/from16 v48, v3

    .line 408
    .line 409
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_8

    .line 414
    .line 415
    move-object/from16 v49, v37

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v3

    .line 422
    long-to-int v3, v3

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    move-object/from16 v49, v3

    .line 428
    .line 429
    :goto_8
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_9

    .line 434
    .line 435
    move-object/from16 v50, v37

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v3

    .line 442
    long-to-int v3, v3

    .line 443
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    move-object/from16 v50, v3

    .line 448
    .line 449
    :goto_9
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_a

    .line 454
    .line 455
    move-object/from16 v51, v37

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_a
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    long-to-int v3, v3

    .line 463
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    move-object/from16 v51, v3

    .line 468
    .line 469
    :goto_a
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 470
    .line 471
    .line 472
    move-result-wide v52

    .line 473
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_b

    .line 478
    .line 479
    move/from16 v3, p0

    .line 480
    .line 481
    move-object/from16 v54, v37

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_b
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    move-object/from16 v54, v3

    .line 489
    .line 490
    move/from16 v3, p0

    .line 491
    .line 492
    :goto_b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-eqz v4, :cond_c

    .line 497
    .line 498
    move/from16 v3, v16

    .line 499
    .line 500
    move-object/from16 v55, v37

    .line 501
    .line 502
    goto :goto_c

    .line 503
    :cond_c
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 504
    .line 505
    .line 506
    move-result-wide v3

    .line 507
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    move-object/from16 v55, v3

    .line 512
    .line 513
    move/from16 v3, v16

    .line 514
    .line 515
    :goto_c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-eqz v4, :cond_d

    .line 520
    .line 521
    move/from16 v3, v17

    .line 522
    .line 523
    move-object/from16 v56, v37

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_d
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    move-object/from16 v56, v3

    .line 535
    .line 536
    move/from16 v3, v17

    .line 537
    .line 538
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_e

    .line 543
    .line 544
    move/from16 v3, v18

    .line 545
    .line 546
    move-object/from16 v57, v37

    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    move-object/from16 v57, v3

    .line 554
    .line 555
    move/from16 v3, v18

    .line 556
    .line 557
    :goto_e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-eqz v4, :cond_f

    .line 562
    .line 563
    move/from16 v3, v19

    .line 564
    .line 565
    move-object/from16 v58, v37

    .line 566
    .line 567
    goto :goto_f

    .line 568
    :cond_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 569
    .line 570
    .line 571
    move-result-wide v3

    .line 572
    long-to-int v3, v3

    .line 573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    move-object/from16 v58, v3

    .line 578
    .line 579
    move/from16 v3, v19

    .line 580
    .line 581
    :goto_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 582
    .line 583
    .line 584
    move-result-wide v3

    .line 585
    long-to-int v3, v3

    .line 586
    const/4 v4, 0x0

    .line 587
    if-eqz v3, :cond_10

    .line 588
    .line 589
    move/from16 v3, v20

    .line 590
    .line 591
    const/16 v59, 0x1

    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_10
    move/from16 v59, v4

    .line 595
    .line 596
    move/from16 v3, v20

    .line 597
    .line 598
    :goto_10
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-eqz v5, :cond_11

    .line 603
    .line 604
    move/from16 v3, v21

    .line 605
    .line 606
    move-object/from16 v60, v37

    .line 607
    .line 608
    goto :goto_11

    .line 609
    :cond_11
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    move-object/from16 v60, v3

    .line 614
    .line 615
    move/from16 v3, v21

    .line 616
    .line 617
    :goto_11
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    if-eqz v5, :cond_12

    .line 622
    .line 623
    move/from16 v3, v22

    .line 624
    .line 625
    move-object/from16 v61, v37

    .line 626
    .line 627
    goto :goto_12

    .line 628
    :cond_12
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    move-object/from16 v61, v3

    .line 633
    .line 634
    move/from16 v3, v22

    .line 635
    .line 636
    :goto_12
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-eqz v5, :cond_13

    .line 641
    .line 642
    move/from16 v3, v23

    .line 643
    .line 644
    move-object/from16 v62, v37

    .line 645
    .line 646
    goto :goto_13

    .line 647
    :cond_13
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    move-object/from16 v62, v3

    .line 652
    .line 653
    move/from16 v3, v23

    .line 654
    .line 655
    :goto_13
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    if-eqz v5, :cond_14

    .line 660
    .line 661
    move/from16 v3, v24

    .line 662
    .line 663
    move-object/from16 v63, v37

    .line 664
    .line 665
    goto :goto_14

    .line 666
    :cond_14
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    move-object/from16 v63, v3

    .line 671
    .line 672
    move/from16 v3, v24

    .line 673
    .line 674
    :goto_14
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 675
    .line 676
    .line 677
    move-result-wide v64

    .line 678
    move/from16 v3, v25

    .line 679
    .line 680
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_15

    .line 685
    .line 686
    move/from16 v3, v26

    .line 687
    .line 688
    move-object/from16 v66, v37

    .line 689
    .line 690
    goto :goto_15

    .line 691
    :cond_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v5

    .line 695
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    move-object/from16 v66, v3

    .line 700
    .line 701
    move/from16 v3, v26

    .line 702
    .line 703
    :goto_15
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_16

    .line 708
    .line 709
    move/from16 v3, v27

    .line 710
    .line 711
    move-object/from16 v67, v37

    .line 712
    .line 713
    goto :goto_16

    .line 714
    :cond_16
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 715
    .line 716
    .line 717
    move-result-wide v5

    .line 718
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    move-object/from16 v67, v3

    .line 723
    .line 724
    move/from16 v3, v27

    .line 725
    .line 726
    :goto_16
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 727
    .line 728
    .line 729
    move-result-wide v5

    .line 730
    long-to-int v3, v5

    .line 731
    if-eqz v3, :cond_17

    .line 732
    .line 733
    move/from16 v3, v28

    .line 734
    .line 735
    const/16 v68, 0x1

    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_17
    move/from16 v68, v4

    .line 739
    .line 740
    move/from16 v3, v28

    .line 741
    .line 742
    :goto_17
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 743
    .line 744
    .line 745
    move-result-wide v5

    .line 746
    long-to-int v3, v5

    .line 747
    if-eqz v3, :cond_18

    .line 748
    .line 749
    move/from16 v3, v29

    .line 750
    .line 751
    const/16 v69, 0x1

    .line 752
    .line 753
    goto :goto_18

    .line 754
    :cond_18
    move/from16 v69, v4

    .line 755
    .line 756
    move/from16 v3, v29

    .line 757
    .line 758
    :goto_18
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 759
    .line 760
    .line 761
    move-result-wide v5

    .line 762
    long-to-int v3, v5

    .line 763
    if-eqz v3, :cond_19

    .line 764
    .line 765
    move/from16 v3, v30

    .line 766
    .line 767
    const/16 v70, 0x1

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_19
    move/from16 v70, v4

    .line 771
    .line 772
    move/from16 v3, v30

    .line 773
    .line 774
    :goto_19
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 775
    .line 776
    .line 777
    move-result v4

    .line 778
    if-eqz v4, :cond_1a

    .line 779
    .line 780
    move/from16 v3, v31

    .line 781
    .line 782
    move-object/from16 v71, v37

    .line 783
    .line 784
    goto :goto_1a

    .line 785
    :cond_1a
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    move-object/from16 v71, v3

    .line 790
    .line 791
    move/from16 v3, v31

    .line 792
    .line 793
    :goto_1a
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    if-eqz v4, :cond_1b

    .line 798
    .line 799
    move/from16 v3, v32

    .line 800
    .line 801
    move-object/from16 v72, v37

    .line 802
    .line 803
    goto :goto_1b

    .line 804
    :cond_1b
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    move-object/from16 v72, v3

    .line 809
    .line 810
    move/from16 v3, v32

    .line 811
    .line 812
    :goto_1b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    if-eqz v4, :cond_1c

    .line 817
    .line 818
    move/from16 v3, v33

    .line 819
    .line 820
    move-object/from16 v73, v37

    .line 821
    .line 822
    goto :goto_1c

    .line 823
    :cond_1c
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    move-object/from16 v73, v3

    .line 828
    .line 829
    move/from16 v3, v33

    .line 830
    .line 831
    :goto_1c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    if-eqz v4, :cond_1d

    .line 836
    .line 837
    move/from16 v3, v34

    .line 838
    .line 839
    move-object/from16 v74, v37

    .line 840
    .line 841
    goto :goto_1d

    .line 842
    :cond_1d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    move-object/from16 v74, v3

    .line 847
    .line 848
    move/from16 v3, v34

    .line 849
    .line 850
    :goto_1d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    if-eqz v4, :cond_1e

    .line 855
    .line 856
    move/from16 v3, v35

    .line 857
    .line 858
    move-object/from16 v75, v37

    .line 859
    .line 860
    goto :goto_1e

    .line 861
    :cond_1e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    move-object/from16 v75, v3

    .line 866
    .line 867
    move/from16 v3, v35

    .line 868
    .line 869
    :goto_1e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    if-eqz v4, :cond_1f

    .line 874
    .line 875
    move-object/from16 v76, v37

    .line 876
    .line 877
    goto :goto_1f

    .line 878
    :cond_1f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    move-object/from16 v76, v3

    .line 883
    .line 884
    :goto_1f
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-eqz v3, :cond_20

    .line 889
    .line 890
    :goto_20
    move-object/from16 v77, v37

    .line 891
    .line 892
    goto :goto_21

    .line 893
    :cond_20
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v37

    .line 897
    goto :goto_20

    .line 898
    :goto_21
    new-instance v37, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 899
    .line 900
    move-object/from16 v38, v37

    .line 901
    .line 902
    move/from16 v46, v0

    .line 903
    .line 904
    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .line 906
    .line 907
    :cond_21
    invoke-interface {v1}, Ly3/e;->close()V

    .line 908
    .line 909
    .line 910
    return-object v37

    .line 911
    :goto_22
    invoke-interface {v1}, Ly3/e;->close()V

    .line 912
    .line 913
    .line 914
    throw v0
.end method

.method private static synthetic V(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 78

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE collectionId = ? ORDER BY timeStamp DESC LIMIT 1"

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
    goto/16 :goto_22

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "collectionId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v3, "ugcVideoId"

    .line 31
    .line 32
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "progress"

    .line 37
    .line 38
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "title"

    .line 43
    .line 44
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "coverUrl"

    .line 49
    .line 50
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "thumbnail"

    .line 55
    .line 56
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "position"

    .line 61
    .line 62
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "type"

    .line 67
    .line 68
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "cateLev1Id"

    .line 73
    .line 74
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-string v11, "cateLev2Id"

    .line 79
    .line 80
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    const-string v12, "cateLev3Id"

    .line 85
    .line 86
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const-string v13, "cateLev4Id"

    .line 91
    .line 92
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    const-string v14, "timeStamp"

    .line 97
    .line 98
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    const-string v15, "subtitleSelectId"

    .line 103
    .line 104
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    const-string v2, "totalDuration"

    .line 109
    .line 110
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    move/from16 p0, v2

    .line 115
    .line 116
    const-string v2, "subjectDurationSeconds"

    .line 117
    .line 118
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    move/from16 v16, v2

    .line 123
    .line 124
    const-string v2, "averageHueLight"

    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    move/from16 v17, v2

    .line 131
    .line 132
    const-string v2, "subjectType"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    move/from16 v18, v2

    .line 139
    .line 140
    const-string v2, "hasDelete"

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move/from16 v19, v2

    .line 147
    .line 148
    const-string v2, "playMode"

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    move/from16 v20, v2

    .line 155
    .line 156
    const-string v2, "downloadUrl"

    .line 157
    .line 158
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    move/from16 v21, v2

    .line 163
    .line 164
    const-string v2, "downloadResid"

    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v22, v2

    .line 171
    .line 172
    const-string v2, "downloadFilePath"

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    move/from16 v23, v2

    .line 179
    .line 180
    const-string v2, "downloadSize"

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move/from16 v24, v2

    .line 187
    .line 188
    const-string v2, "lastAdStartTimeStamp"

    .line 189
    .line 190
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    move/from16 v25, v2

    .line 195
    .line 196
    const-string v2, "lastAdEndTimeStamp"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v26, v2

    .line 203
    .line 204
    const-string v2, "rewardPlayed"

    .line 205
    .line 206
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    move/from16 v27, v2

    .line 211
    .line 212
    const-string v2, "rewardUnlock"

    .line 213
    .line 214
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    move/from16 v28, v2

    .line 219
    .line 220
    const-string v2, "rewardFree"

    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    move/from16 v29, v2

    .line 227
    .line 228
    const-string v2, "ops"

    .line 229
    .line 230
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    move/from16 v30, v2

    .line 235
    .line 236
    const-string v2, "uid"

    .line 237
    .line 238
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    move/from16 v31, v2

    .line 243
    .line 244
    const-string v2, "userName"

    .line 245
    .line 246
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    move/from16 v32, v2

    .line 251
    .line 252
    const-string v2, "userAvatar"

    .line 253
    .line 254
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    move/from16 v33, v2

    .line 259
    .line 260
    const-string v2, "description"

    .line 261
    .line 262
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    move/from16 v34, v2

    .line 267
    .line 268
    const-string v2, "videoStyle"

    .line 269
    .line 270
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    move/from16 v35, v2

    .line 275
    .line 276
    const-string v2, "kidId"

    .line 277
    .line 278
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 283
    .line 284
    .line 285
    move-result v36

    .line 286
    const/16 v37, 0x0

    .line 287
    .line 288
    if-eqz v36, :cond_21

    .line 289
    .line 290
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 291
    .line 292
    .line 293
    move-result v36

    .line 294
    if-eqz v36, :cond_1

    .line 295
    .line 296
    move-object/from16 v39, v37

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    move-object/from16 v39, v0

    .line 304
    .line 305
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    .line 311
    move-object/from16 v40, v37

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    move-object/from16 v40, v0

    .line 319
    .line 320
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v41

    .line 324
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_3

    .line 329
    .line 330
    move-object/from16 v43, v37

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_3
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    move-object/from16 v43, v0

    .line 338
    .line 339
    :goto_3
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_4

    .line 344
    .line 345
    move-object/from16 v44, v37

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_4
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    move-object/from16 v44, v0

    .line 353
    .line 354
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    .line 360
    move-object/from16 v45, v37

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_5
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    move-object/from16 v45, v0

    .line 368
    .line 369
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v3

    .line 373
    long-to-int v0, v3

    .line 374
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_6

    .line 379
    .line 380
    move-object/from16 v47, v37

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_6
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    move-object/from16 v47, v3

    .line 388
    .line 389
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_7

    .line 394
    .line 395
    move-object/from16 v48, v37

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_7
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 399
    .line 400
    .line 401
    move-result-wide v3

    .line 402
    long-to-int v3, v3

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    move-object/from16 v48, v3

    .line 408
    .line 409
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_8

    .line 414
    .line 415
    move-object/from16 v49, v37

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v3

    .line 422
    long-to-int v3, v3

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    move-object/from16 v49, v3

    .line 428
    .line 429
    :goto_8
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_9

    .line 434
    .line 435
    move-object/from16 v50, v37

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v3

    .line 442
    long-to-int v3, v3

    .line 443
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    move-object/from16 v50, v3

    .line 448
    .line 449
    :goto_9
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_a

    .line 454
    .line 455
    move-object/from16 v51, v37

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_a
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    long-to-int v3, v3

    .line 463
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    move-object/from16 v51, v3

    .line 468
    .line 469
    :goto_a
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 470
    .line 471
    .line 472
    move-result-wide v52

    .line 473
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_b

    .line 478
    .line 479
    move/from16 v3, p0

    .line 480
    .line 481
    move-object/from16 v54, v37

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_b
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    move-object/from16 v54, v3

    .line 489
    .line 490
    move/from16 v3, p0

    .line 491
    .line 492
    :goto_b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-eqz v4, :cond_c

    .line 497
    .line 498
    move/from16 v3, v16

    .line 499
    .line 500
    move-object/from16 v55, v37

    .line 501
    .line 502
    goto :goto_c

    .line 503
    :cond_c
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 504
    .line 505
    .line 506
    move-result-wide v3

    .line 507
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    move-object/from16 v55, v3

    .line 512
    .line 513
    move/from16 v3, v16

    .line 514
    .line 515
    :goto_c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-eqz v4, :cond_d

    .line 520
    .line 521
    move/from16 v3, v17

    .line 522
    .line 523
    move-object/from16 v56, v37

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_d
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    move-object/from16 v56, v3

    .line 535
    .line 536
    move/from16 v3, v17

    .line 537
    .line 538
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_e

    .line 543
    .line 544
    move/from16 v3, v18

    .line 545
    .line 546
    move-object/from16 v57, v37

    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    move-object/from16 v57, v3

    .line 554
    .line 555
    move/from16 v3, v18

    .line 556
    .line 557
    :goto_e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-eqz v4, :cond_f

    .line 562
    .line 563
    move/from16 v3, v19

    .line 564
    .line 565
    move-object/from16 v58, v37

    .line 566
    .line 567
    goto :goto_f

    .line 568
    :cond_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 569
    .line 570
    .line 571
    move-result-wide v3

    .line 572
    long-to-int v3, v3

    .line 573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    move-object/from16 v58, v3

    .line 578
    .line 579
    move/from16 v3, v19

    .line 580
    .line 581
    :goto_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 582
    .line 583
    .line 584
    move-result-wide v3

    .line 585
    long-to-int v3, v3

    .line 586
    const/4 v4, 0x0

    .line 587
    if-eqz v3, :cond_10

    .line 588
    .line 589
    move/from16 v3, v20

    .line 590
    .line 591
    const/16 v59, 0x1

    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_10
    move/from16 v59, v4

    .line 595
    .line 596
    move/from16 v3, v20

    .line 597
    .line 598
    :goto_10
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-eqz v5, :cond_11

    .line 603
    .line 604
    move/from16 v3, v21

    .line 605
    .line 606
    move-object/from16 v60, v37

    .line 607
    .line 608
    goto :goto_11

    .line 609
    :cond_11
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    move-object/from16 v60, v3

    .line 614
    .line 615
    move/from16 v3, v21

    .line 616
    .line 617
    :goto_11
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    if-eqz v5, :cond_12

    .line 622
    .line 623
    move/from16 v3, v22

    .line 624
    .line 625
    move-object/from16 v61, v37

    .line 626
    .line 627
    goto :goto_12

    .line 628
    :cond_12
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    move-object/from16 v61, v3

    .line 633
    .line 634
    move/from16 v3, v22

    .line 635
    .line 636
    :goto_12
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-eqz v5, :cond_13

    .line 641
    .line 642
    move/from16 v3, v23

    .line 643
    .line 644
    move-object/from16 v62, v37

    .line 645
    .line 646
    goto :goto_13

    .line 647
    :cond_13
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    move-object/from16 v62, v3

    .line 652
    .line 653
    move/from16 v3, v23

    .line 654
    .line 655
    :goto_13
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    if-eqz v5, :cond_14

    .line 660
    .line 661
    move/from16 v3, v24

    .line 662
    .line 663
    move-object/from16 v63, v37

    .line 664
    .line 665
    goto :goto_14

    .line 666
    :cond_14
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    move-object/from16 v63, v3

    .line 671
    .line 672
    move/from16 v3, v24

    .line 673
    .line 674
    :goto_14
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 675
    .line 676
    .line 677
    move-result-wide v64

    .line 678
    move/from16 v3, v25

    .line 679
    .line 680
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_15

    .line 685
    .line 686
    move/from16 v3, v26

    .line 687
    .line 688
    move-object/from16 v66, v37

    .line 689
    .line 690
    goto :goto_15

    .line 691
    :cond_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v5

    .line 695
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    move-object/from16 v66, v3

    .line 700
    .line 701
    move/from16 v3, v26

    .line 702
    .line 703
    :goto_15
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_16

    .line 708
    .line 709
    move/from16 v3, v27

    .line 710
    .line 711
    move-object/from16 v67, v37

    .line 712
    .line 713
    goto :goto_16

    .line 714
    :cond_16
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 715
    .line 716
    .line 717
    move-result-wide v5

    .line 718
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    move-object/from16 v67, v3

    .line 723
    .line 724
    move/from16 v3, v27

    .line 725
    .line 726
    :goto_16
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 727
    .line 728
    .line 729
    move-result-wide v5

    .line 730
    long-to-int v3, v5

    .line 731
    if-eqz v3, :cond_17

    .line 732
    .line 733
    move/from16 v3, v28

    .line 734
    .line 735
    const/16 v68, 0x1

    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_17
    move/from16 v68, v4

    .line 739
    .line 740
    move/from16 v3, v28

    .line 741
    .line 742
    :goto_17
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 743
    .line 744
    .line 745
    move-result-wide v5

    .line 746
    long-to-int v3, v5

    .line 747
    if-eqz v3, :cond_18

    .line 748
    .line 749
    move/from16 v3, v29

    .line 750
    .line 751
    const/16 v69, 0x1

    .line 752
    .line 753
    goto :goto_18

    .line 754
    :cond_18
    move/from16 v69, v4

    .line 755
    .line 756
    move/from16 v3, v29

    .line 757
    .line 758
    :goto_18
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 759
    .line 760
    .line 761
    move-result-wide v5

    .line 762
    long-to-int v3, v5

    .line 763
    if-eqz v3, :cond_19

    .line 764
    .line 765
    move/from16 v3, v30

    .line 766
    .line 767
    const/16 v70, 0x1

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_19
    move/from16 v70, v4

    .line 771
    .line 772
    move/from16 v3, v30

    .line 773
    .line 774
    :goto_19
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 775
    .line 776
    .line 777
    move-result v4

    .line 778
    if-eqz v4, :cond_1a

    .line 779
    .line 780
    move/from16 v3, v31

    .line 781
    .line 782
    move-object/from16 v71, v37

    .line 783
    .line 784
    goto :goto_1a

    .line 785
    :cond_1a
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    move-object/from16 v71, v3

    .line 790
    .line 791
    move/from16 v3, v31

    .line 792
    .line 793
    :goto_1a
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    if-eqz v4, :cond_1b

    .line 798
    .line 799
    move/from16 v3, v32

    .line 800
    .line 801
    move-object/from16 v72, v37

    .line 802
    .line 803
    goto :goto_1b

    .line 804
    :cond_1b
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    move-object/from16 v72, v3

    .line 809
    .line 810
    move/from16 v3, v32

    .line 811
    .line 812
    :goto_1b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    if-eqz v4, :cond_1c

    .line 817
    .line 818
    move/from16 v3, v33

    .line 819
    .line 820
    move-object/from16 v73, v37

    .line 821
    .line 822
    goto :goto_1c

    .line 823
    :cond_1c
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    move-object/from16 v73, v3

    .line 828
    .line 829
    move/from16 v3, v33

    .line 830
    .line 831
    :goto_1c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    if-eqz v4, :cond_1d

    .line 836
    .line 837
    move/from16 v3, v34

    .line 838
    .line 839
    move-object/from16 v74, v37

    .line 840
    .line 841
    goto :goto_1d

    .line 842
    :cond_1d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    move-object/from16 v74, v3

    .line 847
    .line 848
    move/from16 v3, v34

    .line 849
    .line 850
    :goto_1d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    if-eqz v4, :cond_1e

    .line 855
    .line 856
    move/from16 v3, v35

    .line 857
    .line 858
    move-object/from16 v75, v37

    .line 859
    .line 860
    goto :goto_1e

    .line 861
    :cond_1e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    move-object/from16 v75, v3

    .line 866
    .line 867
    move/from16 v3, v35

    .line 868
    .line 869
    :goto_1e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    if-eqz v4, :cond_1f

    .line 874
    .line 875
    move-object/from16 v76, v37

    .line 876
    .line 877
    goto :goto_1f

    .line 878
    :cond_1f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    move-object/from16 v76, v3

    .line 883
    .line 884
    :goto_1f
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-eqz v3, :cond_20

    .line 889
    .line 890
    :goto_20
    move-object/from16 v77, v37

    .line 891
    .line 892
    goto :goto_21

    .line 893
    :cond_20
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v37

    .line 897
    goto :goto_20

    .line 898
    :goto_21
    new-instance v37, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 899
    .line 900
    move-object/from16 v38, v37

    .line 901
    .line 902
    move/from16 v46, v0

    .line 903
    .line 904
    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .line 906
    .line 907
    :cond_21
    invoke-interface {v1}, Ly3/e;->close()V

    .line 908
    .line 909
    .line 910
    return-object v37

    .line 911
    :goto_22
    invoke-interface {v1}, Ly3/e;->close()V

    .line 912
    .line 913
    .line 914
    throw v0
.end method

.method private static synthetic W(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 77

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId = ? ORDER BY timeStamp DESC LIMIT 1"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-interface {v3, v2}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v2, v3}, Ly3/e;->g(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto/16 :goto_23

    .line 22
    .line 23
    :cond_0
    invoke-interface {v2, v3, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ly3/e;->g(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    const-string v0, "collectionId"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v1, "ugcVideoId"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v4, "progress"

    .line 49
    .line 50
    invoke-static {v2, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v5, "title"

    .line 55
    .line 56
    invoke-static {v2, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v6, "coverUrl"

    .line 61
    .line 62
    invoke-static {v2, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-string v7, "thumbnail"

    .line 67
    .line 68
    invoke-static {v2, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const-string v8, "position"

    .line 73
    .line 74
    invoke-static {v2, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    const-string v9, "type"

    .line 79
    .line 80
    invoke-static {v2, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    const-string v10, "cateLev1Id"

    .line 85
    .line 86
    invoke-static {v2, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    const-string v11, "cateLev2Id"

    .line 91
    .line 92
    invoke-static {v2, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    const-string v12, "cateLev3Id"

    .line 97
    .line 98
    invoke-static {v2, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const-string v13, "cateLev4Id"

    .line 103
    .line 104
    invoke-static {v2, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    const-string v14, "timeStamp"

    .line 109
    .line 110
    invoke-static {v2, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    const-string v15, "subtitleSelectId"

    .line 115
    .line 116
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const-string v3, "totalDuration"

    .line 121
    .line 122
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    move/from16 p0, v3

    .line 127
    .line 128
    const-string v3, "subjectDurationSeconds"

    .line 129
    .line 130
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    move/from16 p1, v3

    .line 135
    .line 136
    const-string v3, "averageHueLight"

    .line 137
    .line 138
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    move/from16 v16, v3

    .line 143
    .line 144
    const-string v3, "subjectType"

    .line 145
    .line 146
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move/from16 v17, v3

    .line 151
    .line 152
    const-string v3, "hasDelete"

    .line 153
    .line 154
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    move/from16 v18, v3

    .line 159
    .line 160
    const-string v3, "playMode"

    .line 161
    .line 162
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    move/from16 v19, v3

    .line 167
    .line 168
    const-string v3, "downloadUrl"

    .line 169
    .line 170
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    move/from16 v20, v3

    .line 175
    .line 176
    const-string v3, "downloadResid"

    .line 177
    .line 178
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    move/from16 v21, v3

    .line 183
    .line 184
    const-string v3, "downloadFilePath"

    .line 185
    .line 186
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    move/from16 v22, v3

    .line 191
    .line 192
    const-string v3, "downloadSize"

    .line 193
    .line 194
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    move/from16 v23, v3

    .line 199
    .line 200
    const-string v3, "lastAdStartTimeStamp"

    .line 201
    .line 202
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    move/from16 v24, v3

    .line 207
    .line 208
    const-string v3, "lastAdEndTimeStamp"

    .line 209
    .line 210
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    move/from16 v25, v3

    .line 215
    .line 216
    const-string v3, "rewardPlayed"

    .line 217
    .line 218
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    move/from16 v26, v3

    .line 223
    .line 224
    const-string v3, "rewardUnlock"

    .line 225
    .line 226
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    move/from16 v27, v3

    .line 231
    .line 232
    const-string v3, "rewardFree"

    .line 233
    .line 234
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    move/from16 v28, v3

    .line 239
    .line 240
    const-string v3, "ops"

    .line 241
    .line 242
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    move/from16 v29, v3

    .line 247
    .line 248
    const-string v3, "uid"

    .line 249
    .line 250
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    move/from16 v30, v3

    .line 255
    .line 256
    const-string v3, "userName"

    .line 257
    .line 258
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    move/from16 v31, v3

    .line 263
    .line 264
    const-string v3, "userAvatar"

    .line 265
    .line 266
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    move/from16 v32, v3

    .line 271
    .line 272
    const-string v3, "description"

    .line 273
    .line 274
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    move/from16 v33, v3

    .line 279
    .line 280
    const-string v3, "videoStyle"

    .line 281
    .line 282
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    move/from16 v34, v3

    .line 287
    .line 288
    const-string v3, "kidId"

    .line 289
    .line 290
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-interface {v2}, Ly3/e;->C0()Z

    .line 295
    .line 296
    .line 297
    move-result v35

    .line 298
    const/16 v36, 0x0

    .line 299
    .line 300
    if-eqz v35, :cond_22

    .line 301
    .line 302
    invoke-interface {v2, v0}, Ly3/e;->isNull(I)Z

    .line 303
    .line 304
    .line 305
    move-result v35

    .line 306
    if-eqz v35, :cond_2

    .line 307
    .line 308
    move-object/from16 v38, v36

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_2
    invoke-interface {v2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    move-object/from16 v38, v0

    .line 316
    .line 317
    :goto_2
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_3

    .line 322
    .line 323
    move-object/from16 v39, v36

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_3
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    move-object/from16 v39, v0

    .line 331
    .line 332
    :goto_3
    invoke-interface {v2, v4}, Ly3/e;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v40

    .line 336
    invoke-interface {v2, v5}, Ly3/e;->isNull(I)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_4

    .line 341
    .line 342
    move-object/from16 v42, v36

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_4
    invoke-interface {v2, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    move-object/from16 v42, v0

    .line 350
    .line 351
    :goto_4
    invoke-interface {v2, v6}, Ly3/e;->isNull(I)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_5

    .line 356
    .line 357
    move-object/from16 v43, v36

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_5
    invoke-interface {v2, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    move-object/from16 v43, v0

    .line 365
    .line 366
    :goto_5
    invoke-interface {v2, v7}, Ly3/e;->isNull(I)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_6

    .line 371
    .line 372
    move-object/from16 v44, v36

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_6
    invoke-interface {v2, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    move-object/from16 v44, v0

    .line 380
    .line 381
    :goto_6
    invoke-interface {v2, v8}, Ly3/e;->getLong(I)J

    .line 382
    .line 383
    .line 384
    move-result-wide v0

    .line 385
    long-to-int v0, v0

    .line 386
    invoke-interface {v2, v9}, Ly3/e;->isNull(I)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_7

    .line 391
    .line 392
    move-object/from16 v46, v36

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_7
    invoke-interface {v2, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    move-object/from16 v46, v1

    .line 400
    .line 401
    :goto_7
    invoke-interface {v2, v10}, Ly3/e;->isNull(I)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_8

    .line 406
    .line 407
    move-object/from16 v47, v36

    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_8
    invoke-interface {v2, v10}, Ly3/e;->getLong(I)J

    .line 411
    .line 412
    .line 413
    move-result-wide v4

    .line 414
    long-to-int v1, v4

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    move-object/from16 v47, v1

    .line 420
    .line 421
    :goto_8
    invoke-interface {v2, v11}, Ly3/e;->isNull(I)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_9

    .line 426
    .line 427
    move-object/from16 v48, v36

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_9
    invoke-interface {v2, v11}, Ly3/e;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v4

    .line 434
    long-to-int v1, v4

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    move-object/from16 v48, v1

    .line 440
    .line 441
    :goto_9
    invoke-interface {v2, v12}, Ly3/e;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_a

    .line 446
    .line 447
    move-object/from16 v49, v36

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_a
    invoke-interface {v2, v12}, Ly3/e;->getLong(I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    long-to-int v1, v4

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    move-object/from16 v49, v1

    .line 460
    .line 461
    :goto_a
    invoke-interface {v2, v13}, Ly3/e;->isNull(I)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_b

    .line 466
    .line 467
    move-object/from16 v50, v36

    .line 468
    .line 469
    goto :goto_b

    .line 470
    :cond_b
    invoke-interface {v2, v13}, Ly3/e;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    long-to-int v1, v4

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    move-object/from16 v50, v1

    .line 480
    .line 481
    :goto_b
    invoke-interface {v2, v14}, Ly3/e;->getLong(I)J

    .line 482
    .line 483
    .line 484
    move-result-wide v51

    .line 485
    invoke-interface {v2, v15}, Ly3/e;->isNull(I)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_c

    .line 490
    .line 491
    move/from16 v1, p0

    .line 492
    .line 493
    move-object/from16 v53, v36

    .line 494
    .line 495
    goto :goto_c

    .line 496
    :cond_c
    invoke-interface {v2, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    move-object/from16 v53, v1

    .line 501
    .line 502
    move/from16 v1, p0

    .line 503
    .line 504
    :goto_c
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-eqz v4, :cond_d

    .line 509
    .line 510
    move/from16 v1, p1

    .line 511
    .line 512
    move-object/from16 v54, v36

    .line 513
    .line 514
    goto :goto_d

    .line 515
    :cond_d
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 516
    .line 517
    .line 518
    move-result-wide v4

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    move-object/from16 v54, v1

    .line 524
    .line 525
    move/from16 v1, p1

    .line 526
    .line 527
    :goto_d
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_e

    .line 532
    .line 533
    move/from16 v1, v16

    .line 534
    .line 535
    move-object/from16 v55, v36

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_e
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 539
    .line 540
    .line 541
    move-result-wide v4

    .line 542
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    move-object/from16 v55, v1

    .line 547
    .line 548
    move/from16 v1, v16

    .line 549
    .line 550
    :goto_e
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    if-eqz v4, :cond_f

    .line 555
    .line 556
    move/from16 v1, v17

    .line 557
    .line 558
    move-object/from16 v56, v36

    .line 559
    .line 560
    goto :goto_f

    .line 561
    :cond_f
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    move-object/from16 v56, v1

    .line 566
    .line 567
    move/from16 v1, v17

    .line 568
    .line 569
    :goto_f
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_10

    .line 574
    .line 575
    move/from16 v1, v18

    .line 576
    .line 577
    move-object/from16 v57, v36

    .line 578
    .line 579
    goto :goto_10

    .line 580
    :cond_10
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 581
    .line 582
    .line 583
    move-result-wide v4

    .line 584
    long-to-int v1, v4

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    move-object/from16 v57, v1

    .line 590
    .line 591
    move/from16 v1, v18

    .line 592
    .line 593
    :goto_10
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 594
    .line 595
    .line 596
    move-result-wide v4

    .line 597
    long-to-int v1, v4

    .line 598
    const/4 v4, 0x0

    .line 599
    if-eqz v1, :cond_11

    .line 600
    .line 601
    move/from16 v1, v19

    .line 602
    .line 603
    const/16 v58, 0x1

    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_11
    move/from16 v58, v4

    .line 607
    .line 608
    move/from16 v1, v19

    .line 609
    .line 610
    :goto_11
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    if-eqz v5, :cond_12

    .line 615
    .line 616
    move/from16 v1, v20

    .line 617
    .line 618
    move-object/from16 v59, v36

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_12
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    move-object/from16 v59, v1

    .line 626
    .line 627
    move/from16 v1, v20

    .line 628
    .line 629
    :goto_12
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_13

    .line 634
    .line 635
    move/from16 v1, v21

    .line 636
    .line 637
    move-object/from16 v60, v36

    .line 638
    .line 639
    goto :goto_13

    .line 640
    :cond_13
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    move-object/from16 v60, v1

    .line 645
    .line 646
    move/from16 v1, v21

    .line 647
    .line 648
    :goto_13
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    if-eqz v5, :cond_14

    .line 653
    .line 654
    move/from16 v1, v22

    .line 655
    .line 656
    move-object/from16 v61, v36

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_14
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    move-object/from16 v61, v1

    .line 664
    .line 665
    move/from16 v1, v22

    .line 666
    .line 667
    :goto_14
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_15

    .line 672
    .line 673
    move/from16 v1, v23

    .line 674
    .line 675
    move-object/from16 v62, v36

    .line 676
    .line 677
    goto :goto_15

    .line 678
    :cond_15
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    move-object/from16 v62, v1

    .line 683
    .line 684
    move/from16 v1, v23

    .line 685
    .line 686
    :goto_15
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 687
    .line 688
    .line 689
    move-result-wide v63

    .line 690
    move/from16 v1, v24

    .line 691
    .line 692
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    if-eqz v5, :cond_16

    .line 697
    .line 698
    move/from16 v1, v25

    .line 699
    .line 700
    move-object/from16 v65, v36

    .line 701
    .line 702
    goto :goto_16

    .line 703
    :cond_16
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 704
    .line 705
    .line 706
    move-result-wide v5

    .line 707
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    move-object/from16 v65, v1

    .line 712
    .line 713
    move/from16 v1, v25

    .line 714
    .line 715
    :goto_16
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eqz v5, :cond_17

    .line 720
    .line 721
    move/from16 v1, v26

    .line 722
    .line 723
    move-object/from16 v66, v36

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_17
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 727
    .line 728
    .line 729
    move-result-wide v5

    .line 730
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    move-object/from16 v66, v1

    .line 735
    .line 736
    move/from16 v1, v26

    .line 737
    .line 738
    :goto_17
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 739
    .line 740
    .line 741
    move-result-wide v5

    .line 742
    long-to-int v1, v5

    .line 743
    if-eqz v1, :cond_18

    .line 744
    .line 745
    move/from16 v1, v27

    .line 746
    .line 747
    const/16 v67, 0x1

    .line 748
    .line 749
    goto :goto_18

    .line 750
    :cond_18
    move/from16 v67, v4

    .line 751
    .line 752
    move/from16 v1, v27

    .line 753
    .line 754
    :goto_18
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    long-to-int v1, v5

    .line 759
    if-eqz v1, :cond_19

    .line 760
    .line 761
    move/from16 v1, v28

    .line 762
    .line 763
    const/16 v68, 0x1

    .line 764
    .line 765
    goto :goto_19

    .line 766
    :cond_19
    move/from16 v68, v4

    .line 767
    .line 768
    move/from16 v1, v28

    .line 769
    .line 770
    :goto_19
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 771
    .line 772
    .line 773
    move-result-wide v5

    .line 774
    long-to-int v1, v5

    .line 775
    if-eqz v1, :cond_1a

    .line 776
    .line 777
    move/from16 v1, v29

    .line 778
    .line 779
    const/16 v69, 0x1

    .line 780
    .line 781
    goto :goto_1a

    .line 782
    :cond_1a
    move/from16 v69, v4

    .line 783
    .line 784
    move/from16 v1, v29

    .line 785
    .line 786
    :goto_1a
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    if-eqz v4, :cond_1b

    .line 791
    .line 792
    move/from16 v1, v30

    .line 793
    .line 794
    move-object/from16 v70, v36

    .line 795
    .line 796
    goto :goto_1b

    .line 797
    :cond_1b
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    move-object/from16 v70, v1

    .line 802
    .line 803
    move/from16 v1, v30

    .line 804
    .line 805
    :goto_1b
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 806
    .line 807
    .line 808
    move-result v4

    .line 809
    if-eqz v4, :cond_1c

    .line 810
    .line 811
    move/from16 v1, v31

    .line 812
    .line 813
    move-object/from16 v71, v36

    .line 814
    .line 815
    goto :goto_1c

    .line 816
    :cond_1c
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    move-object/from16 v71, v1

    .line 821
    .line 822
    move/from16 v1, v31

    .line 823
    .line 824
    :goto_1c
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 825
    .line 826
    .line 827
    move-result v4

    .line 828
    if-eqz v4, :cond_1d

    .line 829
    .line 830
    move/from16 v1, v32

    .line 831
    .line 832
    move-object/from16 v72, v36

    .line 833
    .line 834
    goto :goto_1d

    .line 835
    :cond_1d
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    move-object/from16 v72, v1

    .line 840
    .line 841
    move/from16 v1, v32

    .line 842
    .line 843
    :goto_1d
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_1e

    .line 848
    .line 849
    move/from16 v1, v33

    .line 850
    .line 851
    move-object/from16 v73, v36

    .line 852
    .line 853
    goto :goto_1e

    .line 854
    :cond_1e
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    move-object/from16 v73, v1

    .line 859
    .line 860
    move/from16 v1, v33

    .line 861
    .line 862
    :goto_1e
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    if-eqz v4, :cond_1f

    .line 867
    .line 868
    move/from16 v1, v34

    .line 869
    .line 870
    move-object/from16 v74, v36

    .line 871
    .line 872
    goto :goto_1f

    .line 873
    :cond_1f
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    move-object/from16 v74, v1

    .line 878
    .line 879
    move/from16 v1, v34

    .line 880
    .line 881
    :goto_1f
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 882
    .line 883
    .line 884
    move-result v4

    .line 885
    if-eqz v4, :cond_20

    .line 886
    .line 887
    move-object/from16 v75, v36

    .line 888
    .line 889
    goto :goto_20

    .line 890
    :cond_20
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    move-object/from16 v75, v1

    .line 895
    .line 896
    :goto_20
    invoke-interface {v2, v3}, Ly3/e;->isNull(I)Z

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    if-eqz v1, :cond_21

    .line 901
    .line 902
    :goto_21
    move-object/from16 v76, v36

    .line 903
    .line 904
    goto :goto_22

    .line 905
    :cond_21
    invoke-interface {v2, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v36

    .line 909
    goto :goto_21

    .line 910
    :goto_22
    new-instance v36, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 911
    .line 912
    move-object/from16 v37, v36

    .line 913
    .line 914
    move/from16 v45, v0

    .line 915
    .line 916
    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .line 918
    .line 919
    :cond_22
    invoke-interface {v2}, Ly3/e;->close()V

    .line 920
    .line 921
    .line 922
    return-object v36

    .line 923
    :goto_23
    invoke-interface {v2}, Ly3/e;->close()V

    .line 924
    .line 925
    .line 926
    throw v0
.end method

.method private static synthetic X(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 77

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-interface {v3, v2}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v2, v3}, Ly3/e;->g(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto/16 :goto_23

    .line 22
    .line 23
    :cond_0
    invoke-interface {v2, v3, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ly3/e;->g(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    const-string v0, "collectionId"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v1, "ugcVideoId"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v4, "progress"

    .line 49
    .line 50
    invoke-static {v2, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v5, "title"

    .line 55
    .line 56
    invoke-static {v2, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v6, "coverUrl"

    .line 61
    .line 62
    invoke-static {v2, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-string v7, "thumbnail"

    .line 67
    .line 68
    invoke-static {v2, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const-string v8, "position"

    .line 73
    .line 74
    invoke-static {v2, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    const-string v9, "type"

    .line 79
    .line 80
    invoke-static {v2, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    const-string v10, "cateLev1Id"

    .line 85
    .line 86
    invoke-static {v2, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    const-string v11, "cateLev2Id"

    .line 91
    .line 92
    invoke-static {v2, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    const-string v12, "cateLev3Id"

    .line 97
    .line 98
    invoke-static {v2, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const-string v13, "cateLev4Id"

    .line 103
    .line 104
    invoke-static {v2, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    const-string v14, "timeStamp"

    .line 109
    .line 110
    invoke-static {v2, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    const-string v15, "subtitleSelectId"

    .line 115
    .line 116
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const-string v3, "totalDuration"

    .line 121
    .line 122
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    move/from16 p0, v3

    .line 127
    .line 128
    const-string v3, "subjectDurationSeconds"

    .line 129
    .line 130
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    move/from16 p1, v3

    .line 135
    .line 136
    const-string v3, "averageHueLight"

    .line 137
    .line 138
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    move/from16 v16, v3

    .line 143
    .line 144
    const-string v3, "subjectType"

    .line 145
    .line 146
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move/from16 v17, v3

    .line 151
    .line 152
    const-string v3, "hasDelete"

    .line 153
    .line 154
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    move/from16 v18, v3

    .line 159
    .line 160
    const-string v3, "playMode"

    .line 161
    .line 162
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    move/from16 v19, v3

    .line 167
    .line 168
    const-string v3, "downloadUrl"

    .line 169
    .line 170
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    move/from16 v20, v3

    .line 175
    .line 176
    const-string v3, "downloadResid"

    .line 177
    .line 178
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    move/from16 v21, v3

    .line 183
    .line 184
    const-string v3, "downloadFilePath"

    .line 185
    .line 186
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    move/from16 v22, v3

    .line 191
    .line 192
    const-string v3, "downloadSize"

    .line 193
    .line 194
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    move/from16 v23, v3

    .line 199
    .line 200
    const-string v3, "lastAdStartTimeStamp"

    .line 201
    .line 202
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    move/from16 v24, v3

    .line 207
    .line 208
    const-string v3, "lastAdEndTimeStamp"

    .line 209
    .line 210
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    move/from16 v25, v3

    .line 215
    .line 216
    const-string v3, "rewardPlayed"

    .line 217
    .line 218
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    move/from16 v26, v3

    .line 223
    .line 224
    const-string v3, "rewardUnlock"

    .line 225
    .line 226
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    move/from16 v27, v3

    .line 231
    .line 232
    const-string v3, "rewardFree"

    .line 233
    .line 234
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    move/from16 v28, v3

    .line 239
    .line 240
    const-string v3, "ops"

    .line 241
    .line 242
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    move/from16 v29, v3

    .line 247
    .line 248
    const-string v3, "uid"

    .line 249
    .line 250
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    move/from16 v30, v3

    .line 255
    .line 256
    const-string v3, "userName"

    .line 257
    .line 258
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    move/from16 v31, v3

    .line 263
    .line 264
    const-string v3, "userAvatar"

    .line 265
    .line 266
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    move/from16 v32, v3

    .line 271
    .line 272
    const-string v3, "description"

    .line 273
    .line 274
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    move/from16 v33, v3

    .line 279
    .line 280
    const-string v3, "videoStyle"

    .line 281
    .line 282
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    move/from16 v34, v3

    .line 287
    .line 288
    const-string v3, "kidId"

    .line 289
    .line 290
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-interface {v2}, Ly3/e;->C0()Z

    .line 295
    .line 296
    .line 297
    move-result v35

    .line 298
    const/16 v36, 0x0

    .line 299
    .line 300
    if-eqz v35, :cond_22

    .line 301
    .line 302
    invoke-interface {v2, v0}, Ly3/e;->isNull(I)Z

    .line 303
    .line 304
    .line 305
    move-result v35

    .line 306
    if-eqz v35, :cond_2

    .line 307
    .line 308
    move-object/from16 v38, v36

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_2
    invoke-interface {v2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    move-object/from16 v38, v0

    .line 316
    .line 317
    :goto_2
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_3

    .line 322
    .line 323
    move-object/from16 v39, v36

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_3
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    move-object/from16 v39, v0

    .line 331
    .line 332
    :goto_3
    invoke-interface {v2, v4}, Ly3/e;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v40

    .line 336
    invoke-interface {v2, v5}, Ly3/e;->isNull(I)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_4

    .line 341
    .line 342
    move-object/from16 v42, v36

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_4
    invoke-interface {v2, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    move-object/from16 v42, v0

    .line 350
    .line 351
    :goto_4
    invoke-interface {v2, v6}, Ly3/e;->isNull(I)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_5

    .line 356
    .line 357
    move-object/from16 v43, v36

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_5
    invoke-interface {v2, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    move-object/from16 v43, v0

    .line 365
    .line 366
    :goto_5
    invoke-interface {v2, v7}, Ly3/e;->isNull(I)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_6

    .line 371
    .line 372
    move-object/from16 v44, v36

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_6
    invoke-interface {v2, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    move-object/from16 v44, v0

    .line 380
    .line 381
    :goto_6
    invoke-interface {v2, v8}, Ly3/e;->getLong(I)J

    .line 382
    .line 383
    .line 384
    move-result-wide v0

    .line 385
    long-to-int v0, v0

    .line 386
    invoke-interface {v2, v9}, Ly3/e;->isNull(I)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_7

    .line 391
    .line 392
    move-object/from16 v46, v36

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_7
    invoke-interface {v2, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    move-object/from16 v46, v1

    .line 400
    .line 401
    :goto_7
    invoke-interface {v2, v10}, Ly3/e;->isNull(I)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_8

    .line 406
    .line 407
    move-object/from16 v47, v36

    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_8
    invoke-interface {v2, v10}, Ly3/e;->getLong(I)J

    .line 411
    .line 412
    .line 413
    move-result-wide v4

    .line 414
    long-to-int v1, v4

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    move-object/from16 v47, v1

    .line 420
    .line 421
    :goto_8
    invoke-interface {v2, v11}, Ly3/e;->isNull(I)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_9

    .line 426
    .line 427
    move-object/from16 v48, v36

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_9
    invoke-interface {v2, v11}, Ly3/e;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v4

    .line 434
    long-to-int v1, v4

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    move-object/from16 v48, v1

    .line 440
    .line 441
    :goto_9
    invoke-interface {v2, v12}, Ly3/e;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_a

    .line 446
    .line 447
    move-object/from16 v49, v36

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_a
    invoke-interface {v2, v12}, Ly3/e;->getLong(I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    long-to-int v1, v4

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    move-object/from16 v49, v1

    .line 460
    .line 461
    :goto_a
    invoke-interface {v2, v13}, Ly3/e;->isNull(I)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_b

    .line 466
    .line 467
    move-object/from16 v50, v36

    .line 468
    .line 469
    goto :goto_b

    .line 470
    :cond_b
    invoke-interface {v2, v13}, Ly3/e;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    long-to-int v1, v4

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    move-object/from16 v50, v1

    .line 480
    .line 481
    :goto_b
    invoke-interface {v2, v14}, Ly3/e;->getLong(I)J

    .line 482
    .line 483
    .line 484
    move-result-wide v51

    .line 485
    invoke-interface {v2, v15}, Ly3/e;->isNull(I)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_c

    .line 490
    .line 491
    move/from16 v1, p0

    .line 492
    .line 493
    move-object/from16 v53, v36

    .line 494
    .line 495
    goto :goto_c

    .line 496
    :cond_c
    invoke-interface {v2, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    move-object/from16 v53, v1

    .line 501
    .line 502
    move/from16 v1, p0

    .line 503
    .line 504
    :goto_c
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-eqz v4, :cond_d

    .line 509
    .line 510
    move/from16 v1, p1

    .line 511
    .line 512
    move-object/from16 v54, v36

    .line 513
    .line 514
    goto :goto_d

    .line 515
    :cond_d
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 516
    .line 517
    .line 518
    move-result-wide v4

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    move-object/from16 v54, v1

    .line 524
    .line 525
    move/from16 v1, p1

    .line 526
    .line 527
    :goto_d
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_e

    .line 532
    .line 533
    move/from16 v1, v16

    .line 534
    .line 535
    move-object/from16 v55, v36

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_e
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 539
    .line 540
    .line 541
    move-result-wide v4

    .line 542
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    move-object/from16 v55, v1

    .line 547
    .line 548
    move/from16 v1, v16

    .line 549
    .line 550
    :goto_e
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    if-eqz v4, :cond_f

    .line 555
    .line 556
    move/from16 v1, v17

    .line 557
    .line 558
    move-object/from16 v56, v36

    .line 559
    .line 560
    goto :goto_f

    .line 561
    :cond_f
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    move-object/from16 v56, v1

    .line 566
    .line 567
    move/from16 v1, v17

    .line 568
    .line 569
    :goto_f
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_10

    .line 574
    .line 575
    move/from16 v1, v18

    .line 576
    .line 577
    move-object/from16 v57, v36

    .line 578
    .line 579
    goto :goto_10

    .line 580
    :cond_10
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 581
    .line 582
    .line 583
    move-result-wide v4

    .line 584
    long-to-int v1, v4

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    move-object/from16 v57, v1

    .line 590
    .line 591
    move/from16 v1, v18

    .line 592
    .line 593
    :goto_10
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 594
    .line 595
    .line 596
    move-result-wide v4

    .line 597
    long-to-int v1, v4

    .line 598
    const/4 v4, 0x0

    .line 599
    if-eqz v1, :cond_11

    .line 600
    .line 601
    move/from16 v1, v19

    .line 602
    .line 603
    const/16 v58, 0x1

    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_11
    move/from16 v58, v4

    .line 607
    .line 608
    move/from16 v1, v19

    .line 609
    .line 610
    :goto_11
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    if-eqz v5, :cond_12

    .line 615
    .line 616
    move/from16 v1, v20

    .line 617
    .line 618
    move-object/from16 v59, v36

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_12
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    move-object/from16 v59, v1

    .line 626
    .line 627
    move/from16 v1, v20

    .line 628
    .line 629
    :goto_12
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_13

    .line 634
    .line 635
    move/from16 v1, v21

    .line 636
    .line 637
    move-object/from16 v60, v36

    .line 638
    .line 639
    goto :goto_13

    .line 640
    :cond_13
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    move-object/from16 v60, v1

    .line 645
    .line 646
    move/from16 v1, v21

    .line 647
    .line 648
    :goto_13
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    if-eqz v5, :cond_14

    .line 653
    .line 654
    move/from16 v1, v22

    .line 655
    .line 656
    move-object/from16 v61, v36

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_14
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    move-object/from16 v61, v1

    .line 664
    .line 665
    move/from16 v1, v22

    .line 666
    .line 667
    :goto_14
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_15

    .line 672
    .line 673
    move/from16 v1, v23

    .line 674
    .line 675
    move-object/from16 v62, v36

    .line 676
    .line 677
    goto :goto_15

    .line 678
    :cond_15
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    move-object/from16 v62, v1

    .line 683
    .line 684
    move/from16 v1, v23

    .line 685
    .line 686
    :goto_15
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 687
    .line 688
    .line 689
    move-result-wide v63

    .line 690
    move/from16 v1, v24

    .line 691
    .line 692
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    if-eqz v5, :cond_16

    .line 697
    .line 698
    move/from16 v1, v25

    .line 699
    .line 700
    move-object/from16 v65, v36

    .line 701
    .line 702
    goto :goto_16

    .line 703
    :cond_16
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 704
    .line 705
    .line 706
    move-result-wide v5

    .line 707
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    move-object/from16 v65, v1

    .line 712
    .line 713
    move/from16 v1, v25

    .line 714
    .line 715
    :goto_16
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eqz v5, :cond_17

    .line 720
    .line 721
    move/from16 v1, v26

    .line 722
    .line 723
    move-object/from16 v66, v36

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_17
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 727
    .line 728
    .line 729
    move-result-wide v5

    .line 730
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    move-object/from16 v66, v1

    .line 735
    .line 736
    move/from16 v1, v26

    .line 737
    .line 738
    :goto_17
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 739
    .line 740
    .line 741
    move-result-wide v5

    .line 742
    long-to-int v1, v5

    .line 743
    if-eqz v1, :cond_18

    .line 744
    .line 745
    move/from16 v1, v27

    .line 746
    .line 747
    const/16 v67, 0x1

    .line 748
    .line 749
    goto :goto_18

    .line 750
    :cond_18
    move/from16 v67, v4

    .line 751
    .line 752
    move/from16 v1, v27

    .line 753
    .line 754
    :goto_18
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    long-to-int v1, v5

    .line 759
    if-eqz v1, :cond_19

    .line 760
    .line 761
    move/from16 v1, v28

    .line 762
    .line 763
    const/16 v68, 0x1

    .line 764
    .line 765
    goto :goto_19

    .line 766
    :cond_19
    move/from16 v68, v4

    .line 767
    .line 768
    move/from16 v1, v28

    .line 769
    .line 770
    :goto_19
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 771
    .line 772
    .line 773
    move-result-wide v5

    .line 774
    long-to-int v1, v5

    .line 775
    if-eqz v1, :cond_1a

    .line 776
    .line 777
    move/from16 v1, v29

    .line 778
    .line 779
    const/16 v69, 0x1

    .line 780
    .line 781
    goto :goto_1a

    .line 782
    :cond_1a
    move/from16 v69, v4

    .line 783
    .line 784
    move/from16 v1, v29

    .line 785
    .line 786
    :goto_1a
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    if-eqz v4, :cond_1b

    .line 791
    .line 792
    move/from16 v1, v30

    .line 793
    .line 794
    move-object/from16 v70, v36

    .line 795
    .line 796
    goto :goto_1b

    .line 797
    :cond_1b
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    move-object/from16 v70, v1

    .line 802
    .line 803
    move/from16 v1, v30

    .line 804
    .line 805
    :goto_1b
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 806
    .line 807
    .line 808
    move-result v4

    .line 809
    if-eqz v4, :cond_1c

    .line 810
    .line 811
    move/from16 v1, v31

    .line 812
    .line 813
    move-object/from16 v71, v36

    .line 814
    .line 815
    goto :goto_1c

    .line 816
    :cond_1c
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    move-object/from16 v71, v1

    .line 821
    .line 822
    move/from16 v1, v31

    .line 823
    .line 824
    :goto_1c
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 825
    .line 826
    .line 827
    move-result v4

    .line 828
    if-eqz v4, :cond_1d

    .line 829
    .line 830
    move/from16 v1, v32

    .line 831
    .line 832
    move-object/from16 v72, v36

    .line 833
    .line 834
    goto :goto_1d

    .line 835
    :cond_1d
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    move-object/from16 v72, v1

    .line 840
    .line 841
    move/from16 v1, v32

    .line 842
    .line 843
    :goto_1d
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_1e

    .line 848
    .line 849
    move/from16 v1, v33

    .line 850
    .line 851
    move-object/from16 v73, v36

    .line 852
    .line 853
    goto :goto_1e

    .line 854
    :cond_1e
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    move-object/from16 v73, v1

    .line 859
    .line 860
    move/from16 v1, v33

    .line 861
    .line 862
    :goto_1e
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    if-eqz v4, :cond_1f

    .line 867
    .line 868
    move/from16 v1, v34

    .line 869
    .line 870
    move-object/from16 v74, v36

    .line 871
    .line 872
    goto :goto_1f

    .line 873
    :cond_1f
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    move-object/from16 v74, v1

    .line 878
    .line 879
    move/from16 v1, v34

    .line 880
    .line 881
    :goto_1f
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 882
    .line 883
    .line 884
    move-result v4

    .line 885
    if-eqz v4, :cond_20

    .line 886
    .line 887
    move-object/from16 v75, v36

    .line 888
    .line 889
    goto :goto_20

    .line 890
    :cond_20
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    move-object/from16 v75, v1

    .line 895
    .line 896
    :goto_20
    invoke-interface {v2, v3}, Ly3/e;->isNull(I)Z

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    if-eqz v1, :cond_21

    .line 901
    .line 902
    :goto_21
    move-object/from16 v76, v36

    .line 903
    .line 904
    goto :goto_22

    .line 905
    :cond_21
    invoke-interface {v2, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v36

    .line 909
    goto :goto_21

    .line 910
    :goto_22
    new-instance v36, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 911
    .line 912
    move-object/from16 v37, v36

    .line 913
    .line 914
    move/from16 v45, v0

    .line 915
    .line 916
    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .line 918
    .line 919
    :cond_22
    invoke-interface {v2}, Ly3/e;->close()V

    .line 920
    .line 921
    .line 922
    return-object v36

    .line 923
    :goto_23
    invoke-interface {v2}, Ly3/e;->close()V

    .line 924
    .line 925
    .line 926
    throw v0
.end method

.method private static synthetic Y(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 78

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND (kidId IS NULL OR kidId = \'\') ORDER BY timeStamp DESC LIMIT 1"

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
    goto/16 :goto_22

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "collectionId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v3, "ugcVideoId"

    .line 31
    .line 32
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "progress"

    .line 37
    .line 38
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "title"

    .line 43
    .line 44
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "coverUrl"

    .line 49
    .line 50
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "thumbnail"

    .line 55
    .line 56
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "position"

    .line 61
    .line 62
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "type"

    .line 67
    .line 68
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "cateLev1Id"

    .line 73
    .line 74
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-string v11, "cateLev2Id"

    .line 79
    .line 80
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    const-string v12, "cateLev3Id"

    .line 85
    .line 86
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const-string v13, "cateLev4Id"

    .line 91
    .line 92
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    const-string v14, "timeStamp"

    .line 97
    .line 98
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    const-string v15, "subtitleSelectId"

    .line 103
    .line 104
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    const-string v2, "totalDuration"

    .line 109
    .line 110
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    move/from16 p0, v2

    .line 115
    .line 116
    const-string v2, "subjectDurationSeconds"

    .line 117
    .line 118
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    move/from16 v16, v2

    .line 123
    .line 124
    const-string v2, "averageHueLight"

    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    move/from16 v17, v2

    .line 131
    .line 132
    const-string v2, "subjectType"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    move/from16 v18, v2

    .line 139
    .line 140
    const-string v2, "hasDelete"

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move/from16 v19, v2

    .line 147
    .line 148
    const-string v2, "playMode"

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    move/from16 v20, v2

    .line 155
    .line 156
    const-string v2, "downloadUrl"

    .line 157
    .line 158
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    move/from16 v21, v2

    .line 163
    .line 164
    const-string v2, "downloadResid"

    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v22, v2

    .line 171
    .line 172
    const-string v2, "downloadFilePath"

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    move/from16 v23, v2

    .line 179
    .line 180
    const-string v2, "downloadSize"

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move/from16 v24, v2

    .line 187
    .line 188
    const-string v2, "lastAdStartTimeStamp"

    .line 189
    .line 190
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    move/from16 v25, v2

    .line 195
    .line 196
    const-string v2, "lastAdEndTimeStamp"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v26, v2

    .line 203
    .line 204
    const-string v2, "rewardPlayed"

    .line 205
    .line 206
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    move/from16 v27, v2

    .line 211
    .line 212
    const-string v2, "rewardUnlock"

    .line 213
    .line 214
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    move/from16 v28, v2

    .line 219
    .line 220
    const-string v2, "rewardFree"

    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    move/from16 v29, v2

    .line 227
    .line 228
    const-string v2, "ops"

    .line 229
    .line 230
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    move/from16 v30, v2

    .line 235
    .line 236
    const-string v2, "uid"

    .line 237
    .line 238
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    move/from16 v31, v2

    .line 243
    .line 244
    const-string v2, "userName"

    .line 245
    .line 246
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    move/from16 v32, v2

    .line 251
    .line 252
    const-string v2, "userAvatar"

    .line 253
    .line 254
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    move/from16 v33, v2

    .line 259
    .line 260
    const-string v2, "description"

    .line 261
    .line 262
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    move/from16 v34, v2

    .line 267
    .line 268
    const-string v2, "videoStyle"

    .line 269
    .line 270
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    move/from16 v35, v2

    .line 275
    .line 276
    const-string v2, "kidId"

    .line 277
    .line 278
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 283
    .line 284
    .line 285
    move-result v36

    .line 286
    const/16 v37, 0x0

    .line 287
    .line 288
    if-eqz v36, :cond_21

    .line 289
    .line 290
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 291
    .line 292
    .line 293
    move-result v36

    .line 294
    if-eqz v36, :cond_1

    .line 295
    .line 296
    move-object/from16 v39, v37

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    move-object/from16 v39, v0

    .line 304
    .line 305
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    .line 311
    move-object/from16 v40, v37

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    move-object/from16 v40, v0

    .line 319
    .line 320
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v41

    .line 324
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_3

    .line 329
    .line 330
    move-object/from16 v43, v37

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_3
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    move-object/from16 v43, v0

    .line 338
    .line 339
    :goto_3
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_4

    .line 344
    .line 345
    move-object/from16 v44, v37

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_4
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    move-object/from16 v44, v0

    .line 353
    .line 354
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    .line 360
    move-object/from16 v45, v37

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_5
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    move-object/from16 v45, v0

    .line 368
    .line 369
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v3

    .line 373
    long-to-int v0, v3

    .line 374
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_6

    .line 379
    .line 380
    move-object/from16 v47, v37

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_6
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    move-object/from16 v47, v3

    .line 388
    .line 389
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_7

    .line 394
    .line 395
    move-object/from16 v48, v37

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_7
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 399
    .line 400
    .line 401
    move-result-wide v3

    .line 402
    long-to-int v3, v3

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    move-object/from16 v48, v3

    .line 408
    .line 409
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_8

    .line 414
    .line 415
    move-object/from16 v49, v37

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v3

    .line 422
    long-to-int v3, v3

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    move-object/from16 v49, v3

    .line 428
    .line 429
    :goto_8
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_9

    .line 434
    .line 435
    move-object/from16 v50, v37

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v3

    .line 442
    long-to-int v3, v3

    .line 443
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    move-object/from16 v50, v3

    .line 448
    .line 449
    :goto_9
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_a

    .line 454
    .line 455
    move-object/from16 v51, v37

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_a
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    long-to-int v3, v3

    .line 463
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    move-object/from16 v51, v3

    .line 468
    .line 469
    :goto_a
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 470
    .line 471
    .line 472
    move-result-wide v52

    .line 473
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_b

    .line 478
    .line 479
    move/from16 v3, p0

    .line 480
    .line 481
    move-object/from16 v54, v37

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_b
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    move-object/from16 v54, v3

    .line 489
    .line 490
    move/from16 v3, p0

    .line 491
    .line 492
    :goto_b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-eqz v4, :cond_c

    .line 497
    .line 498
    move/from16 v3, v16

    .line 499
    .line 500
    move-object/from16 v55, v37

    .line 501
    .line 502
    goto :goto_c

    .line 503
    :cond_c
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 504
    .line 505
    .line 506
    move-result-wide v3

    .line 507
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    move-object/from16 v55, v3

    .line 512
    .line 513
    move/from16 v3, v16

    .line 514
    .line 515
    :goto_c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-eqz v4, :cond_d

    .line 520
    .line 521
    move/from16 v3, v17

    .line 522
    .line 523
    move-object/from16 v56, v37

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_d
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    move-object/from16 v56, v3

    .line 535
    .line 536
    move/from16 v3, v17

    .line 537
    .line 538
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_e

    .line 543
    .line 544
    move/from16 v3, v18

    .line 545
    .line 546
    move-object/from16 v57, v37

    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    move-object/from16 v57, v3

    .line 554
    .line 555
    move/from16 v3, v18

    .line 556
    .line 557
    :goto_e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-eqz v4, :cond_f

    .line 562
    .line 563
    move/from16 v3, v19

    .line 564
    .line 565
    move-object/from16 v58, v37

    .line 566
    .line 567
    goto :goto_f

    .line 568
    :cond_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 569
    .line 570
    .line 571
    move-result-wide v3

    .line 572
    long-to-int v3, v3

    .line 573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    move-object/from16 v58, v3

    .line 578
    .line 579
    move/from16 v3, v19

    .line 580
    .line 581
    :goto_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 582
    .line 583
    .line 584
    move-result-wide v3

    .line 585
    long-to-int v3, v3

    .line 586
    const/4 v4, 0x0

    .line 587
    if-eqz v3, :cond_10

    .line 588
    .line 589
    move/from16 v3, v20

    .line 590
    .line 591
    const/16 v59, 0x1

    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_10
    move/from16 v59, v4

    .line 595
    .line 596
    move/from16 v3, v20

    .line 597
    .line 598
    :goto_10
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-eqz v5, :cond_11

    .line 603
    .line 604
    move/from16 v3, v21

    .line 605
    .line 606
    move-object/from16 v60, v37

    .line 607
    .line 608
    goto :goto_11

    .line 609
    :cond_11
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    move-object/from16 v60, v3

    .line 614
    .line 615
    move/from16 v3, v21

    .line 616
    .line 617
    :goto_11
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    if-eqz v5, :cond_12

    .line 622
    .line 623
    move/from16 v3, v22

    .line 624
    .line 625
    move-object/from16 v61, v37

    .line 626
    .line 627
    goto :goto_12

    .line 628
    :cond_12
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    move-object/from16 v61, v3

    .line 633
    .line 634
    move/from16 v3, v22

    .line 635
    .line 636
    :goto_12
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-eqz v5, :cond_13

    .line 641
    .line 642
    move/from16 v3, v23

    .line 643
    .line 644
    move-object/from16 v62, v37

    .line 645
    .line 646
    goto :goto_13

    .line 647
    :cond_13
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    move-object/from16 v62, v3

    .line 652
    .line 653
    move/from16 v3, v23

    .line 654
    .line 655
    :goto_13
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    if-eqz v5, :cond_14

    .line 660
    .line 661
    move/from16 v3, v24

    .line 662
    .line 663
    move-object/from16 v63, v37

    .line 664
    .line 665
    goto :goto_14

    .line 666
    :cond_14
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    move-object/from16 v63, v3

    .line 671
    .line 672
    move/from16 v3, v24

    .line 673
    .line 674
    :goto_14
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 675
    .line 676
    .line 677
    move-result-wide v64

    .line 678
    move/from16 v3, v25

    .line 679
    .line 680
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_15

    .line 685
    .line 686
    move/from16 v3, v26

    .line 687
    .line 688
    move-object/from16 v66, v37

    .line 689
    .line 690
    goto :goto_15

    .line 691
    :cond_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v5

    .line 695
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    move-object/from16 v66, v3

    .line 700
    .line 701
    move/from16 v3, v26

    .line 702
    .line 703
    :goto_15
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_16

    .line 708
    .line 709
    move/from16 v3, v27

    .line 710
    .line 711
    move-object/from16 v67, v37

    .line 712
    .line 713
    goto :goto_16

    .line 714
    :cond_16
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 715
    .line 716
    .line 717
    move-result-wide v5

    .line 718
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    move-object/from16 v67, v3

    .line 723
    .line 724
    move/from16 v3, v27

    .line 725
    .line 726
    :goto_16
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 727
    .line 728
    .line 729
    move-result-wide v5

    .line 730
    long-to-int v3, v5

    .line 731
    if-eqz v3, :cond_17

    .line 732
    .line 733
    move/from16 v3, v28

    .line 734
    .line 735
    const/16 v68, 0x1

    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_17
    move/from16 v68, v4

    .line 739
    .line 740
    move/from16 v3, v28

    .line 741
    .line 742
    :goto_17
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 743
    .line 744
    .line 745
    move-result-wide v5

    .line 746
    long-to-int v3, v5

    .line 747
    if-eqz v3, :cond_18

    .line 748
    .line 749
    move/from16 v3, v29

    .line 750
    .line 751
    const/16 v69, 0x1

    .line 752
    .line 753
    goto :goto_18

    .line 754
    :cond_18
    move/from16 v69, v4

    .line 755
    .line 756
    move/from16 v3, v29

    .line 757
    .line 758
    :goto_18
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 759
    .line 760
    .line 761
    move-result-wide v5

    .line 762
    long-to-int v3, v5

    .line 763
    if-eqz v3, :cond_19

    .line 764
    .line 765
    move/from16 v3, v30

    .line 766
    .line 767
    const/16 v70, 0x1

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_19
    move/from16 v70, v4

    .line 771
    .line 772
    move/from16 v3, v30

    .line 773
    .line 774
    :goto_19
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 775
    .line 776
    .line 777
    move-result v4

    .line 778
    if-eqz v4, :cond_1a

    .line 779
    .line 780
    move/from16 v3, v31

    .line 781
    .line 782
    move-object/from16 v71, v37

    .line 783
    .line 784
    goto :goto_1a

    .line 785
    :cond_1a
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    move-object/from16 v71, v3

    .line 790
    .line 791
    move/from16 v3, v31

    .line 792
    .line 793
    :goto_1a
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    if-eqz v4, :cond_1b

    .line 798
    .line 799
    move/from16 v3, v32

    .line 800
    .line 801
    move-object/from16 v72, v37

    .line 802
    .line 803
    goto :goto_1b

    .line 804
    :cond_1b
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    move-object/from16 v72, v3

    .line 809
    .line 810
    move/from16 v3, v32

    .line 811
    .line 812
    :goto_1b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    if-eqz v4, :cond_1c

    .line 817
    .line 818
    move/from16 v3, v33

    .line 819
    .line 820
    move-object/from16 v73, v37

    .line 821
    .line 822
    goto :goto_1c

    .line 823
    :cond_1c
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    move-object/from16 v73, v3

    .line 828
    .line 829
    move/from16 v3, v33

    .line 830
    .line 831
    :goto_1c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    if-eqz v4, :cond_1d

    .line 836
    .line 837
    move/from16 v3, v34

    .line 838
    .line 839
    move-object/from16 v74, v37

    .line 840
    .line 841
    goto :goto_1d

    .line 842
    :cond_1d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    move-object/from16 v74, v3

    .line 847
    .line 848
    move/from16 v3, v34

    .line 849
    .line 850
    :goto_1d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    if-eqz v4, :cond_1e

    .line 855
    .line 856
    move/from16 v3, v35

    .line 857
    .line 858
    move-object/from16 v75, v37

    .line 859
    .line 860
    goto :goto_1e

    .line 861
    :cond_1e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    move-object/from16 v75, v3

    .line 866
    .line 867
    move/from16 v3, v35

    .line 868
    .line 869
    :goto_1e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    if-eqz v4, :cond_1f

    .line 874
    .line 875
    move-object/from16 v76, v37

    .line 876
    .line 877
    goto :goto_1f

    .line 878
    :cond_1f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    move-object/from16 v76, v3

    .line 883
    .line 884
    :goto_1f
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-eqz v3, :cond_20

    .line 889
    .line 890
    :goto_20
    move-object/from16 v77, v37

    .line 891
    .line 892
    goto :goto_21

    .line 893
    :cond_20
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v37

    .line 897
    goto :goto_20

    .line 898
    :goto_21
    new-instance v37, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 899
    .line 900
    move-object/from16 v38, v37

    .line 901
    .line 902
    move/from16 v46, v0

    .line 903
    .line 904
    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .line 906
    .line 907
    :cond_21
    invoke-interface {v1}, Ly3/e;->close()V

    .line 908
    .line 909
    .line 910
    return-object v37

    .line 911
    :goto_22
    invoke-interface {v1}, Ly3/e;->close()V

    .line 912
    .line 913
    .line 914
    throw v0
.end method

.method private static synthetic Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 76

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1"

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    invoke-interface {v4, v3}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-interface {v3, v4}, Ly3/e;->g(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_24

    .line 24
    .line 25
    :cond_0
    invoke-interface {v3, v4, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, 0x2

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v3, v0}, Ly3/e;->g(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {v3, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    const/4 v0, 0x3

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v3, v0}, Ly3/e;->g(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-interface {v3, v0, v2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    const-string v0, "collectionId"

    .line 49
    .line 50
    invoke-static {v3, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "ugcVideoId"

    .line 55
    .line 56
    invoke-static {v3, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const-string v2, "progress"

    .line 61
    .line 62
    invoke-static {v3, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const-string v5, "title"

    .line 67
    .line 68
    invoke-static {v3, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string v6, "coverUrl"

    .line 73
    .line 74
    invoke-static {v3, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const-string v7, "thumbnail"

    .line 79
    .line 80
    invoke-static {v3, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const-string v8, "position"

    .line 85
    .line 86
    invoke-static {v3, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const-string v9, "type"

    .line 91
    .line 92
    invoke-static {v3, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    const-string v10, "cateLev1Id"

    .line 97
    .line 98
    invoke-static {v3, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const-string v11, "cateLev2Id"

    .line 103
    .line 104
    invoke-static {v3, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    const-string v12, "cateLev3Id"

    .line 109
    .line 110
    invoke-static {v3, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    const-string v13, "cateLev4Id"

    .line 115
    .line 116
    invoke-static {v3, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    const-string v14, "timeStamp"

    .line 121
    .line 122
    invoke-static {v3, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    const-string v15, "subtitleSelectId"

    .line 127
    .line 128
    invoke-static {v3, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    const-string v4, "totalDuration"

    .line 133
    .line 134
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    move/from16 p0, v4

    .line 139
    .line 140
    const-string v4, "subjectDurationSeconds"

    .line 141
    .line 142
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    move/from16 p1, v4

    .line 147
    .line 148
    const-string v4, "averageHueLight"

    .line 149
    .line 150
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    move/from16 p2, v4

    .line 155
    .line 156
    const-string v4, "subjectType"

    .line 157
    .line 158
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    move/from16 v16, v4

    .line 163
    .line 164
    const-string v4, "hasDelete"

    .line 165
    .line 166
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    move/from16 v17, v4

    .line 171
    .line 172
    const-string v4, "playMode"

    .line 173
    .line 174
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    move/from16 v18, v4

    .line 179
    .line 180
    const-string v4, "downloadUrl"

    .line 181
    .line 182
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    move/from16 v19, v4

    .line 187
    .line 188
    const-string v4, "downloadResid"

    .line 189
    .line 190
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    move/from16 v20, v4

    .line 195
    .line 196
    const-string v4, "downloadFilePath"

    .line 197
    .line 198
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    move/from16 v21, v4

    .line 203
    .line 204
    const-string v4, "downloadSize"

    .line 205
    .line 206
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    move/from16 v22, v4

    .line 211
    .line 212
    const-string v4, "lastAdStartTimeStamp"

    .line 213
    .line 214
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    move/from16 v23, v4

    .line 219
    .line 220
    const-string v4, "lastAdEndTimeStamp"

    .line 221
    .line 222
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    move/from16 v24, v4

    .line 227
    .line 228
    const-string v4, "rewardPlayed"

    .line 229
    .line 230
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    move/from16 v25, v4

    .line 235
    .line 236
    const-string v4, "rewardUnlock"

    .line 237
    .line 238
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    move/from16 v26, v4

    .line 243
    .line 244
    const-string v4, "rewardFree"

    .line 245
    .line 246
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    move/from16 v27, v4

    .line 251
    .line 252
    const-string v4, "ops"

    .line 253
    .line 254
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    move/from16 v28, v4

    .line 259
    .line 260
    const-string v4, "uid"

    .line 261
    .line 262
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    move/from16 v29, v4

    .line 267
    .line 268
    const-string v4, "userName"

    .line 269
    .line 270
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    move/from16 v30, v4

    .line 275
    .line 276
    const-string v4, "userAvatar"

    .line 277
    .line 278
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    move/from16 v31, v4

    .line 283
    .line 284
    const-string v4, "description"

    .line 285
    .line 286
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    move/from16 v32, v4

    .line 291
    .line 292
    const-string v4, "videoStyle"

    .line 293
    .line 294
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    move/from16 v33, v4

    .line 299
    .line 300
    const-string v4, "kidId"

    .line 301
    .line 302
    invoke-static {v3, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    invoke-interface {v3}, Ly3/e;->C0()Z

    .line 307
    .line 308
    .line 309
    move-result v34

    .line 310
    const/16 v35, 0x0

    .line 311
    .line 312
    if-eqz v34, :cond_23

    .line 313
    .line 314
    invoke-interface {v3, v0}, Ly3/e;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v34

    .line 318
    if-eqz v34, :cond_3

    .line 319
    .line 320
    move-object/from16 v37, v35

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_3
    invoke-interface {v3, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    move-object/from16 v37, v0

    .line 328
    .line 329
    :goto_3
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_4

    .line 334
    .line 335
    move-object/from16 v38, v35

    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_4
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    move-object/from16 v38, v0

    .line 343
    .line 344
    :goto_4
    invoke-interface {v3, v2}, Ly3/e;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v39

    .line 348
    invoke-interface {v3, v5}, Ly3/e;->isNull(I)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_5

    .line 353
    .line 354
    move-object/from16 v41, v35

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_5
    invoke-interface {v3, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    move-object/from16 v41, v0

    .line 362
    .line 363
    :goto_5
    invoke-interface {v3, v6}, Ly3/e;->isNull(I)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_6

    .line 368
    .line 369
    move-object/from16 v42, v35

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_6
    invoke-interface {v3, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    move-object/from16 v42, v0

    .line 377
    .line 378
    :goto_6
    invoke-interface {v3, v7}, Ly3/e;->isNull(I)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_7

    .line 383
    .line 384
    move-object/from16 v43, v35

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_7
    invoke-interface {v3, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    move-object/from16 v43, v0

    .line 392
    .line 393
    :goto_7
    invoke-interface {v3, v8}, Ly3/e;->getLong(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v0

    .line 397
    long-to-int v0, v0

    .line 398
    invoke-interface {v3, v9}, Ly3/e;->isNull(I)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_8

    .line 403
    .line 404
    move-object/from16 v45, v35

    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_8
    invoke-interface {v3, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    move-object/from16 v45, v1

    .line 412
    .line 413
    :goto_8
    invoke-interface {v3, v10}, Ly3/e;->isNull(I)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_9

    .line 418
    .line 419
    move-object/from16 v46, v35

    .line 420
    .line 421
    goto :goto_9

    .line 422
    :cond_9
    invoke-interface {v3, v10}, Ly3/e;->getLong(I)J

    .line 423
    .line 424
    .line 425
    move-result-wide v1

    .line 426
    long-to-int v1, v1

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    move-object/from16 v46, v1

    .line 432
    .line 433
    :goto_9
    invoke-interface {v3, v11}, Ly3/e;->isNull(I)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_a

    .line 438
    .line 439
    move-object/from16 v47, v35

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_a
    invoke-interface {v3, v11}, Ly3/e;->getLong(I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v1

    .line 446
    long-to-int v1, v1

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    move-object/from16 v47, v1

    .line 452
    .line 453
    :goto_a
    invoke-interface {v3, v12}, Ly3/e;->isNull(I)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_b

    .line 458
    .line 459
    move-object/from16 v48, v35

    .line 460
    .line 461
    goto :goto_b

    .line 462
    :cond_b
    invoke-interface {v3, v12}, Ly3/e;->getLong(I)J

    .line 463
    .line 464
    .line 465
    move-result-wide v1

    .line 466
    long-to-int v1, v1

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    move-object/from16 v48, v1

    .line 472
    .line 473
    :goto_b
    invoke-interface {v3, v13}, Ly3/e;->isNull(I)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_c

    .line 478
    .line 479
    move-object/from16 v49, v35

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_c
    invoke-interface {v3, v13}, Ly3/e;->getLong(I)J

    .line 483
    .line 484
    .line 485
    move-result-wide v1

    .line 486
    long-to-int v1, v1

    .line 487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    move-object/from16 v49, v1

    .line 492
    .line 493
    :goto_c
    invoke-interface {v3, v14}, Ly3/e;->getLong(I)J

    .line 494
    .line 495
    .line 496
    move-result-wide v50

    .line 497
    invoke-interface {v3, v15}, Ly3/e;->isNull(I)Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_d

    .line 502
    .line 503
    move/from16 v1, p0

    .line 504
    .line 505
    move-object/from16 v52, v35

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_d
    invoke-interface {v3, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    move-object/from16 v52, v1

    .line 513
    .line 514
    move/from16 v1, p0

    .line 515
    .line 516
    :goto_d
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-eqz v2, :cond_e

    .line 521
    .line 522
    move/from16 v1, p1

    .line 523
    .line 524
    move-object/from16 v53, v35

    .line 525
    .line 526
    goto :goto_e

    .line 527
    :cond_e
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 528
    .line 529
    .line 530
    move-result-wide v1

    .line 531
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    move-object/from16 v53, v1

    .line 536
    .line 537
    move/from16 v1, p1

    .line 538
    .line 539
    :goto_e
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-eqz v2, :cond_f

    .line 544
    .line 545
    move/from16 v1, p2

    .line 546
    .line 547
    move-object/from16 v54, v35

    .line 548
    .line 549
    goto :goto_f

    .line 550
    :cond_f
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 551
    .line 552
    .line 553
    move-result-wide v1

    .line 554
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    move-object/from16 v54, v1

    .line 559
    .line 560
    move/from16 v1, p2

    .line 561
    .line 562
    :goto_f
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-eqz v2, :cond_10

    .line 567
    .line 568
    move/from16 v1, v16

    .line 569
    .line 570
    move-object/from16 v55, v35

    .line 571
    .line 572
    goto :goto_10

    .line 573
    :cond_10
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    move-object/from16 v55, v1

    .line 578
    .line 579
    move/from16 v1, v16

    .line 580
    .line 581
    :goto_10
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    if-eqz v2, :cond_11

    .line 586
    .line 587
    move/from16 v1, v17

    .line 588
    .line 589
    move-object/from16 v56, v35

    .line 590
    .line 591
    goto :goto_11

    .line 592
    :cond_11
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 593
    .line 594
    .line 595
    move-result-wide v1

    .line 596
    long-to-int v1, v1

    .line 597
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    move-object/from16 v56, v1

    .line 602
    .line 603
    move/from16 v1, v17

    .line 604
    .line 605
    :goto_11
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 606
    .line 607
    .line 608
    move-result-wide v1

    .line 609
    long-to-int v1, v1

    .line 610
    const/4 v2, 0x0

    .line 611
    if-eqz v1, :cond_12

    .line 612
    .line 613
    move/from16 v1, v18

    .line 614
    .line 615
    const/16 v57, 0x1

    .line 616
    .line 617
    goto :goto_12

    .line 618
    :cond_12
    move/from16 v57, v2

    .line 619
    .line 620
    move/from16 v1, v18

    .line 621
    .line 622
    :goto_12
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    if-eqz v5, :cond_13

    .line 627
    .line 628
    move/from16 v1, v19

    .line 629
    .line 630
    move-object/from16 v58, v35

    .line 631
    .line 632
    goto :goto_13

    .line 633
    :cond_13
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    move-object/from16 v58, v1

    .line 638
    .line 639
    move/from16 v1, v19

    .line 640
    .line 641
    :goto_13
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    if-eqz v5, :cond_14

    .line 646
    .line 647
    move/from16 v1, v20

    .line 648
    .line 649
    move-object/from16 v59, v35

    .line 650
    .line 651
    goto :goto_14

    .line 652
    :cond_14
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    move-object/from16 v59, v1

    .line 657
    .line 658
    move/from16 v1, v20

    .line 659
    .line 660
    :goto_14
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    if-eqz v5, :cond_15

    .line 665
    .line 666
    move/from16 v1, v21

    .line 667
    .line 668
    move-object/from16 v60, v35

    .line 669
    .line 670
    goto :goto_15

    .line 671
    :cond_15
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    move-object/from16 v60, v1

    .line 676
    .line 677
    move/from16 v1, v21

    .line 678
    .line 679
    :goto_15
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    if-eqz v5, :cond_16

    .line 684
    .line 685
    move/from16 v1, v22

    .line 686
    .line 687
    move-object/from16 v61, v35

    .line 688
    .line 689
    goto :goto_16

    .line 690
    :cond_16
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    move-object/from16 v61, v1

    .line 695
    .line 696
    move/from16 v1, v22

    .line 697
    .line 698
    :goto_16
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 699
    .line 700
    .line 701
    move-result-wide v62

    .line 702
    move/from16 v1, v23

    .line 703
    .line 704
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_17

    .line 709
    .line 710
    move/from16 v1, v24

    .line 711
    .line 712
    move-object/from16 v64, v35

    .line 713
    .line 714
    goto :goto_17

    .line 715
    :cond_17
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 716
    .line 717
    .line 718
    move-result-wide v5

    .line 719
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    move-object/from16 v64, v1

    .line 724
    .line 725
    move/from16 v1, v24

    .line 726
    .line 727
    :goto_17
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    if-eqz v5, :cond_18

    .line 732
    .line 733
    move/from16 v1, v25

    .line 734
    .line 735
    move-object/from16 v65, v35

    .line 736
    .line 737
    goto :goto_18

    .line 738
    :cond_18
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 739
    .line 740
    .line 741
    move-result-wide v5

    .line 742
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    move-object/from16 v65, v1

    .line 747
    .line 748
    move/from16 v1, v25

    .line 749
    .line 750
    :goto_18
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 751
    .line 752
    .line 753
    move-result-wide v5

    .line 754
    long-to-int v1, v5

    .line 755
    if-eqz v1, :cond_19

    .line 756
    .line 757
    move/from16 v1, v26

    .line 758
    .line 759
    const/16 v66, 0x1

    .line 760
    .line 761
    goto :goto_19

    .line 762
    :cond_19
    move/from16 v66, v2

    .line 763
    .line 764
    move/from16 v1, v26

    .line 765
    .line 766
    :goto_19
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 767
    .line 768
    .line 769
    move-result-wide v5

    .line 770
    long-to-int v1, v5

    .line 771
    if-eqz v1, :cond_1a

    .line 772
    .line 773
    move/from16 v1, v27

    .line 774
    .line 775
    const/16 v67, 0x1

    .line 776
    .line 777
    goto :goto_1a

    .line 778
    :cond_1a
    move/from16 v67, v2

    .line 779
    .line 780
    move/from16 v1, v27

    .line 781
    .line 782
    :goto_1a
    invoke-interface {v3, v1}, Ly3/e;->getLong(I)J

    .line 783
    .line 784
    .line 785
    move-result-wide v5

    .line 786
    long-to-int v1, v5

    .line 787
    if-eqz v1, :cond_1b

    .line 788
    .line 789
    move/from16 v1, v28

    .line 790
    .line 791
    const/16 v68, 0x1

    .line 792
    .line 793
    goto :goto_1b

    .line 794
    :cond_1b
    move/from16 v68, v2

    .line 795
    .line 796
    move/from16 v1, v28

    .line 797
    .line 798
    :goto_1b
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    if-eqz v2, :cond_1c

    .line 803
    .line 804
    move/from16 v1, v29

    .line 805
    .line 806
    move-object/from16 v69, v35

    .line 807
    .line 808
    goto :goto_1c

    .line 809
    :cond_1c
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    move-object/from16 v69, v1

    .line 814
    .line 815
    move/from16 v1, v29

    .line 816
    .line 817
    :goto_1c
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    if-eqz v2, :cond_1d

    .line 822
    .line 823
    move/from16 v1, v30

    .line 824
    .line 825
    move-object/from16 v70, v35

    .line 826
    .line 827
    goto :goto_1d

    .line 828
    :cond_1d
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    move-object/from16 v70, v1

    .line 833
    .line 834
    move/from16 v1, v30

    .line 835
    .line 836
    :goto_1d
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    if-eqz v2, :cond_1e

    .line 841
    .line 842
    move/from16 v1, v31

    .line 843
    .line 844
    move-object/from16 v71, v35

    .line 845
    .line 846
    goto :goto_1e

    .line 847
    :cond_1e
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    move-object/from16 v71, v1

    .line 852
    .line 853
    move/from16 v1, v31

    .line 854
    .line 855
    :goto_1e
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    if-eqz v2, :cond_1f

    .line 860
    .line 861
    move/from16 v1, v32

    .line 862
    .line 863
    move-object/from16 v72, v35

    .line 864
    .line 865
    goto :goto_1f

    .line 866
    :cond_1f
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    move-object/from16 v72, v1

    .line 871
    .line 872
    move/from16 v1, v32

    .line 873
    .line 874
    :goto_1f
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    if-eqz v2, :cond_20

    .line 879
    .line 880
    move/from16 v1, v33

    .line 881
    .line 882
    move-object/from16 v73, v35

    .line 883
    .line 884
    goto :goto_20

    .line 885
    :cond_20
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    move-object/from16 v73, v1

    .line 890
    .line 891
    move/from16 v1, v33

    .line 892
    .line 893
    :goto_20
    invoke-interface {v3, v1}, Ly3/e;->isNull(I)Z

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    if-eqz v2, :cond_21

    .line 898
    .line 899
    move-object/from16 v74, v35

    .line 900
    .line 901
    goto :goto_21

    .line 902
    :cond_21
    invoke-interface {v3, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    move-object/from16 v74, v1

    .line 907
    .line 908
    :goto_21
    invoke-interface {v3, v4}, Ly3/e;->isNull(I)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-eqz v1, :cond_22

    .line 913
    .line 914
    :goto_22
    move-object/from16 v75, v35

    .line 915
    .line 916
    goto :goto_23

    .line 917
    :cond_22
    invoke-interface {v3, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v35

    .line 921
    goto :goto_22

    .line 922
    :goto_23
    new-instance v35, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 923
    .line 924
    move-object/from16 v36, v35

    .line 925
    .line 926
    move/from16 v44, v0

    .line 927
    .line 928
    invoke-direct/range {v36 .. v75}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .line 930
    .line 931
    :cond_23
    invoke-interface {v3}, Ly3/e;->close()V

    .line 932
    .line 933
    .line 934
    return-object v35

    .line 935
    :goto_24
    invoke-interface {v3}, Ly3/e;->close()V

    .line 936
    .line 937
    .line 938
    throw v0
.end method

.method private static synthetic a0(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 77

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND (kidId IS NULL OR kidId = \'\') ORDER BY timeStamp DESC LIMIT 1"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-interface {v3, v2}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v2, v3}, Ly3/e;->g(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto/16 :goto_23

    .line 22
    .line 23
    :cond_0
    invoke-interface {v2, v3, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ly3/e;->g(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    const-string v0, "collectionId"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v1, "ugcVideoId"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v4, "progress"

    .line 49
    .line 50
    invoke-static {v2, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v5, "title"

    .line 55
    .line 56
    invoke-static {v2, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v6, "coverUrl"

    .line 61
    .line 62
    invoke-static {v2, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-string v7, "thumbnail"

    .line 67
    .line 68
    invoke-static {v2, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const-string v8, "position"

    .line 73
    .line 74
    invoke-static {v2, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    const-string v9, "type"

    .line 79
    .line 80
    invoke-static {v2, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    const-string v10, "cateLev1Id"

    .line 85
    .line 86
    invoke-static {v2, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    const-string v11, "cateLev2Id"

    .line 91
    .line 92
    invoke-static {v2, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    const-string v12, "cateLev3Id"

    .line 97
    .line 98
    invoke-static {v2, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const-string v13, "cateLev4Id"

    .line 103
    .line 104
    invoke-static {v2, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    const-string v14, "timeStamp"

    .line 109
    .line 110
    invoke-static {v2, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    const-string v15, "subtitleSelectId"

    .line 115
    .line 116
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const-string v3, "totalDuration"

    .line 121
    .line 122
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    move/from16 p0, v3

    .line 127
    .line 128
    const-string v3, "subjectDurationSeconds"

    .line 129
    .line 130
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    move/from16 p1, v3

    .line 135
    .line 136
    const-string v3, "averageHueLight"

    .line 137
    .line 138
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    move/from16 v16, v3

    .line 143
    .line 144
    const-string v3, "subjectType"

    .line 145
    .line 146
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move/from16 v17, v3

    .line 151
    .line 152
    const-string v3, "hasDelete"

    .line 153
    .line 154
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    move/from16 v18, v3

    .line 159
    .line 160
    const-string v3, "playMode"

    .line 161
    .line 162
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    move/from16 v19, v3

    .line 167
    .line 168
    const-string v3, "downloadUrl"

    .line 169
    .line 170
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    move/from16 v20, v3

    .line 175
    .line 176
    const-string v3, "downloadResid"

    .line 177
    .line 178
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    move/from16 v21, v3

    .line 183
    .line 184
    const-string v3, "downloadFilePath"

    .line 185
    .line 186
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    move/from16 v22, v3

    .line 191
    .line 192
    const-string v3, "downloadSize"

    .line 193
    .line 194
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    move/from16 v23, v3

    .line 199
    .line 200
    const-string v3, "lastAdStartTimeStamp"

    .line 201
    .line 202
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    move/from16 v24, v3

    .line 207
    .line 208
    const-string v3, "lastAdEndTimeStamp"

    .line 209
    .line 210
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    move/from16 v25, v3

    .line 215
    .line 216
    const-string v3, "rewardPlayed"

    .line 217
    .line 218
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    move/from16 v26, v3

    .line 223
    .line 224
    const-string v3, "rewardUnlock"

    .line 225
    .line 226
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    move/from16 v27, v3

    .line 231
    .line 232
    const-string v3, "rewardFree"

    .line 233
    .line 234
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    move/from16 v28, v3

    .line 239
    .line 240
    const-string v3, "ops"

    .line 241
    .line 242
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    move/from16 v29, v3

    .line 247
    .line 248
    const-string v3, "uid"

    .line 249
    .line 250
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    move/from16 v30, v3

    .line 255
    .line 256
    const-string v3, "userName"

    .line 257
    .line 258
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    move/from16 v31, v3

    .line 263
    .line 264
    const-string v3, "userAvatar"

    .line 265
    .line 266
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    move/from16 v32, v3

    .line 271
    .line 272
    const-string v3, "description"

    .line 273
    .line 274
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    move/from16 v33, v3

    .line 279
    .line 280
    const-string v3, "videoStyle"

    .line 281
    .line 282
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    move/from16 v34, v3

    .line 287
    .line 288
    const-string v3, "kidId"

    .line 289
    .line 290
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-interface {v2}, Ly3/e;->C0()Z

    .line 295
    .line 296
    .line 297
    move-result v35

    .line 298
    const/16 v36, 0x0

    .line 299
    .line 300
    if-eqz v35, :cond_22

    .line 301
    .line 302
    invoke-interface {v2, v0}, Ly3/e;->isNull(I)Z

    .line 303
    .line 304
    .line 305
    move-result v35

    .line 306
    if-eqz v35, :cond_2

    .line 307
    .line 308
    move-object/from16 v38, v36

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_2
    invoke-interface {v2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    move-object/from16 v38, v0

    .line 316
    .line 317
    :goto_2
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_3

    .line 322
    .line 323
    move-object/from16 v39, v36

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_3
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    move-object/from16 v39, v0

    .line 331
    .line 332
    :goto_3
    invoke-interface {v2, v4}, Ly3/e;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v40

    .line 336
    invoke-interface {v2, v5}, Ly3/e;->isNull(I)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_4

    .line 341
    .line 342
    move-object/from16 v42, v36

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_4
    invoke-interface {v2, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    move-object/from16 v42, v0

    .line 350
    .line 351
    :goto_4
    invoke-interface {v2, v6}, Ly3/e;->isNull(I)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_5

    .line 356
    .line 357
    move-object/from16 v43, v36

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_5
    invoke-interface {v2, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    move-object/from16 v43, v0

    .line 365
    .line 366
    :goto_5
    invoke-interface {v2, v7}, Ly3/e;->isNull(I)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_6

    .line 371
    .line 372
    move-object/from16 v44, v36

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_6
    invoke-interface {v2, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    move-object/from16 v44, v0

    .line 380
    .line 381
    :goto_6
    invoke-interface {v2, v8}, Ly3/e;->getLong(I)J

    .line 382
    .line 383
    .line 384
    move-result-wide v0

    .line 385
    long-to-int v0, v0

    .line 386
    invoke-interface {v2, v9}, Ly3/e;->isNull(I)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_7

    .line 391
    .line 392
    move-object/from16 v46, v36

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_7
    invoke-interface {v2, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    move-object/from16 v46, v1

    .line 400
    .line 401
    :goto_7
    invoke-interface {v2, v10}, Ly3/e;->isNull(I)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_8

    .line 406
    .line 407
    move-object/from16 v47, v36

    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_8
    invoke-interface {v2, v10}, Ly3/e;->getLong(I)J

    .line 411
    .line 412
    .line 413
    move-result-wide v4

    .line 414
    long-to-int v1, v4

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    move-object/from16 v47, v1

    .line 420
    .line 421
    :goto_8
    invoke-interface {v2, v11}, Ly3/e;->isNull(I)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_9

    .line 426
    .line 427
    move-object/from16 v48, v36

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_9
    invoke-interface {v2, v11}, Ly3/e;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v4

    .line 434
    long-to-int v1, v4

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    move-object/from16 v48, v1

    .line 440
    .line 441
    :goto_9
    invoke-interface {v2, v12}, Ly3/e;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_a

    .line 446
    .line 447
    move-object/from16 v49, v36

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_a
    invoke-interface {v2, v12}, Ly3/e;->getLong(I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    long-to-int v1, v4

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    move-object/from16 v49, v1

    .line 460
    .line 461
    :goto_a
    invoke-interface {v2, v13}, Ly3/e;->isNull(I)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_b

    .line 466
    .line 467
    move-object/from16 v50, v36

    .line 468
    .line 469
    goto :goto_b

    .line 470
    :cond_b
    invoke-interface {v2, v13}, Ly3/e;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    long-to-int v1, v4

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    move-object/from16 v50, v1

    .line 480
    .line 481
    :goto_b
    invoke-interface {v2, v14}, Ly3/e;->getLong(I)J

    .line 482
    .line 483
    .line 484
    move-result-wide v51

    .line 485
    invoke-interface {v2, v15}, Ly3/e;->isNull(I)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_c

    .line 490
    .line 491
    move/from16 v1, p0

    .line 492
    .line 493
    move-object/from16 v53, v36

    .line 494
    .line 495
    goto :goto_c

    .line 496
    :cond_c
    invoke-interface {v2, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    move-object/from16 v53, v1

    .line 501
    .line 502
    move/from16 v1, p0

    .line 503
    .line 504
    :goto_c
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-eqz v4, :cond_d

    .line 509
    .line 510
    move/from16 v1, p1

    .line 511
    .line 512
    move-object/from16 v54, v36

    .line 513
    .line 514
    goto :goto_d

    .line 515
    :cond_d
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 516
    .line 517
    .line 518
    move-result-wide v4

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    move-object/from16 v54, v1

    .line 524
    .line 525
    move/from16 v1, p1

    .line 526
    .line 527
    :goto_d
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_e

    .line 532
    .line 533
    move/from16 v1, v16

    .line 534
    .line 535
    move-object/from16 v55, v36

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_e
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 539
    .line 540
    .line 541
    move-result-wide v4

    .line 542
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    move-object/from16 v55, v1

    .line 547
    .line 548
    move/from16 v1, v16

    .line 549
    .line 550
    :goto_e
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    if-eqz v4, :cond_f

    .line 555
    .line 556
    move/from16 v1, v17

    .line 557
    .line 558
    move-object/from16 v56, v36

    .line 559
    .line 560
    goto :goto_f

    .line 561
    :cond_f
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    move-object/from16 v56, v1

    .line 566
    .line 567
    move/from16 v1, v17

    .line 568
    .line 569
    :goto_f
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_10

    .line 574
    .line 575
    move/from16 v1, v18

    .line 576
    .line 577
    move-object/from16 v57, v36

    .line 578
    .line 579
    goto :goto_10

    .line 580
    :cond_10
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 581
    .line 582
    .line 583
    move-result-wide v4

    .line 584
    long-to-int v1, v4

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    move-object/from16 v57, v1

    .line 590
    .line 591
    move/from16 v1, v18

    .line 592
    .line 593
    :goto_10
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 594
    .line 595
    .line 596
    move-result-wide v4

    .line 597
    long-to-int v1, v4

    .line 598
    const/4 v4, 0x0

    .line 599
    if-eqz v1, :cond_11

    .line 600
    .line 601
    move/from16 v1, v19

    .line 602
    .line 603
    const/16 v58, 0x1

    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_11
    move/from16 v58, v4

    .line 607
    .line 608
    move/from16 v1, v19

    .line 609
    .line 610
    :goto_11
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    if-eqz v5, :cond_12

    .line 615
    .line 616
    move/from16 v1, v20

    .line 617
    .line 618
    move-object/from16 v59, v36

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_12
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    move-object/from16 v59, v1

    .line 626
    .line 627
    move/from16 v1, v20

    .line 628
    .line 629
    :goto_12
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_13

    .line 634
    .line 635
    move/from16 v1, v21

    .line 636
    .line 637
    move-object/from16 v60, v36

    .line 638
    .line 639
    goto :goto_13

    .line 640
    :cond_13
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    move-object/from16 v60, v1

    .line 645
    .line 646
    move/from16 v1, v21

    .line 647
    .line 648
    :goto_13
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    if-eqz v5, :cond_14

    .line 653
    .line 654
    move/from16 v1, v22

    .line 655
    .line 656
    move-object/from16 v61, v36

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_14
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    move-object/from16 v61, v1

    .line 664
    .line 665
    move/from16 v1, v22

    .line 666
    .line 667
    :goto_14
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_15

    .line 672
    .line 673
    move/from16 v1, v23

    .line 674
    .line 675
    move-object/from16 v62, v36

    .line 676
    .line 677
    goto :goto_15

    .line 678
    :cond_15
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    move-object/from16 v62, v1

    .line 683
    .line 684
    move/from16 v1, v23

    .line 685
    .line 686
    :goto_15
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 687
    .line 688
    .line 689
    move-result-wide v63

    .line 690
    move/from16 v1, v24

    .line 691
    .line 692
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    if-eqz v5, :cond_16

    .line 697
    .line 698
    move/from16 v1, v25

    .line 699
    .line 700
    move-object/from16 v65, v36

    .line 701
    .line 702
    goto :goto_16

    .line 703
    :cond_16
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 704
    .line 705
    .line 706
    move-result-wide v5

    .line 707
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    move-object/from16 v65, v1

    .line 712
    .line 713
    move/from16 v1, v25

    .line 714
    .line 715
    :goto_16
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eqz v5, :cond_17

    .line 720
    .line 721
    move/from16 v1, v26

    .line 722
    .line 723
    move-object/from16 v66, v36

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_17
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 727
    .line 728
    .line 729
    move-result-wide v5

    .line 730
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    move-object/from16 v66, v1

    .line 735
    .line 736
    move/from16 v1, v26

    .line 737
    .line 738
    :goto_17
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 739
    .line 740
    .line 741
    move-result-wide v5

    .line 742
    long-to-int v1, v5

    .line 743
    if-eqz v1, :cond_18

    .line 744
    .line 745
    move/from16 v1, v27

    .line 746
    .line 747
    const/16 v67, 0x1

    .line 748
    .line 749
    goto :goto_18

    .line 750
    :cond_18
    move/from16 v67, v4

    .line 751
    .line 752
    move/from16 v1, v27

    .line 753
    .line 754
    :goto_18
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    long-to-int v1, v5

    .line 759
    if-eqz v1, :cond_19

    .line 760
    .line 761
    move/from16 v1, v28

    .line 762
    .line 763
    const/16 v68, 0x1

    .line 764
    .line 765
    goto :goto_19

    .line 766
    :cond_19
    move/from16 v68, v4

    .line 767
    .line 768
    move/from16 v1, v28

    .line 769
    .line 770
    :goto_19
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 771
    .line 772
    .line 773
    move-result-wide v5

    .line 774
    long-to-int v1, v5

    .line 775
    if-eqz v1, :cond_1a

    .line 776
    .line 777
    move/from16 v1, v29

    .line 778
    .line 779
    const/16 v69, 0x1

    .line 780
    .line 781
    goto :goto_1a

    .line 782
    :cond_1a
    move/from16 v69, v4

    .line 783
    .line 784
    move/from16 v1, v29

    .line 785
    .line 786
    :goto_1a
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    if-eqz v4, :cond_1b

    .line 791
    .line 792
    move/from16 v1, v30

    .line 793
    .line 794
    move-object/from16 v70, v36

    .line 795
    .line 796
    goto :goto_1b

    .line 797
    :cond_1b
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    move-object/from16 v70, v1

    .line 802
    .line 803
    move/from16 v1, v30

    .line 804
    .line 805
    :goto_1b
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 806
    .line 807
    .line 808
    move-result v4

    .line 809
    if-eqz v4, :cond_1c

    .line 810
    .line 811
    move/from16 v1, v31

    .line 812
    .line 813
    move-object/from16 v71, v36

    .line 814
    .line 815
    goto :goto_1c

    .line 816
    :cond_1c
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    move-object/from16 v71, v1

    .line 821
    .line 822
    move/from16 v1, v31

    .line 823
    .line 824
    :goto_1c
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 825
    .line 826
    .line 827
    move-result v4

    .line 828
    if-eqz v4, :cond_1d

    .line 829
    .line 830
    move/from16 v1, v32

    .line 831
    .line 832
    move-object/from16 v72, v36

    .line 833
    .line 834
    goto :goto_1d

    .line 835
    :cond_1d
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    move-object/from16 v72, v1

    .line 840
    .line 841
    move/from16 v1, v32

    .line 842
    .line 843
    :goto_1d
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_1e

    .line 848
    .line 849
    move/from16 v1, v33

    .line 850
    .line 851
    move-object/from16 v73, v36

    .line 852
    .line 853
    goto :goto_1e

    .line 854
    :cond_1e
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    move-object/from16 v73, v1

    .line 859
    .line 860
    move/from16 v1, v33

    .line 861
    .line 862
    :goto_1e
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    if-eqz v4, :cond_1f

    .line 867
    .line 868
    move/from16 v1, v34

    .line 869
    .line 870
    move-object/from16 v74, v36

    .line 871
    .line 872
    goto :goto_1f

    .line 873
    :cond_1f
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    move-object/from16 v74, v1

    .line 878
    .line 879
    move/from16 v1, v34

    .line 880
    .line 881
    :goto_1f
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 882
    .line 883
    .line 884
    move-result v4

    .line 885
    if-eqz v4, :cond_20

    .line 886
    .line 887
    move-object/from16 v75, v36

    .line 888
    .line 889
    goto :goto_20

    .line 890
    :cond_20
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    move-object/from16 v75, v1

    .line 895
    .line 896
    :goto_20
    invoke-interface {v2, v3}, Ly3/e;->isNull(I)Z

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    if-eqz v1, :cond_21

    .line 901
    .line 902
    :goto_21
    move-object/from16 v76, v36

    .line 903
    .line 904
    goto :goto_22

    .line 905
    :cond_21
    invoke-interface {v2, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v36

    .line 909
    goto :goto_21

    .line 910
    :goto_22
    new-instance v36, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 911
    .line 912
    move-object/from16 v37, v36

    .line 913
    .line 914
    move/from16 v45, v0

    .line 915
    .line 916
    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .line 918
    .line 919
    :cond_22
    invoke-interface {v2}, Ly3/e;->close()V

    .line 920
    .line 921
    .line 922
    return-object v36

    .line 923
    :goto_23
    invoke-interface {v2}, Ly3/e;->close()V

    .line 924
    .line 925
    .line 926
    throw v0
.end method

.method private static synthetic b0(Ljava/lang/String;IILy3/b;)Ljava/util/List;
    .locals 80

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId LIKE \'SINGLE_%\' ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

    .line 4
    .line 5
    move-object/from16 v2, p3

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
    goto/16 :goto_28

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x2

    .line 25
    move/from16 v3, p1

    .line 26
    .line 27
    int-to-long v3, v3

    .line 28
    invoke-interface {v1, v0, v3, v4}, Ly3/e;->c(IJ)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    move/from16 v3, p2

    .line 33
    .line 34
    int-to-long v3, v3

    .line 35
    invoke-interface {v1, v0, v3, v4}, Ly3/e;->c(IJ)V

    .line 36
    .line 37
    .line 38
    const-string v0, "collectionId"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v3, "ugcVideoId"

    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const-string v4, "progress"

    .line 51
    .line 52
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const-string v5, "title"

    .line 57
    .line 58
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const-string v6, "coverUrl"

    .line 63
    .line 64
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    const-string v7, "thumbnail"

    .line 69
    .line 70
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const-string v8, "position"

    .line 75
    .line 76
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    const-string v9, "type"

    .line 81
    .line 82
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const-string v10, "cateLev1Id"

    .line 87
    .line 88
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    const-string v11, "cateLev2Id"

    .line 93
    .line 94
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    const-string v12, "cateLev3Id"

    .line 99
    .line 100
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    const-string v13, "cateLev4Id"

    .line 105
    .line 106
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    const-string v14, "timeStamp"

    .line 111
    .line 112
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    const-string v15, "subtitleSelectId"

    .line 117
    .line 118
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    const-string v2, "totalDuration"

    .line 123
    .line 124
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    move/from16 p0, v2

    .line 129
    .line 130
    const-string v2, "subjectDurationSeconds"

    .line 131
    .line 132
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    move/from16 p1, v2

    .line 137
    .line 138
    const-string v2, "averageHueLight"

    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    move/from16 p2, v2

    .line 145
    .line 146
    const-string v2, "subjectType"

    .line 147
    .line 148
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    move/from16 v16, v2

    .line 153
    .line 154
    const-string v2, "hasDelete"

    .line 155
    .line 156
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move/from16 v17, v2

    .line 161
    .line 162
    const-string v2, "playMode"

    .line 163
    .line 164
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    move/from16 v18, v2

    .line 169
    .line 170
    const-string v2, "downloadUrl"

    .line 171
    .line 172
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    move/from16 v19, v2

    .line 177
    .line 178
    const-string v2, "downloadResid"

    .line 179
    .line 180
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    move/from16 v20, v2

    .line 185
    .line 186
    const-string v2, "downloadFilePath"

    .line 187
    .line 188
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    move/from16 v21, v2

    .line 193
    .line 194
    const-string v2, "downloadSize"

    .line 195
    .line 196
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    move/from16 v22, v2

    .line 201
    .line 202
    const-string v2, "lastAdStartTimeStamp"

    .line 203
    .line 204
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    move/from16 v23, v2

    .line 209
    .line 210
    const-string v2, "lastAdEndTimeStamp"

    .line 211
    .line 212
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    move/from16 v24, v2

    .line 217
    .line 218
    const-string v2, "rewardPlayed"

    .line 219
    .line 220
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    move/from16 v25, v2

    .line 225
    .line 226
    const-string v2, "rewardUnlock"

    .line 227
    .line 228
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    move/from16 v26, v2

    .line 233
    .line 234
    const-string v2, "rewardFree"

    .line 235
    .line 236
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    move/from16 v27, v2

    .line 241
    .line 242
    const-string v2, "ops"

    .line 243
    .line 244
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    move/from16 v28, v2

    .line 249
    .line 250
    const-string v2, "uid"

    .line 251
    .line 252
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    move/from16 v29, v2

    .line 257
    .line 258
    const-string v2, "userName"

    .line 259
    .line 260
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    move/from16 v30, v2

    .line 265
    .line 266
    const-string v2, "userAvatar"

    .line 267
    .line 268
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    move/from16 v31, v2

    .line 273
    .line 274
    const-string v2, "description"

    .line 275
    .line 276
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    move/from16 v32, v2

    .line 281
    .line 282
    const-string v2, "videoStyle"

    .line 283
    .line 284
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    move/from16 v33, v2

    .line 289
    .line 290
    const-string v2, "kidId"

    .line 291
    .line 292
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    move/from16 v34, v2

    .line 297
    .line 298
    new-instance v2, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .line 302
    .line 303
    :goto_1
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 304
    .line 305
    .line 306
    move-result v35

    .line 307
    if-eqz v35, :cond_21

    .line 308
    .line 309
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 310
    .line 311
    .line 312
    move-result v35

    .line 313
    const/16 v36, 0x0

    .line 314
    .line 315
    if-eqz v35, :cond_1

    .line 316
    .line 317
    move-object/from16 v38, v36

    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v35

    .line 324
    move-object/from16 v38, v35

    .line 325
    .line 326
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 327
    .line 328
    .line 329
    move-result v35

    .line 330
    if-eqz v35, :cond_2

    .line 331
    .line 332
    move-object/from16 v39, v36

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v35

    .line 339
    move-object/from16 v39, v35

    .line 340
    .line 341
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 342
    .line 343
    .line 344
    move-result-wide v40

    .line 345
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 346
    .line 347
    .line 348
    move-result v35

    .line 349
    if-eqz v35, :cond_3

    .line 350
    .line 351
    move-object/from16 v42, v36

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_3
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v35

    .line 358
    move-object/from16 v42, v35

    .line 359
    .line 360
    :goto_4
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 361
    .line 362
    .line 363
    move-result v35

    .line 364
    if-eqz v35, :cond_4

    .line 365
    .line 366
    move-object/from16 v43, v36

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_4
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v35

    .line 373
    move-object/from16 v43, v35

    .line 374
    .line 375
    :goto_5
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 376
    .line 377
    .line 378
    move-result v35

    .line 379
    if-eqz v35, :cond_5

    .line 380
    .line 381
    move/from16 v35, v3

    .line 382
    .line 383
    move/from16 v77, v4

    .line 384
    .line 385
    move-object/from16 v44, v36

    .line 386
    .line 387
    goto :goto_6

    .line 388
    :cond_5
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v35

    .line 392
    move/from16 v77, v4

    .line 393
    .line 394
    move-object/from16 v44, v35

    .line 395
    .line 396
    move/from16 v35, v3

    .line 397
    .line 398
    :goto_6
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 399
    .line 400
    .line 401
    move-result-wide v3

    .line 402
    long-to-int v3, v3

    .line 403
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_6

    .line 408
    .line 409
    move-object/from16 v46, v36

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_6
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    move-object/from16 v46, v4

    .line 417
    .line 418
    :goto_7
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_7

    .line 423
    .line 424
    move/from16 v78, v5

    .line 425
    .line 426
    move-object/from16 v47, v36

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_7
    move/from16 v78, v5

    .line 430
    .line 431
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 432
    .line 433
    .line 434
    move-result-wide v4

    .line 435
    long-to-int v4, v4

    .line 436
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    move-object/from16 v47, v4

    .line 441
    .line 442
    :goto_8
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_8

    .line 447
    .line 448
    move-object/from16 v48, v36

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 452
    .line 453
    .line 454
    move-result-wide v4

    .line 455
    long-to-int v4, v4

    .line 456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    move-object/from16 v48, v4

    .line 461
    .line 462
    :goto_9
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_9

    .line 467
    .line 468
    move-object/from16 v49, v36

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    .line 472
    .line 473
    .line 474
    move-result-wide v4

    .line 475
    long-to-int v4, v4

    .line 476
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    move-object/from16 v49, v4

    .line 481
    .line 482
    :goto_a
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    if-eqz v4, :cond_a

    .line 487
    .line 488
    move-object/from16 v50, v36

    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_a
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 492
    .line 493
    .line 494
    move-result-wide v4

    .line 495
    long-to-int v4, v4

    .line 496
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    move-object/from16 v50, v4

    .line 501
    .line 502
    :goto_b
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 503
    .line 504
    .line 505
    move-result-wide v51

    .line 506
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_b

    .line 511
    .line 512
    move/from16 v4, p0

    .line 513
    .line 514
    move-object/from16 v53, v36

    .line 515
    .line 516
    goto :goto_c

    .line 517
    :cond_b
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    move-object/from16 v53, v4

    .line 522
    .line 523
    move/from16 v4, p0

    .line 524
    .line 525
    :goto_c
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 526
    .line 527
    .line 528
    move-result v5

    .line 529
    if-eqz v5, :cond_c

    .line 530
    .line 531
    move/from16 v5, p1

    .line 532
    .line 533
    move-object/from16 v54, v36

    .line 534
    .line 535
    goto :goto_d

    .line 536
    :cond_c
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 537
    .line 538
    .line 539
    move-result-wide v54

    .line 540
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    move-object/from16 v54, v5

    .line 545
    .line 546
    move/from16 v5, p1

    .line 547
    .line 548
    :goto_d
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 549
    .line 550
    .line 551
    move-result v37

    .line 552
    if-eqz v37, :cond_d

    .line 553
    .line 554
    move/from16 p0, v0

    .line 555
    .line 556
    move-object/from16 v55, v36

    .line 557
    .line 558
    :goto_e
    move/from16 v0, p2

    .line 559
    .line 560
    goto :goto_f

    .line 561
    :cond_d
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 562
    .line 563
    .line 564
    move-result-wide v55

    .line 565
    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 566
    .line 567
    .line 568
    move-result-object v37

    .line 569
    move/from16 p0, v0

    .line 570
    .line 571
    move-object/from16 v55, v37

    .line 572
    .line 573
    goto :goto_e

    .line 574
    :goto_f
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 575
    .line 576
    .line 577
    move-result v37

    .line 578
    if-eqz v37, :cond_e

    .line 579
    .line 580
    move/from16 p2, v0

    .line 581
    .line 582
    move/from16 v0, v16

    .line 583
    .line 584
    move-object/from16 v56, v36

    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_e
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v37

    .line 591
    move/from16 p2, v0

    .line 592
    .line 593
    move/from16 v0, v16

    .line 594
    .line 595
    move-object/from16 v56, v37

    .line 596
    .line 597
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 598
    .line 599
    .line 600
    move-result v16

    .line 601
    if-eqz v16, :cond_f

    .line 602
    .line 603
    move/from16 v16, v4

    .line 604
    .line 605
    move/from16 p1, v5

    .line 606
    .line 607
    move/from16 v4, v17

    .line 608
    .line 609
    move-object/from16 v57, v36

    .line 610
    .line 611
    :goto_11
    move/from16 v17, v6

    .line 612
    .line 613
    goto :goto_12

    .line 614
    :cond_f
    move/from16 v16, v4

    .line 615
    .line 616
    move/from16 p1, v5

    .line 617
    .line 618
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 619
    .line 620
    .line 621
    move-result-wide v4

    .line 622
    long-to-int v4, v4

    .line 623
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    move-object/from16 v57, v4

    .line 628
    .line 629
    move/from16 v4, v17

    .line 630
    .line 631
    goto :goto_11

    .line 632
    :goto_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 633
    .line 634
    .line 635
    move-result-wide v5

    .line 636
    long-to-int v5, v5

    .line 637
    if-eqz v5, :cond_10

    .line 638
    .line 639
    move/from16 v5, v18

    .line 640
    .line 641
    const/16 v58, 0x1

    .line 642
    .line 643
    goto :goto_13

    .line 644
    :cond_10
    move/from16 v5, v18

    .line 645
    .line 646
    const/16 v58, 0x0

    .line 647
    .line 648
    :goto_13
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 649
    .line 650
    .line 651
    move-result v18

    .line 652
    if-eqz v18, :cond_11

    .line 653
    .line 654
    move/from16 v6, v19

    .line 655
    .line 656
    move-object/from16 v59, v36

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_11
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v18

    .line 663
    move-object/from16 v59, v18

    .line 664
    .line 665
    move/from16 v6, v19

    .line 666
    .line 667
    :goto_14
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 668
    .line 669
    .line 670
    move-result v19

    .line 671
    if-eqz v19, :cond_12

    .line 672
    .line 673
    move/from16 v19, v0

    .line 674
    .line 675
    move/from16 v0, v20

    .line 676
    .line 677
    move-object/from16 v60, v36

    .line 678
    .line 679
    goto :goto_15

    .line 680
    :cond_12
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v19

    .line 684
    move-object/from16 v60, v19

    .line 685
    .line 686
    move/from16 v19, v0

    .line 687
    .line 688
    move/from16 v0, v20

    .line 689
    .line 690
    :goto_15
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 691
    .line 692
    .line 693
    move-result v20

    .line 694
    if-eqz v20, :cond_13

    .line 695
    .line 696
    move/from16 v20, v0

    .line 697
    .line 698
    move/from16 v0, v21

    .line 699
    .line 700
    move-object/from16 v61, v36

    .line 701
    .line 702
    goto :goto_16

    .line 703
    :cond_13
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v20

    .line 707
    move-object/from16 v61, v20

    .line 708
    .line 709
    move/from16 v20, v0

    .line 710
    .line 711
    move/from16 v0, v21

    .line 712
    .line 713
    :goto_16
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 714
    .line 715
    .line 716
    move-result v21

    .line 717
    if-eqz v21, :cond_14

    .line 718
    .line 719
    move/from16 v21, v0

    .line 720
    .line 721
    move/from16 v0, v22

    .line 722
    .line 723
    move-object/from16 v62, v36

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_14
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v21

    .line 730
    move-object/from16 v62, v21

    .line 731
    .line 732
    move/from16 v21, v0

    .line 733
    .line 734
    move/from16 v0, v22

    .line 735
    .line 736
    :goto_17
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 737
    .line 738
    .line 739
    move-result-wide v63

    .line 740
    move/from16 v22, v0

    .line 741
    .line 742
    move/from16 v0, v23

    .line 743
    .line 744
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 745
    .line 746
    .line 747
    move-result v23

    .line 748
    if-eqz v23, :cond_15

    .line 749
    .line 750
    move/from16 v23, v0

    .line 751
    .line 752
    move/from16 v0, v24

    .line 753
    .line 754
    move-object/from16 v65, v36

    .line 755
    .line 756
    goto :goto_18

    .line 757
    :cond_15
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 758
    .line 759
    .line 760
    move-result-wide v65

    .line 761
    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 762
    .line 763
    .line 764
    move-result-object v23

    .line 765
    move-object/from16 v65, v23

    .line 766
    .line 767
    move/from16 v23, v0

    .line 768
    .line 769
    move/from16 v0, v24

    .line 770
    .line 771
    :goto_18
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 772
    .line 773
    .line 774
    move-result v24

    .line 775
    if-eqz v24, :cond_16

    .line 776
    .line 777
    move/from16 v24, v0

    .line 778
    .line 779
    move/from16 v79, v5

    .line 780
    .line 781
    move/from16 v0, v25

    .line 782
    .line 783
    move-object/from16 v66, v36

    .line 784
    .line 785
    :goto_19
    move/from16 v25, v4

    .line 786
    .line 787
    goto :goto_1a

    .line 788
    :cond_16
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 789
    .line 790
    .line 791
    move-result-wide v66

    .line 792
    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 793
    .line 794
    .line 795
    move-result-object v24

    .line 796
    move/from16 v79, v5

    .line 797
    .line 798
    move-object/from16 v66, v24

    .line 799
    .line 800
    move/from16 v24, v0

    .line 801
    .line 802
    move/from16 v0, v25

    .line 803
    .line 804
    goto :goto_19

    .line 805
    :goto_1a
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 806
    .line 807
    .line 808
    move-result-wide v4

    .line 809
    long-to-int v4, v4

    .line 810
    if-eqz v4, :cond_17

    .line 811
    .line 812
    move/from16 v4, v26

    .line 813
    .line 814
    const/16 v67, 0x1

    .line 815
    .line 816
    :goto_1b
    move/from16 v26, v6

    .line 817
    .line 818
    goto :goto_1c

    .line 819
    :cond_17
    move/from16 v4, v26

    .line 820
    .line 821
    const/16 v67, 0x0

    .line 822
    .line 823
    goto :goto_1b

    .line 824
    :goto_1c
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 825
    .line 826
    .line 827
    move-result-wide v5

    .line 828
    long-to-int v5, v5

    .line 829
    if-eqz v5, :cond_18

    .line 830
    .line 831
    move/from16 v5, v27

    .line 832
    .line 833
    const/16 v68, 0x1

    .line 834
    .line 835
    :goto_1d
    move/from16 v27, v7

    .line 836
    .line 837
    goto :goto_1e

    .line 838
    :cond_18
    move/from16 v5, v27

    .line 839
    .line 840
    const/16 v68, 0x0

    .line 841
    .line 842
    goto :goto_1d

    .line 843
    :goto_1e
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 844
    .line 845
    .line 846
    move-result-wide v6

    .line 847
    long-to-int v6, v6

    .line 848
    if-eqz v6, :cond_19

    .line 849
    .line 850
    move/from16 v6, v28

    .line 851
    .line 852
    const/16 v69, 0x1

    .line 853
    .line 854
    goto :goto_1f

    .line 855
    :cond_19
    move/from16 v6, v28

    .line 856
    .line 857
    const/16 v69, 0x0

    .line 858
    .line 859
    :goto_1f
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 860
    .line 861
    .line 862
    move-result v7

    .line 863
    if-eqz v7, :cond_1a

    .line 864
    .line 865
    move/from16 v7, v29

    .line 866
    .line 867
    move-object/from16 v70, v36

    .line 868
    .line 869
    goto :goto_20

    .line 870
    :cond_1a
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v7

    .line 874
    move-object/from16 v70, v7

    .line 875
    .line 876
    move/from16 v7, v29

    .line 877
    .line 878
    :goto_20
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 879
    .line 880
    .line 881
    move-result v18

    .line 882
    if-eqz v18, :cond_1b

    .line 883
    .line 884
    move/from16 v18, v0

    .line 885
    .line 886
    move/from16 v0, v30

    .line 887
    .line 888
    move-object/from16 v71, v36

    .line 889
    .line 890
    goto :goto_21

    .line 891
    :cond_1b
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v18

    .line 895
    move-object/from16 v71, v18

    .line 896
    .line 897
    move/from16 v18, v0

    .line 898
    .line 899
    move/from16 v0, v30

    .line 900
    .line 901
    :goto_21
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 902
    .line 903
    .line 904
    move-result v28

    .line 905
    if-eqz v28, :cond_1c

    .line 906
    .line 907
    move/from16 v30, v0

    .line 908
    .line 909
    move/from16 v0, v31

    .line 910
    .line 911
    move-object/from16 v72, v36

    .line 912
    .line 913
    goto :goto_22

    .line 914
    :cond_1c
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v28

    .line 918
    move/from16 v30, v0

    .line 919
    .line 920
    move-object/from16 v72, v28

    .line 921
    .line 922
    move/from16 v0, v31

    .line 923
    .line 924
    :goto_22
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 925
    .line 926
    .line 927
    move-result v28

    .line 928
    if-eqz v28, :cond_1d

    .line 929
    .line 930
    move/from16 v31, v0

    .line 931
    .line 932
    move/from16 v0, v32

    .line 933
    .line 934
    move-object/from16 v73, v36

    .line 935
    .line 936
    goto :goto_23

    .line 937
    :cond_1d
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v28

    .line 941
    move/from16 v31, v0

    .line 942
    .line 943
    move-object/from16 v73, v28

    .line 944
    .line 945
    move/from16 v0, v32

    .line 946
    .line 947
    :goto_23
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 948
    .line 949
    .line 950
    move-result v28

    .line 951
    if-eqz v28, :cond_1e

    .line 952
    .line 953
    move/from16 v32, v0

    .line 954
    .line 955
    move/from16 v0, v33

    .line 956
    .line 957
    move-object/from16 v74, v36

    .line 958
    .line 959
    goto :goto_24

    .line 960
    :cond_1e
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v28

    .line 964
    move/from16 v32, v0

    .line 965
    .line 966
    move-object/from16 v74, v28

    .line 967
    .line 968
    move/from16 v0, v33

    .line 969
    .line 970
    :goto_24
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 971
    .line 972
    .line 973
    move-result v28

    .line 974
    if-eqz v28, :cond_1f

    .line 975
    .line 976
    move/from16 v33, v0

    .line 977
    .line 978
    move/from16 v0, v34

    .line 979
    .line 980
    move-object/from16 v75, v36

    .line 981
    .line 982
    goto :goto_25

    .line 983
    :cond_1f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v28

    .line 987
    move/from16 v33, v0

    .line 988
    .line 989
    move-object/from16 v75, v28

    .line 990
    .line 991
    move/from16 v0, v34

    .line 992
    .line 993
    :goto_25
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 994
    .line 995
    .line 996
    move-result v28

    .line 997
    if-eqz v28, :cond_20

    .line 998
    .line 999
    :goto_26
    move/from16 v34, v0

    .line 1000
    .line 1001
    move-object/from16 v76, v36

    .line 1002
    .line 1003
    goto :goto_27

    .line 1004
    :cond_20
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v36

    .line 1008
    goto :goto_26

    .line 1009
    :goto_27
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 1010
    .line 1011
    move-object/from16 v37, v0

    .line 1012
    .line 1013
    move/from16 v45, v3

    .line 1014
    .line 1015
    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    .line 1020
    .line 1021
    move/from16 v0, p0

    .line 1022
    .line 1023
    move/from16 v28, v6

    .line 1024
    .line 1025
    move/from16 v29, v7

    .line 1026
    .line 1027
    move/from16 p0, v16

    .line 1028
    .line 1029
    move/from16 v6, v17

    .line 1030
    .line 1031
    move/from16 v16, v19

    .line 1032
    .line 1033
    move/from16 v17, v25

    .line 1034
    .line 1035
    move/from16 v19, v26

    .line 1036
    .line 1037
    move/from16 v7, v27

    .line 1038
    .line 1039
    move/from16 v3, v35

    .line 1040
    .line 1041
    move/from16 v26, v4

    .line 1042
    .line 1043
    move/from16 v27, v5

    .line 1044
    .line 1045
    move/from16 v25, v18

    .line 1046
    .line 1047
    move/from16 v4, v77

    .line 1048
    .line 1049
    move/from16 v5, v78

    .line 1050
    .line 1051
    move/from16 v18, v79

    .line 1052
    .line 1053
    goto/16 :goto_1

    .line 1054
    .line 1055
    :cond_21
    invoke-interface {v1}, Ly3/e;->close()V

    .line 1056
    .line 1057
    .line 1058
    return-object v2

    .line 1059
    :goto_28
    invoke-interface {v1}, Ly3/e;->close()V

    .line 1060
    .line 1061
    .line 1062
    throw v0
.end method

.method private static synthetic c0(IILy3/b;)Ljava/util/List;
    .locals 83

    .line 1
    const-string v0, "SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = \'\') AND coverUrl IS NOT NULL AND collectionId LIKE \'SINGLE_%\' ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    move-result-object v1

    move/from16 v0, p0

    int-to-long v2, v0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    .line 3
    invoke-interface {v1, v2, v3, v4}, Ly3/e;->c(IJ)V

    .line 4
    const-string v2, "collectionId"

    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v2

    .line 5
    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v3

    .line 6
    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v4

    .line 7
    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v5

    .line 8
    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v6

    .line 9
    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v7

    .line 10
    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v8

    .line 11
    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v9

    .line 12
    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v10

    .line 13
    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v11

    .line 14
    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v12

    .line 15
    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v13

    .line 16
    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v14

    .line 17
    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v15

    .line 18
    const-string v0, "totalDuration"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    .line 19
    const-string v0, "subjectDurationSeconds"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    .line 20
    const-string v0, "averageHueLight"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    .line 21
    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 22
    const-string v0, "hasDelete"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 23
    const-string v0, "playMode"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    .line 24
    const-string v0, "downloadUrl"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    .line 25
    const-string v0, "downloadResid"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    .line 26
    const-string v0, "downloadFilePath"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    .line 27
    const-string v0, "downloadSize"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 28
    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    .line 29
    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    .line 30
    const-string v0, "rewardPlayed"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    .line 31
    const-string v0, "rewardUnlock"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    .line 32
    const-string v0, "rewardFree"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    .line 33
    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    .line 34
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    .line 35
    const-string v0, "userName"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    .line 36
    const-string v0, "userAvatar"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    .line 37
    const-string v0, "description"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    .line 38
    const-string v0, "videoStyle"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v34, v0

    .line 39
    const-string v0, "kidId"

    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v35, v0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    move-result v36

    if-eqz v36, :cond_20

    .line 42
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_0

    move-object/from16 v39, v37

    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v39, v36

    .line 44
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v40, v37

    goto :goto_2

    .line 45
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v40, v36

    .line 46
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v41

    .line 47
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v43, v37

    goto :goto_3

    .line 48
    :cond_2
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v43, v36

    .line 49
    :goto_3
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v44, v37

    goto :goto_4

    .line 50
    :cond_3
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v44, v36

    .line 51
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    move/from16 v36, v2

    move/from16 v78, v3

    move-object/from16 v45, v37

    goto :goto_5

    .line 52
    :cond_4
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v36

    move/from16 v78, v3

    move-object/from16 v45, v36

    move/from16 v36, v2

    .line 53
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 54
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v47, v37

    goto :goto_6

    .line 55
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    .line 56
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v79, v4

    move-object/from16 v48, v37

    goto :goto_7

    :cond_6
    move/from16 v79, v4

    .line 57
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    .line 58
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v49, v37

    goto :goto_8

    .line 59
    :cond_7
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    .line 60
    :goto_8
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v50, v37

    goto :goto_9

    .line 61
    :cond_8
    invoke-interface {v1, v12}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    .line 62
    :goto_9
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v51, v37

    goto :goto_a

    .line 63
    :cond_9
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    .line 64
    :goto_a
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    move-result-wide v52

    .line 65
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, p1

    move-object/from16 v54, v37

    goto :goto_b

    .line 66
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p1

    .line 67
    :goto_b
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, p2

    move-object/from16 v55, v37

    goto :goto_c

    .line 68
    :cond_b
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v55, v4

    move/from16 v4, p2

    .line 69
    :goto_c
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_c

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v37

    goto :goto_d

    .line 70
    :cond_c
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v38

    .line 71
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v3

    move/from16 v3, v17

    move-object/from16 v57, v37

    goto :goto_e

    .line 72
    :cond_d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v57, v16

    move/from16 v16, v3

    move/from16 v3, v17

    .line 73
    :goto_e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v17, v4

    move/from16 p2, v5

    move/from16 v4, v18

    move-object/from16 v58, v37

    :goto_f
    move/from16 v18, v6

    goto :goto_10

    :cond_e
    move/from16 v17, v4

    move/from16 p2, v5

    .line 74
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v58, v4

    move/from16 v4, v18

    goto :goto_f

    .line 75
    :goto_10
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_f

    move/from16 v5, v19

    const/16 v59, 0x1

    goto :goto_11

    :cond_f
    move/from16 v5, v19

    const/16 v59, 0x0

    .line 76
    :goto_11
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v6, v20

    move-object/from16 v60, v37

    goto :goto_12

    .line 77
    :cond_10
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v60, v19

    move/from16 v6, v20

    .line 78
    :goto_12
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    move/from16 v20, v3

    move/from16 v3, v21

    move-object/from16 v61, v37

    goto :goto_13

    .line 79
    :cond_11
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v61, v20

    move/from16 v20, v3

    move/from16 v3, v21

    .line 80
    :goto_13
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_12

    move/from16 v21, v3

    move/from16 v3, v22

    move-object/from16 v62, v37

    goto :goto_14

    .line 81
    :cond_12
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v62, v21

    move/from16 v21, v3

    move/from16 v3, v22

    .line 82
    :goto_14
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v22, v3

    move/from16 v3, v23

    move-object/from16 v63, v37

    goto :goto_15

    .line 83
    :cond_13
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v63, v22

    move/from16 v22, v3

    move/from16 v3, v23

    .line 84
    :goto_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v23, v3

    move/from16 v3, v24

    .line 85
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_14

    move/from16 v24, v3

    move/from16 v3, v25

    move-object/from16 v66, v37

    goto :goto_16

    .line 86
    :cond_14
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v66, v24

    move/from16 v24, v3

    move/from16 v3, v25

    .line 87
    :goto_16
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_15

    move/from16 v25, v3

    move/from16 v80, v5

    move/from16 v3, v26

    move-object/from16 v67, v37

    :goto_17
    move/from16 v26, v4

    goto :goto_18

    .line 88
    :cond_15
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v67

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move/from16 v80, v5

    move-object/from16 v67, v25

    move/from16 v25, v3

    move/from16 v3, v26

    goto :goto_17

    .line 89
    :goto_18
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_16

    move/from16 v4, v27

    const/16 v68, 0x1

    :goto_19
    move/from16 v27, v6

    goto :goto_1a

    :cond_16
    move/from16 v4, v27

    const/16 v68, 0x0

    goto :goto_19

    .line 90
    :goto_1a
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v3

    if-eqz v5, :cond_17

    move/from16 v5, v28

    const/16 v69, 0x1

    :goto_1b
    move/from16 v28, v4

    goto :goto_1c

    :cond_17
    move/from16 v5, v28

    const/16 v69, 0x0

    goto :goto_1b

    .line 91
    :goto_1c
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v70, 0x1

    goto :goto_1d

    :cond_18
    move/from16 v3, v29

    const/16 v70, 0x0

    .line 92
    :goto_1d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v4, v30

    move-object/from16 v71, v37

    goto :goto_1e

    .line 93
    :cond_19
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v71, v4

    move/from16 v4, v30

    .line 94
    :goto_1e
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    move/from16 v29, v3

    move/from16 v3, v31

    move-object/from16 v72, v37

    goto :goto_1f

    .line 95
    :cond_1a
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v29, v3

    move-object/from16 v72, v19

    move/from16 v3, v31

    .line 96
    :goto_1f
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    move/from16 v31, v3

    move/from16 v3, v32

    move-object/from16 v73, v37

    goto :goto_20

    .line 97
    :cond_1b
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v31, v3

    move-object/from16 v73, v19

    move/from16 v3, v32

    .line 98
    :goto_20
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1c

    move/from16 v32, v3

    move/from16 v3, v33

    move-object/from16 v74, v37

    goto :goto_21

    .line 99
    :cond_1c
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v32, v3

    move-object/from16 v74, v19

    move/from16 v3, v33

    .line 100
    :goto_21
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1d

    move/from16 v33, v3

    move/from16 v3, v34

    move-object/from16 v75, v37

    goto :goto_22

    .line 101
    :cond_1d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v33, v3

    move-object/from16 v75, v19

    move/from16 v3, v34

    .line 102
    :goto_22
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1e

    move/from16 v34, v3

    move/from16 v3, v35

    move-object/from16 v76, v37

    goto :goto_23

    .line 103
    :cond_1e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v34, v3

    move-object/from16 v76, v19

    move/from16 v3, v35

    .line 104
    :goto_23
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1f

    :goto_24
    move/from16 v35, v3

    move-object/from16 v77, v37

    goto :goto_25

    .line 105
    :cond_1f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_24

    .line 106
    :goto_25
    new-instance v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v3

    move/from16 v46, v2

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v30, v4

    move/from16 v2, v36

    move/from16 v3, v78

    move/from16 v4, v79

    move/from16 v19, v80

    move/from16 v81, v5

    move/from16 v5, p2

    move/from16 p2, v17

    move/from16 v17, v20

    move/from16 v20, v27

    move/from16 v27, v28

    move/from16 v28, v81

    move/from16 v82, v26

    move/from16 v26, v6

    move/from16 v6, v18

    move/from16 v18, v82

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_26

    .line 108
    :cond_20
    invoke-interface {v1}, Ly3/e;->close()V

    return-object v0

    :goto_26
    invoke-interface {v1}, Ly3/e;->close()V

    .line 109
    throw v0
.end method

.method private synthetic d0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->b:Landroidx/room/g;

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

.method private synthetic e0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->d:Landroidx/room/e;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Ly3/b;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method private static synthetic f0(JLjava/lang/String;JILjava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "UPDATE UGC_VIDEO_DETAIL_PLAY SET progress = ?, ugcVideoId= ?, timeStamp =?, position = ? WHERE collectionId = ? "

    .line 2
    .line 3
    invoke-interface {p7, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p7

    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    invoke-interface {p7, v0, p0, p1}, Ly3/e;->c(IJ)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p7, p0}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-interface {p7, p0, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 p0, 0x3

    .line 24
    invoke-interface {p7, p0, p3, p4}, Ly3/e;->c(IJ)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x4

    .line 28
    int-to-long p1, p5

    .line 29
    invoke-interface {p7, p0, p1, p2}, Ly3/e;->c(IJ)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x5

    .line 33
    if-nez p6, :cond_1

    .line 34
    .line 35
    invoke-interface {p7, p0}, Ly3/e;->g(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {p7, p0, p6}, Ly3/e;->i(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {p7}, Ly3/e;->C0()Z

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    invoke-interface {p7}, Ly3/e;->close()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :goto_2
    invoke-interface {p7}, Ly3/e;->close()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method private static synthetic g0(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "UPDATE UGC_VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE collectionId = ? "

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p2, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-interface {p2, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x2

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p2, p0}, Ly3/e;->g(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {p2, p0, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-interface {p2}, Ly3/e;->C0()Z

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    invoke-interface {p2}, Ly3/e;->close()V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :goto_2
    invoke-interface {p2}, Ly3/e;->close()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method private static synthetic h0(JLjava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "UPDATE UGC_VIDEO_DETAIL_PLAY SET totalDuration = ?, ugcVideoId= ? WHERE collectionId = ? "

    .line 2
    .line 3
    invoke-interface {p4, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    invoke-interface {p4, v0, p0, p1}, Ly3/e;->c(IJ)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p4, p0}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-interface {p4, p0, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 p0, 0x3

    .line 24
    if-nez p3, :cond_1

    .line 25
    .line 26
    invoke-interface {p4, p0}, Ly3/e;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-interface {p4, p0, p3}, Ly3/e;->i(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-interface {p4}, Ly3/e;->C0()Z

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    invoke-interface {p4}, Ly3/e;->close()V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :goto_2
    invoke-interface {p4}, Ly3/e;->close()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static synthetic x(JLjava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/j0;->h0(JLjava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/j0;->V(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/j0;->Y(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/x;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/baselib/db/video/x;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/w;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->c(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 3
    .line 4
    new-instance v10, Lcom/transsion/baselib/db/video/i0;

    .line 5
    .line 6
    move-object v2, v10

    .line 7
    move-wide/from16 v3, p5

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    move-wide v6, p3

    .line 11
    move/from16 v8, p7

    .line 12
    .line 13
    move-object v9, p1

    .line 14
    invoke-direct/range {v2 .. v9}, Lcom/transsion/baselib/db/video/i0;-><init>(JLjava/lang/String;JILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    move-object/from16 v4, p8

    .line 20
    .line 21
    invoke-static {v1, v2, v3, v10, v4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    return-object v1
.end method

.method public f(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/a0;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/a0;-><init>(II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/t;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/t;-><init>(Ljava/lang/String;)V

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

.method public h(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/u;

    .line 4
    .line 5
    invoke-direct {v1, p3, p4, p2, p1}, Lcom/transsion/baselib/db/video/u;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public i(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/r;

    .line 4
    .line 5
    invoke-direct {v1, p3, p2, p1}, Lcom/transsion/baselib/db/video/r;-><init>(Ljava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/v;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/v;-><init>(Ljava/lang/String;)V

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

.method public k(Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->e(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/h0;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/transsion/baselib/db/video/h0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public m(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/s;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/s;-><init>(Ljava/lang/String;)V

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

.method public n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->d(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/d0;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/d0;-><init>(II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public p(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/b0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/b0;-><init>(Lcom/transsion/baselib/db/video/j0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

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

.method public q(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/z;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/transsion/baselib/db/video/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/e0;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/e0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/y;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/baselib/db/video/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/f0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/f0;-><init>(Ljava/lang/String;)V

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

.method public v(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/c0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/c0;-><init>(Lcom/transsion/baselib/db/video/j0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

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

.method public w(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/j0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/g0;

    .line 4
    .line 5
    invoke-direct {v1, p3, p2, p1}, Lcom/transsion/baselib/db/video/g0;-><init>(Ljava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
