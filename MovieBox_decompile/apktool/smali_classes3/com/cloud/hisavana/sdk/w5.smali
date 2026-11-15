.class public final Lcom/cloud/hisavana/sdk/w5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/v5;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/l0;

.field private final d:Landroidx/room/l0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/w5$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w5$a;-><init>(Lcom/cloud/hisavana/sdk/w5;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/hisavana/sdk/w5$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w5$b;-><init>(Lcom/cloud/hisavana/sdk/w5;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->c:Landroidx/room/l0;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/w5$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w5$c;-><init>(Lcom/cloud/hisavana/sdk/w5;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->d:Landroidx/room/l0;

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

    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 20
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->d:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->d:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 26
    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 27
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->d:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 29
    throw v1
.end method

.method public a(I)I
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->c:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 9
    invoke-interface {v0, p1, v1, v2}, Lz3/f;->c(IJ)V

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    move-result p1

    .line 12
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w5;->c:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 16
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w5;->c:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 18
    throw p1
.end method

.method public a(Lcom/cloud/hisavana/sdk/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 6
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 15

    .line 1
    const-string v0, "SELECT * FROM attr_impression_room"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/room/i0;->f(Ljava/lang/String;I)Landroidx/room/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->j()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w5;->a:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :try_start_0
    const-string v2, "_id"

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v4, "pkg"

    .line 27
    .line 28
    invoke-static {v1, v4}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-string v5, "imp_ts"

    .line 33
    .line 34
    invoke-static {v1, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "ad_creative_id"

    .line 39
    .line 40
    invoke-static {v1, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    new-instance v7, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_0

    .line 68
    .line 69
    move-object v11, v3

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    move-object v11, v8

    .line 76
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v12

    .line 80
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    move-object v14, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    move-object v14, v8

    .line 93
    :goto_2
    new-instance v8, Lcom/cloud/hisavana/sdk/b;

    .line 94
    .line 95
    move-object v9, v8

    .line 96
    invoke-direct/range {v9 .. v14}, Lcom/cloud/hisavana/sdk/b;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/room/i0;->release()V

    .line 109
    .line 110
    .line 111
    return-object v7

    .line 112
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/room/i0;->release()V

    .line 116
    .line 117
    .line 118
    throw v2
.end method
