.class public final Lcom/cloud/hisavana/sdk/a1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/z0;


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
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/a1$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/a1$a;-><init>(Lcom/cloud/hisavana/sdk/a1;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/hisavana/sdk/a1$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/a1$b;-><init>(Lcom/cloud/hisavana/sdk/a1;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->c:Landroidx/room/f;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/hisavana/sdk/a1$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/a1$c;-><init>(Lcom/cloud/hisavana/sdk/a1;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->d:Landroidx/room/l0;

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/hisavana/sdk/a1$d;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/a1$d;-><init>(Lcom/cloud/hisavana/sdk/a1;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->e:Landroidx/room/l0;

    .line 33
    .line 34
    return-void
.end method

.method public static d()Ljava/util/List;
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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->c:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->l(Ljava/lang/Iterable;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 6
    throw p1
.end method

.method public a(Lz3/g;)Landroid/database/Cursor;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->V(Lz3/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->d:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    move-result-object v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-interface {v0}, Lz3/h;->F()I

    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a1;->d:Landroidx/room/l0;

    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 14
    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 15
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a1;->d:Landroidx/room/l0;

    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 17
    throw v1
.end method

.method public b(Lz3/g;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->b:Landroidx/room/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/h;->k(Ljava/lang/Iterable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a1;->a:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
