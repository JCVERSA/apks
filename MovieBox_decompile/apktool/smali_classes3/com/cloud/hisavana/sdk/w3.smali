.class public final Lcom/cloud/hisavana/sdk/w3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/v3;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/f;

.field private final d:Landroidx/room/l0;

.field private final e:Landroidx/room/l0;

.field private final f:Landroidx/room/l0;

.field private final g:Landroidx/room/l0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/w3$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$a;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/hisavana/sdk/w3$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$b;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->c:Landroidx/room/f;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/w3$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$c;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->d:Landroidx/room/l0;

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/hisavana/sdk/w3$d;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$d;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->e:Landroidx/room/l0;

    .line 33
    .line 34
    new-instance v0, Lcom/cloud/hisavana/sdk/w3$e;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$e;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->f:Landroidx/room/l0;

    .line 40
    .line 41
    new-instance v0, Lcom/cloud/hisavana/sdk/w3$f;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$f;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/l0;

    .line 47
    .line 48
    return-void
.end method

.method public static e()Ljava/util/List;
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


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->c:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->l(Ljava/lang/Iterable;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 6
    throw p1
.end method

.method public a(Lz3/g;)Landroid/database/Cursor;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->V(Lz3/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 14
    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 15
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 17
    throw v1
.end method

.method public b(Lz3/g;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->b:Landroidx/room/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/h;->k(Ljava/lang/Iterable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroidx/room/util/l;->b()Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "SELECT * FROM adList_room WHERE ad_creative_id IN ("

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    invoke-static {v0, v3}, Landroidx/room/util/l;->a(Ljava/lang/StringBuilder;I)V

    .line 22
    .line 23
    .line 24
    const-string v4, ")"

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v3}, Landroidx/room/i0;->f(Ljava/lang/String;I)Landroidx/room/i0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroidx/room/i0;->g(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/String;

    .line 58
    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroidx/room/i0;->g(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v3, v2, v4}, Landroidx/room/i0;->V(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_3
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 74
    .line 75
    .line 76
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :try_start_0
    const-string v0, "_id"

    .line 85
    .line 86
    invoke-static {v2, v0}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const-string v5, "ad_creative_id"

    .line 91
    .line 92
    invoke-static {v2, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const-string v6, "codeSeatId"

    .line 97
    .line 98
    invoke-static {v2, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    const-string v7, "file_path"

    .line 103
    .line 104
    invoke-static {v2, v7}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    const-string v8, "price"

    .line 109
    .line 110
    invoke-static {v2, v8}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const-string v9, "is_offline_ad"

    .line 115
    .line 116
    invoke-static {v2, v9}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    const-string v10, "ad_request_ver"

    .line 121
    .line 122
    invoke-static {v2, v10}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    const-string v11, "ad_bean"

    .line 127
    .line 128
    invoke-static {v2, v11}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    new-instance v12, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-eqz v13, :cond_b

    .line 146
    .line 147
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_4

    .line 156
    .line 157
    move-object/from16 v16, v4

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_4
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    move-object/from16 v16, v13

    .line 165
    .line 166
    :goto_5
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eqz v13, :cond_5

    .line 171
    .line 172
    move-object/from16 v17, v4

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_5
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    move-object/from16 v17, v13

    .line 180
    .line 181
    :goto_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    if-eqz v13, :cond_6

    .line 186
    .line 187
    move-object/from16 v18, v4

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    move-object/from16 v18, v13

    .line 195
    .line 196
    :goto_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    if-eqz v13, :cond_7

    .line 201
    .line 202
    move-object/from16 v19, v4

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    .line 206
    .line 207
    .line 208
    move-result-wide v13

    .line 209
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    move-object/from16 v19, v13

    .line 214
    .line 215
    :goto_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    if-eqz v13, :cond_8

    .line 220
    .line 221
    move-object/from16 v20, v4

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    move-object/from16 v20, v13

    .line 233
    .line 234
    :goto_9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-eqz v13, :cond_9

    .line 239
    .line 240
    move-object/from16 v21, v4

    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    move-object/from16 v21, v13

    .line 252
    .line 253
    :goto_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz v13, :cond_a

    .line 258
    .line 259
    move-object/from16 v22, v4

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    move-object/from16 v22, v13

    .line 267
    .line 268
    :goto_b
    new-instance v13, Lcom/cloud/hisavana/sdk/y3;

    .line 269
    .line 270
    move-object v14, v13

    .line 271
    invoke-direct/range {v14 .. v22}, Lcom/cloud/hisavana/sdk/y3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :catchall_0
    move-exception v0

    .line 280
    goto :goto_c

    .line 281
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Landroidx/room/i0;->release()V

    .line 285
    .line 286
    .line 287
    return-object v12

    .line 288
    :goto_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Landroidx/room/i0;->release()V

    .line 292
    .line 293
    .line 294
    throw v0
.end method
