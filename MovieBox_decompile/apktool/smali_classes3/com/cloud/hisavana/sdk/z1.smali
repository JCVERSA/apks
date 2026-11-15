.class public final Lcom/cloud/hisavana/sdk/z1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/y1;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/l0;

.field private final d:Landroidx/room/l0;

.field private final e:Landroidx/room/l0;

.field private final f:Landroidx/room/l0;

.field private final g:Landroidx/room/l0;

.field private final h:Landroidx/room/l0;

.field private final i:Landroidx/room/l0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$a;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$b;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->c:Landroidx/room/l0;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$c;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->d:Landroidx/room/l0;

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$d;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$d;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->e:Landroidx/room/l0;

    .line 33
    .line 34
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$e;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$e;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->f:Landroidx/room/l0;

    .line 40
    .line 41
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$f;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$f;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->g:Landroidx/room/l0;

    .line 47
    .line 48
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$g;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$g;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->h:Landroidx/room/l0;

    .line 54
    .line 55
    new-instance v0, Lcom/cloud/hisavana/sdk/z1$h;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/z1$h;-><init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->i:Landroidx/room/l0;

    .line 61
    .line 62
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
.method public a()Ljava/util/List;
    .locals 38

    move-object/from16 v1, p0

    .line 64
    const-string v0, "SELECT * FROM default_ad_room"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/i0;->f(Ljava/lang/String;I)Landroidx/room/i0;

    move-result-object v3

    .line 65
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 66
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 67
    :try_start_0
    const-string v0, "ad_creative_id"

    invoke-static {v2, v0}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 68
    const-string v5, "codeSeatId"

    invoke-static {v2, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 69
    const-string v6, "ad_type"

    invoke-static {v2, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 70
    const-string v7, "price"

    invoke-static {v2, v7}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 71
    const-string v8, "ad_request_ver"

    invoke-static {v2, v8}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 72
    const-string v9, "displayed_times"

    invoke-static {v2, v9}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 73
    const-string v10, "displayed_date"

    invoke-static {v2, v10}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 74
    const-string v11, "start_date"

    invoke-static {v2, v11}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 75
    const-string v12, "end_date"

    invoke-static {v2, v12}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 76
    const-string v13, "display_max_times"

    invoke-static {v2, v13}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 77
    const-string v14, "file_path"

    invoke-static {v2, v14}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 78
    const-string v15, "default_country_white"

    invoke-static {v2, v15}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 79
    const-string v4, "default_country_black"

    invoke-static {v2, v4}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 80
    const-string v1, "default_brand_white"

    invoke-static {v2, v1}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 81
    :try_start_1
    const-string v3, "default_brand_black"

    invoke-static {v2, v3}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 82
    const-string v3, "ad_bean"

    invoke-static {v2, v3}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v19, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 85
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v21, 0x0

    goto :goto_1

    .line 86
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 87
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v22, 0x0

    goto :goto_2

    .line 88
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 89
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 90
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v24, 0x0

    goto :goto_3

    .line 91
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v24, v1

    .line 92
    :goto_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 93
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 94
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v27, 0x0

    goto :goto_4

    .line 95
    :cond_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 96
    :goto_4
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v28, 0x0

    goto :goto_5

    .line 97
    :cond_4
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    .line 98
    :goto_5
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v29, 0x0

    goto :goto_6

    .line 99
    :cond_5
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    .line 100
    :goto_6
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 101
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v31, 0x0

    goto :goto_7

    .line 102
    :cond_6
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    .line 103
    :goto_7
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v32, 0x0

    goto :goto_8

    .line 104
    :cond_7
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    .line 105
    :goto_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v1, v19

    const/16 v33, 0x0

    goto :goto_9

    .line 106
    :cond_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    move/from16 v1, v19

    .line 107
    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v34, 0x0

    :goto_a
    move/from16 v37, v17

    move/from16 v17, v0

    move/from16 v0, v37

    goto :goto_b

    .line 108
    :cond_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v34, v19

    goto :goto_a

    .line 109
    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v35, 0x0

    :goto_c
    move/from16 v37, v18

    move/from16 v18, v0

    move/from16 v0, v37

    goto :goto_d

    .line 110
    :cond_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v35, v19

    goto :goto_c

    .line 111
    :goto_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v0

    const/16 v36, 0x0

    goto :goto_e

    .line 112
    :cond_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v36, v19

    move/from16 v19, v0

    .line 113
    :goto_e
    new-instance v0, Lcom/cloud/hisavana/sdk/c2;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v36}, Lcom/cloud/hisavana/sdk/c2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Double;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_f

    .line 115
    :cond_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 116
    invoke-virtual/range {v16 .. v16}, Landroidx/room/i0;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 117
    :goto_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 118
    invoke-virtual/range {v16 .. v16}, Landroidx/room/i0;->release()V

    .line 119
    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 53
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->h:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 54
    invoke-interface {v0, p1, v1, v2}, Lz3/f;->c(IJ)V

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 57
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->h:Landroidx/room/l0;

    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 61
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->h:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 63
    throw p1
.end method

.method public a(Lcom/cloud/hisavana/sdk/c2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 6
    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->e:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 24
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0, v1, p1}, Lz3/f;->V(ILjava/lang/String;)V

    .line 26
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 28
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->e:Landroidx/room/l0;

    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 31
    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 32
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->e:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 34
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->d:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, v1, p1}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lz3/f;->g(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0, p1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 13
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 15
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->d:Landroidx/room/l0;

    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    .line 19
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_2
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1;->d:Landroidx/room/l0;

    invoke-virtual {p2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 21
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->g:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 37
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v0, v1, p3}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    if-nez p1, :cond_1

    .line 39
    invoke-interface {v0, p3}, Lz3/f;->g(I)V

    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v0, p3, p1}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x3

    if-nez p2, :cond_2

    .line 41
    invoke-interface {v0, p1}, Lz3/f;->g(I)V

    goto :goto_2

    .line 42
    :cond_2
    invoke-interface {v0, p1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 43
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 45
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->g:Landroidx/room/l0;

    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 48
    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    .line 49
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :goto_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1;->g:Landroidx/room/l0;

    invoke-virtual {p2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 51
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 121
    invoke-static {}, Landroidx/room/util/l;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string v1, "DELETE FROM default_ad_room WHERE codeSeatId NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 124
    invoke-static {v0, v1}, Landroidx/room/util/l;->a(Ljava/lang/StringBuilder;I)V

    .line 125
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->m(Ljava/lang/String;)Lz3/h;

    move-result-object v0

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 129
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_1

    .line 130
    :cond_0
    invoke-interface {v0, v1, v2}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    .line 132
    :try_start_0
    invoke-interface {v0}, Lz3/h;->F()I

    .line 133
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 135
    throw p1
.end method

.method public b()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->i:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->i:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 41
    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 42
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/z1;->i:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 44
    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->f:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, v1, p1}, Lz3/f;->V(ILjava/lang/String;)V

    .line 7
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->f:Landroidx/room/l0;

    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 12
    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 13
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :goto_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z1;->f:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 15
    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z1;->c:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    .line 18
    invoke-interface {v0, p3, v1, v2}, Lz3/f;->c(IJ)V

    const/4 p3, 0x2

    if-nez p4, :cond_0

    .line 19
    invoke-interface {v0, p3}, Lz3/f;->g(I)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v0, p3, p4}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x3

    if-nez p1, :cond_1

    .line 21
    invoke-interface {v0, p3}, Lz3/f;->g(I)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v0, p3, p1}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    if-nez p2, :cond_2

    .line 23
    invoke-interface {v0, p1}, Lz3/f;->g(I)V

    goto :goto_2

    .line 24
    :cond_2
    invoke-interface {v0, p1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 25
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 27
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z1;->c:Landroidx/room/l0;

    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    .line 31
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :goto_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z1;->c:Landroidx/room/l0;

    invoke-virtual {p2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 33
    throw p1
.end method
