.class public final Laj/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Laj/a;


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
    iput-object p1, p0, Laj/e;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Laj/e$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Laj/e$a;-><init>(Laj/e;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Laj/e;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Laj/e$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Laj/e$b;-><init>(Laj/e;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Laj/e;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic d(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Laj/e;->i(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Laj/e;Lcom/transsion/baselib/db/room/RoomItemBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Laj/e;->h(Lcom/transsion/baselib/db/room/RoomItemBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Laj/e;Lcom/transsion/baselib/db/room/RoomItemBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Laj/e;->j(Lcom/transsion/baselib/db/room/RoomItemBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g()Ljava/util/List;
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

.method private synthetic h(Lcom/transsion/baselib/db/room/RoomItemBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Laj/e;->c:Landroidx/room/e;

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

.method private static synthetic i(Ly3/b;)Ljava/util/List;
    .locals 26

    .line 1
    const-string v0, "SELECT * FROM ROOM_TABLE ORDER BY updateTimeStamp DESC"

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
    const-string v0, "groupId"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "name"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "avatar"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "hasJoin"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "newPostCount"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "description"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "postCount"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "userCount"

    .line 52
    .line 53
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "level"

    .line 58
    .line 59
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "updateTimeStamp"

    .line 64
    .line 65
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    new-instance v11, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_b

    .line 79
    .line 80
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    if-eqz v12, :cond_0

    .line 85
    .line 86
    const/4 v15, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    move-object v15, v12

    .line 93
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_1

    .line 98
    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    move-object/from16 v16, v12

    .line 107
    .line 108
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-eqz v12, :cond_2

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    move-object/from16 v17, v12

    .line 122
    .line 123
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_3

    .line 128
    .line 129
    const/4 v12, 0x0

    .line 130
    goto :goto_4

    .line 131
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v13

    .line 135
    long-to-int v12, v13

    .line 136
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    :goto_4
    if-nez v12, :cond_4

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-eqz v12, :cond_5

    .line 150
    .line 151
    const/4 v12, 0x1

    .line 152
    goto :goto_5

    .line 153
    :cond_5
    const/4 v12, 0x0

    .line 154
    :goto_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    move-object/from16 v18, v12

    .line 159
    .line 160
    :goto_6
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-eqz v12, :cond_6

    .line 165
    .line 166
    const/16 v19, 0x0

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_6
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 170
    .line 171
    .line 172
    move-result-wide v12

    .line 173
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    move-object/from16 v19, v12

    .line 178
    .line 179
    :goto_7
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-eqz v12, :cond_7

    .line 184
    .line 185
    const/16 v20, 0x0

    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_7
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    move-object/from16 v20, v12

    .line 193
    .line 194
    :goto_8
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_8

    .line 199
    .line 200
    const/16 v21, 0x0

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_8
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 204
    .line 205
    .line 206
    move-result-wide v12

    .line 207
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    move-object/from16 v21, v12

    .line 212
    .line 213
    :goto_9
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    if-eqz v12, :cond_9

    .line 218
    .line 219
    const/16 v22, 0x0

    .line 220
    .line 221
    goto :goto_a

    .line 222
    :cond_9
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 223
    .line 224
    .line 225
    move-result-wide v12

    .line 226
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    move-object/from16 v22, v12

    .line 231
    .line 232
    :goto_a
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-eqz v12, :cond_a

    .line 237
    .line 238
    const/16 v23, 0x0

    .line 239
    .line 240
    goto :goto_b

    .line 241
    :cond_a
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    move-object/from16 v23, v13

    .line 246
    .line 247
    :goto_b
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 248
    .line 249
    .line 250
    move-result-wide v24

    .line 251
    new-instance v12, Lcom/transsion/baselib/db/room/RoomItemBean;

    .line 252
    .line 253
    move-object v14, v12

    .line 254
    invoke-direct/range {v14 .. v25}, Lcom/transsion/baselib/db/room/RoomItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :catchall_0
    move-exception v0

    .line 263
    goto :goto_c

    .line 264
    :cond_b
    invoke-interface {v1}, Ly3/e;->close()V

    .line 265
    .line 266
    .line 267
    return-object v11

    .line 268
    :goto_c
    invoke-interface {v1}, Ly3/e;->close()V

    .line 269
    .line 270
    .line 271
    throw v0
.end method

.method private synthetic j(Lcom/transsion/baselib/db/room/RoomItemBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Laj/e;->b:Landroidx/room/g;

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


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Laj/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Laj/c;

    .line 4
    .line 5
    invoke-direct {v1}, Laj/c;-><init>()V

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

.method public b(Lcom/transsion/baselib/db/room/RoomItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laj/e;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Laj/b;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Laj/b;-><init>(Laj/e;Lcom/transsion/baselib/db/room/RoomItemBean;)V

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

.method public c(Lcom/transsion/baselib/db/room/RoomItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laj/e;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Laj/d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Laj/d;-><init>(Laj/e;Lcom/transsion/baselib/db/room/RoomItemBean;)V

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
