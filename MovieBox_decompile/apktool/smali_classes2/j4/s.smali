.class public final Lj4/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lj4/r;


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
    iput-object p1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Lj4/s$a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lj4/s$a;-><init>(Lj4/s;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lj4/s;->b:Landroidx/room/h;

    .line 12
    .line 13
    new-instance v0, Lj4/s$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lj4/s$b;-><init>(Lj4/s;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lj4/s;->c:Landroidx/room/l0;

    .line 19
    .line 20
    new-instance v0, Lj4/s$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lj4/s$c;-><init>(Lj4/s;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lj4/s;->d:Landroidx/room/l0;

    .line 26
    .line 27
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
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj4/s;->c:Landroidx/room/l0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lz3/f;->g(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Lz3/f;->V(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-interface {v0}, Lz3/h;->F()I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lj4/s;->c:Landroidx/room/l0;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    iget-object v1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lj4/s;->c:Landroidx/room/l0;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public b(Lj4/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lj4/s;->b:Landroidx/room/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

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
    iget-object v0, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj4/s;->d:Landroidx/room/l0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/l0;->b()Lz3/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0}, Lz3/h;->F()I

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lj4/s;->d:Landroidx/room/l0;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    iget-object v2, p0, Lj4/s;->a:Landroidx/room/RoomDatabase;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lj4/s;->d:Landroidx/room/l0;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroidx/room/l0;->h(Lz3/h;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method
