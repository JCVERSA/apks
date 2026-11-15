.class Lj4/w$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj4/w;->B(Ljava/util/List;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/i0;

.field final synthetic b:Lj4/w;


# direct methods
.method constructor <init>(Lj4/w;Landroidx/room/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/w$e;->b:Lj4/w;

    .line 2
    .line 3
    iput-object p2, p0, Lj4/w$e;->a:Landroidx/room/i0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lj4/w$e;->b:Lj4/w;

    .line 4
    .line 5
    invoke-static {v0}, Lj4/w;->G(Lj4/w;)Landroidx/room/RoomDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, v1, Lj4/w$e;->b:Lj4/w;

    .line 13
    .line 14
    invoke-static {v0}, Lj4/w;->G(Lj4/w;)Landroidx/room/RoomDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, v1, Lj4/w$e;->a:Landroidx/room/i0;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    new-instance v0, Landroidx/collection/a;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroidx/collection/a;

    .line 32
    .line 33
    invoke-direct {v5}, Landroidx/collection/a;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v0, v6}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Ljava/util/ArrayList;

    .line 52
    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    new-instance v8, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v6, v8}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_1
    :goto_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Ljava/util/ArrayList;

    .line 76
    .line 77
    if-nez v7, :cond_0

    .line 78
    .line 79
    new-instance v7, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6, v7}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 v6, -0x1

    .line 89
    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 90
    .line 91
    .line 92
    iget-object v6, v1, Lj4/w$e;->b:Lj4/w;

    .line 93
    .line 94
    invoke-static {v6, v0}, Lj4/w;->H(Lj4/w;Landroidx/collection/a;)V

    .line 95
    .line 96
    .line 97
    iget-object v6, v1, Lj4/w$e;->b:Lj4/w;

    .line 98
    .line 99
    invoke-static {v6, v5}, Lj4/w;->I(Lj4/w;Landroidx/collection/a;)V

    .line 100
    .line 101
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_7

    .line 116
    .line 117
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_3

    .line 122
    .line 123
    move-object v10, v4

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    move-object v10, v8

    .line 130
    :goto_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    invoke-static {v8}, Lj4/b0;->f(I)Landroidx/work/WorkInfo$State;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    const/4 v8, 0x2

    .line 139
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    move-object v8, v4

    .line 146
    goto :goto_4

    .line 147
    :cond_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    :goto_4
    invoke-static {v8}, Landroidx/work/d;->g([B)Landroidx/work/d;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    const/4 v8, 0x3

    .line 156
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    const/4 v8, 0x4

    .line 161
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v0, v8}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    check-cast v8, Ljava/util/ArrayList;

    .line 174
    .line 175
    if-nez v8, :cond_5

    .line 176
    .line 177
    new-instance v8, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    :cond_5
    move-object v15, v8

    .line 183
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v5, v8}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Ljava/util/ArrayList;

    .line 192
    .line 193
    if-nez v8, :cond_6

    .line 194
    .line 195
    new-instance v8, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    :cond_6
    move-object/from16 v16, v8

    .line 201
    .line 202
    new-instance v8, Lj4/u$c;

    .line 203
    .line 204
    move-object v9, v8

    .line 205
    invoke-direct/range {v9 .. v16}, Lj4/u$c;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/d;IILjava/util/List;Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    iget-object v0, v1, Lj4/w$e;->b:Lj4/w;

    .line 213
    .line 214
    invoke-static {v0}, Lj4/w;->G(Lj4/w;)Landroidx/room/RoomDatabase;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    .line 221
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lj4/w$e;->b:Lj4/w;

    .line 225
    .line 226
    invoke-static {v0}, Lj4/w;->G(Lj4/w;)Landroidx/room/RoomDatabase;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 231
    .line 232
    .line 233
    return-object v6

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    goto :goto_6

    .line 236
    :goto_5
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 237
    .line 238
    .line 239
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    :goto_6
    iget-object v2, v1, Lj4/w$e;->b:Lj4/w;

    .line 241
    .line 242
    invoke-static {v2}, Lj4/w;->G(Lj4/w;)Landroidx/room/RoomDatabase;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 247
    .line 248
    .line 249
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj4/w$e;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/w$e;->a:Landroidx/room/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/i0;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
