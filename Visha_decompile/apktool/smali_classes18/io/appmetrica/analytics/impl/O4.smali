.class public final Lio/appmetrica/analytics/impl/O4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/La;
.implements Lio/appmetrica/analytics/impl/sl;
.implements Lio/appmetrica/analytics/impl/Na;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/f5;

.field public final c:Lio/appmetrica/analytics/impl/dm;

.field public final d:Lio/appmetrica/analytics/impl/rh;

.field public final e:Lio/appmetrica/analytics/impl/V4;

.field public final f:Lio/appmetrica/analytics/impl/Jm;

.field public g:Ljava/util/ArrayList;

.field public final h:Lio/appmetrica/analytics/impl/g5;

.field public final i:Lio/appmetrica/analytics/impl/ag;

.field public final j:Lio/appmetrica/analytics/impl/l4;

.field public final k:Lio/appmetrica/analytics/impl/fg;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/ag;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/jl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/G4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/ag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v5, Lio/appmetrica/analytics/impl/rh;

    iget-object v0, p4, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    invoke-direct {v5, v0}, Lio/appmetrica/analytics/impl/rh;-><init>(Lio/appmetrica/analytics/impl/F4;)V

    new-instance v7, Lio/appmetrica/analytics/impl/g5;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/g5;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/Q4;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Q4;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/fg;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/fg;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v9}, Lio/appmetrica/analytics/impl/O4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/rh;Lio/appmetrica/analytics/impl/ag;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/fg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/rh;Lio/appmetrica/analytics/impl/ag;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/fg;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->a:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/O4;->b:Lio/appmetrica/analytics/impl/f5;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/rh;

    .line 8
    iput-object p7, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/g5;

    .line 9
    invoke-static {p0}, Lio/appmetrica/analytics/impl/Q4;->a(Lio/appmetrica/analytics/impl/O4;)Lio/appmetrica/analytics/impl/V4;

    move-result-object p5

    iput-object p5, p0, Lio/appmetrica/analytics/impl/O4;->e:Lio/appmetrica/analytics/impl/V4;

    .line 10
    invoke-static {p4}, Lio/appmetrica/analytics/impl/O4;->b(Lio/appmetrica/analytics/impl/G4;)V

    .line 11
    iget-object p4, p4, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {p2, p1, p3, p4}, Lio/appmetrica/analytics/impl/jl;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Bl;)Lio/appmetrica/analytics/impl/dm;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/dm;

    .line 12
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object p4

    .line 13
    invoke-static {p1, p4}, Lio/appmetrica/analytics/impl/m4;->a(Lio/appmetrica/analytics/impl/dm;Lio/appmetrica/analytics/impl/Q;)Lio/appmetrica/analytics/impl/l4;

    move-result-object p4

    iput-object p4, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 14
    invoke-virtual {p8, p0, p1}, Lio/appmetrica/analytics/impl/Q4;->a(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/Jm;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->f:Lio/appmetrica/analytics/impl/Jm;

    .line 15
    iput-object p6, p0, Lio/appmetrica/analytics/impl/O4;->i:Lio/appmetrica/analytics/impl/ag;

    .line 16
    iput-object p9, p0, Lio/appmetrica/analytics/impl/O4;->k:Lio/appmetrica/analytics/impl/fg;

    .line 17
    invoke-virtual {p2, p3, p0}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/sl;)V

    return-void
.end method

.method public static b(Lio/appmetrica/analytics/impl/G4;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->n:Ljava/lang/Boolean;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 3
    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 4
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Q;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/l4;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    return-object p0
.end method

.method public final a(Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1    # Landroid/os/ResultReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->k:Lio/appmetrica/analytics/impl/fg;

    new-instance v0, Lio/appmetrica/analytics/impl/N4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/N4;-><init>(Landroid/os/ResultReceiver;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/fg;->a(Lio/appmetrica/analytics/impl/Sf;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/rh;

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/rh;->a:Lio/appmetrica/analytics/impl/F4;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/F4;->b(Lio/appmetrica/analytics/impl/F4;)Lio/appmetrica/analytics/impl/F4;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rh;->a:Lio/appmetrica/analytics/impl/F4;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/G4;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/G4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/dm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Bl;)V

    .line 71
    iget-object p1, p1, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/O4;->a(Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/g5;

    .line 29
    iget-object v1, v1, Lio/appmetrica/analytics/impl/g5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/L4;

    .line 31
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Hl;->l:Ljava/lang/String;

    .line 32
    invoke-static {v3}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 33
    iget-object v4, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 34
    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v3

    .line 35
    iget-object v2, v2, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    .line 36
    invoke-static {v2, v3}, Lio/appmetrica/analytics/impl/I6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 37
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/eb;

    .line 39
    iget-object v4, v3, Lio/appmetrica/analytics/impl/eb;->b:Ljava/util/List;

    .line 40
    iget-object v5, v3, Lio/appmetrica/analytics/impl/eb;->c:Ljava/util/HashMap;

    new-instance v6, Lio/appmetrica/analytics/impl/cb;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/cb;-><init>()V

    invoke-static {p1, v4, v5, v6}, Lio/appmetrica/analytics/impl/El;->a(Lio/appmetrica/analytics/impl/Hl;Ljava/util/Collection;Ljava/util/Map;Lc74;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, v3, Lio/appmetrica/analytics/impl/eb;->a:Landroid/os/ResultReceiver;

    .line 42
    iget-object v3, v3, Lio/appmetrica/analytics/impl/eb;->c:Ljava/util/HashMap;

    .line 43
    iget-object v5, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 44
    invoke-virtual {v5, v3}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v3

    .line 45
    invoke-static {v4, v3}, Lio/appmetrica/analytics/impl/I6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 49
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->f:Lio/appmetrica/analytics/impl/Jm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->b()V

    .line 50
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/L4;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/L4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/g5;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/g5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/dm;

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hl;->l:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 12
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v0

    .line 13
    iget-object p1, p1, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    .line 14
    invoke-static {p1, v0}, Lio/appmetrica/analytics/impl/I6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/L4;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/L4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->e:Lio/appmetrica/analytics/impl/V4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lio/appmetrica/analytics/impl/U4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/U4;-><init>(Lio/appmetrica/analytics/impl/L4;)V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Q2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/P2;)Z

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/eb;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/eb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Lio/appmetrica/analytics/impl/eb;->b:Ljava/util/List;

    .line 53
    iget-object v1, p1, Lio/appmetrica/analytics/impl/eb;->a:Landroid/os/ResultReceiver;

    .line 54
    iget-object v2, p1, Lio/appmetrica/analytics/impl/eb;->c:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    .line 55
    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/dm;

    invoke-virtual {v3, v0, v2}, Lio/appmetrica/analytics/impl/dm;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 57
    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v3

    .line 58
    invoke-static {v1, v3}, Lio/appmetrica/analytics/impl/I6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    .line 59
    :cond_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/dm;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/dm;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 61
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->f:Lio/appmetrica/analytics/impl/Jm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->b()V

    goto :goto_3

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    if-eqz v0, :cond_4

    .line 65
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 66
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object p0

    .line 67
    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/I6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/Hl;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/ll;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    iget-object p2, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    monitor-enter p2

    .line 18
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/eb;

    .line 19
    iget-object v2, v1, Lio/appmetrica/analytics/impl/eb;->a:Landroid/os/ResultReceiver;

    .line 20
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 21
    iget-object v1, v1, Lio/appmetrica/analytics/impl/eb;->c:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v3, v1}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v1

    .line 23
    invoke-static {v2, p1, v1}, Lio/appmetrica/analytics/impl/I6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/k4;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 24
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 25
    monitor-exit p2

    return-void

    .line 26
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/f5;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->b:Lio/appmetrica/analytics/impl/f5;

    return-object p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/L4;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/L4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/g5;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/g5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->COMMUTATION:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/F4;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/rh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->a:Lio/appmetrica/analytics/impl/F4;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/ag;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->i:Lio/appmetrica/analytics/impl/ag;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->a:Landroid/content/Context;

    return-object p0
.end method
