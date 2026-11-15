.class public final Lcom/cloud/hisavana/sdk/d1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/b1;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/f;

.field private final d:Landroidx/room/l0;

.field private final e:Landroidx/room/l0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/d1$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d1$a;-><init>(Lcom/cloud/hisavana/sdk/d1;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/hisavana/sdk/d1$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d1$b;-><init>(Lcom/cloud/hisavana/sdk/d1;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->c:Landroidx/room/f;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/d1$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d1$c;-><init>(Lcom/cloud/hisavana/sdk/d1;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->d:Landroidx/room/l0;

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/hisavana/sdk/d1$d;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d1$d;-><init>(Lcom/cloud/hisavana/sdk/d1;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->e:Landroidx/room/l0;

    .line 33
    .line 34
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
.method public a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->d:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Lz3/f;->c(IJ)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d1;->d:Landroidx/room/l0;

    invoke-virtual {p2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    .line 10
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d1;->d:Landroidx/room/l0;

    invoke-virtual {p2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 12
    throw p1
.end method

.method public a(Lz3/g;)Landroid/database/Cursor;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->V(Lz3/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 6

    .line 13
    const-string v0, "SELECT tracking_data FROM retry_tracking_table_room"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/i0;->f(Ljava/lang/String;I)Landroidx/room/i0;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->j()V

    .line 15
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;Lz3/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 16
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 20
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 21
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 22
    invoke-virtual {v0}, Landroidx/room/i0;->release()V

    return-object v4

    .line 23
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 24
    invoke-virtual {v0}, Landroidx/room/i0;->release()V

    .line 25
    throw v1
.end method

.method public b([Ljava/lang/String;)I
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 13
    invoke-static {}, Landroidx/room/util/l;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    const-string v1, "DELETE FROM retry_tracking_table_room WHERE uuid in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    array-length v1, p1

    .line 16
    invoke-static {v0, v1}, Landroidx/room/util/l;->a(Ljava/lang/StringBuilder;I)V

    .line 17
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->m(Ljava/lang/String;)Lz3/h;

    move-result-object v0

    .line 20
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    .line 21
    invoke-interface {v0, v2}, Lz3/f;->g(I)V

    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {v0, v2, v4}, Lz3/f;->V(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    .line 24
    :try_start_0
    invoke-interface {v0}, Lz3/h;->F()I

    move-result p1

    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 27
    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->e:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->e:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 8
    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 9
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d1;->e:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 11
    throw v1
.end method

.method public c(Lcom/cloud/hisavana/sdk/i1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->c:Landroidx/room/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/f;->k(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public d(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->b:Landroidx/room/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->a:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
