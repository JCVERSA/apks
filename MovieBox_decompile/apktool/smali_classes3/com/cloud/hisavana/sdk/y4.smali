.class public final Lcom/cloud/hisavana/sdk/y4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/x4;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/h;

.field private final d:Landroidx/room/l0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/y4$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/y4$a;-><init>(Lcom/cloud/hisavana/sdk/y4;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/hisavana/sdk/y4$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/y4$b;-><init>(Lcom/cloud/hisavana/sdk/y4;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->c:Landroidx/room/h;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/y4$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/y4$c;-><init>(Lcom/cloud/hisavana/sdk/y4;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->d:Landroidx/room/l0;

    .line 26
    .line 27
    return-void
.end method

.method public static c()Ljava/util/List;
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
.method public a()I
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->d:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/y4;->d:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 14
    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 15
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/y4;->d:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 17
    throw v1
.end method

.method public a(Ljava/util/List;)I
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 19
    invoke-static {}, Landroidx/room/util/l;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    const-string v1, "DELETE FROM attr_click_room WHERE _id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 22
    invoke-static {v0, v1}, Landroidx/room/util/l;->a(Ljava/lang/StringBuilder;I)V

    .line 23
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->m(Ljava/lang/String;)Lz3/h;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 27
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lz3/f;->c(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    .line 30
    :try_start_0
    invoke-interface {v0}, Lz3/h;->F()I

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 33
    throw p1
.end method

.method public a(Lcom/cloud/hisavana/sdk/n5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 6
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM attr_click_room"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Landroidx/room/i0;->f(Ljava/lang/String;I)Landroidx/room/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/y4;->a:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :try_start_0
    const-string v0, "_id"

    .line 23
    .line 24
    invoke-static {v2, v0}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v5, "ac_type"

    .line 29
    .line 30
    invoke-static {v2, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const-string v6, "pkg"

    .line 35
    .line 36
    invoke-static {v2, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const-string v7, "dl_type"

    .line 41
    .line 42
    invoke-static {v2, v7}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string v8, "codeSeatId"

    .line 47
    .line 48
    invoke-static {v2, v8}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    const-string v9, "click_ts"

    .line 53
    .line 54
    invoke-static {v2, v9}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const-string v10, "ad_creative_id"

    .line 59
    .line 60
    invoke-static {v2, v10}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    new-instance v11, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-eqz v12, :cond_4

    .line 78
    .line 79
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_0

    .line 92
    .line 93
    move-object/from16 v16, v4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    move-object/from16 v16, v12

    .line 101
    .line 102
    :goto_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_1

    .line 107
    .line 108
    move-object/from16 v17, v4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    move-object/from16 v17, v12

    .line 116
    .line 117
    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_2

    .line 122
    .line 123
    move-object/from16 v18, v4

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    move-object/from16 v18, v12

    .line 131
    .line 132
    :goto_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v19

    .line 136
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_3

    .line 141
    .line 142
    move-object/from16 v21, v4

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    move-object/from16 v21, v12

    .line 150
    .line 151
    :goto_4
    new-instance v12, Lcom/cloud/hisavana/sdk/n5;

    .line 152
    .line 153
    move-object v13, v12

    .line 154
    invoke-direct/range {v13 .. v21}, Lcom/cloud/hisavana/sdk/n5;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    goto :goto_5

    .line 163
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Landroidx/room/i0;->release()V

    .line 167
    .line 168
    .line 169
    return-object v11

    .line 170
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/room/i0;->release()V

    .line 174
    .line 175
    .line 176
    throw v0
.end method
