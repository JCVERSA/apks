.class public Lio/appmetrica/analytics/impl/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Wa;
.implements Lio/appmetrica/analytics/impl/La;
.implements Lio/appmetrica/analytics/impl/bh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/f5;

.field public final c:Lio/appmetrica/analytics/impl/Le;

.field public final d:Lio/appmetrica/analytics/impl/Oe;

.field public final e:Lio/appmetrica/analytics/impl/S6;

.field public final f:Lio/appmetrica/analytics/impl/ki;

.field public final g:Lio/appmetrica/analytics/impl/d9;

.field public final h:Lio/appmetrica/analytics/impl/d0;

.field public final i:Lio/appmetrica/analytics/impl/e0;

.field public final j:Lio/appmetrica/analytics/impl/vk;

.field public final k:Lio/appmetrica/analytics/impl/Fg;

.field public final l:Lio/appmetrica/analytics/impl/Q8;

.field public final m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final n:Lio/appmetrica/analytics/impl/q9;

.field public final o:Lio/appmetrica/analytics/impl/h5;

.field public final p:Lio/appmetrica/analytics/impl/w9;

.field public final q:Lio/appmetrica/analytics/impl/G3;

.field public final r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

.field public final s:Lio/appmetrica/analytics/impl/if;

.field public final t:Lio/appmetrica/analytics/impl/Un;

.field public final u:Lio/appmetrica/analytics/impl/nk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/impl/k5;)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/Zg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/impl/k5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/e0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/e0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v16, Lio/appmetrica/analytics/impl/r5;

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Uj;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v12

    .line 4
    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v13

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object v14

    new-instance v15, Lio/appmetrica/analytics/impl/e5;

    invoke-direct {v15}, Lio/appmetrica/analytics/impl/e5;-><init>()V

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/r5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    .line 6
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/m5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/F4;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/m5;->a:Landroid/content/Context;

    .line 9
    iput-object v6, v0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    .line 10
    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->i:Lio/appmetrica/analytics/impl/e0;

    move-object/from16 v3, p4

    .line 11
    iput-object v3, v0, Lio/appmetrica/analytics/impl/m5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    .line 12
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/r5;->f()Lio/appmetrica/analytics/impl/Un;

    move-result-object v9

    iput-object v9, v0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    .line 13
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ua;->s()Lio/appmetrica/analytics/impl/if;

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/m5;->s:Lio/appmetrica/analytics/impl/if;

    .line 14
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/r5;->a(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/Fg;

    move-result-object v4

    iput-object v4, v0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    .line 15
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/r5;->d()Lio/appmetrica/analytics/impl/p5;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/p5;->a()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 16
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/r5;->e()Lio/appmetrica/analytics/impl/q5;

    move-result-object v5

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/q5;->a()Lio/appmetrica/analytics/impl/Le;

    move-result-object v15

    iput-object v15, v0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    .line 17
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v5

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v5

    iput-object v5, v0, Lio/appmetrica/analytics/impl/m5;->d:Lio/appmetrica/analytics/impl/Oe;

    .line 18
    invoke-virtual {v1, v6, v3, v15}, Lio/appmetrica/analytics/impl/e0;->a(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/d0;

    move-result-object v12

    iput-object v12, v0, Lio/appmetrica/analytics/impl/m5;->h:Lio/appmetrica/analytics/impl/d0;

    .line 19
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/r5;->a()Lio/appmetrica/analytics/impl/Q8;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->l:Lio/appmetrica/analytics/impl/Q8;

    .line 20
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/r5;->b(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/S6;

    move-result-object v5

    iput-object v5, v0, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    .line 21
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/r5;->d(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/mi;

    move-result-object v16

    .line 22
    invoke-static {}, Lio/appmetrica/analytics/impl/r5;->b()Lio/appmetrica/analytics/impl/h5;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->o:Lio/appmetrica/analytics/impl/h5;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lio/appmetrica/analytics/impl/m5;->v()V

    .line 24
    new-instance v1, Lio/appmetrica/analytics/impl/l5;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/l5;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    invoke-static {v0, v9, v1}, Lio/appmetrica/analytics/impl/r5;->a(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/l5;)Lio/appmetrica/analytics/impl/vk;

    move-result-object v10

    iput-object v10, v0, Lio/appmetrica/analytics/impl/m5;->j:Lio/appmetrica/analytics/impl/vk;

    .line 25
    invoke-virtual/range {p2 .. p2}, Lio/appmetrica/analytics/impl/f5;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v12}, Lio/appmetrica/analytics/impl/d0;->a()Lio/appmetrica/analytics/impl/c0;

    move-result-object v7

    iget-object v7, v7, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 27
    const-string v7, "Read app environment for component %s. Value: %s"

    invoke-virtual {v3, v7, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/r5;->c()Lio/appmetrica/analytics/impl/nk;

    move-result-object v13

    iput-object v13, v0, Lio/appmetrica/analytics/impl/m5;->u:Lio/appmetrica/analytics/impl/nk;

    move-object/from16 v7, p5

    move-object v8, v15

    move-object v11, v5

    move-object/from16 v14, v16

    .line 29
    invoke-virtual/range {v7 .. v14}, Lio/appmetrica/analytics/impl/r5;->a(Lio/appmetrica/analytics/impl/Le;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/vk;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/impl/nk;Lio/appmetrica/analytics/impl/mi;)Lio/appmetrica/analytics/impl/q9;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    .line 30
    invoke-static/range {p0 .. p0}, Lio/appmetrica/analytics/impl/r5;->c(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/d9;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->g:Lio/appmetrica/analytics/impl/d9;

    .line 31
    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/r5;->a(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/d9;)Lio/appmetrica/analytics/impl/ki;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->f:Lio/appmetrica/analytics/impl/ki;

    .line 32
    invoke-virtual {v2, v15}, Lio/appmetrica/analytics/impl/r5;->a(Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/G3;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->q:Lio/appmetrica/analytics/impl/G3;

    move-object/from16 v1, p5

    move-object/from16 v2, v16

    move-object v3, v5

    move-object v8, v5

    move-object/from16 v5, p6

    move-object v7, v15

    .line 33
    invoke-virtual/range {v1 .. v7}, Lio/appmetrica/analytics/impl/r5;->a(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/w9;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    .line 34
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/S6;->d()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->s:Lio/appmetrica/analytics/impl/if;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/U7;->h:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/U7;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/G6;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/U7;->c()Lio/appmetrica/analytics/impl/Y7;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ff;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/ff;->d:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/B5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean p0, v1, Lio/appmetrica/analytics/impl/Hl;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/X4;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 16
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    .line 17
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object p1, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/B5;->a(Lio/appmetrica/analytics/impl/Hl;)V

    .line 23
    iget-object p1, p0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast p1, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/x5;->d()V
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

.method public final a(Lio/appmetrica/analytics/impl/a6;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string v3, "Event received on service"

    invoke-static {v3, v0, v1, v2}, Lio/appmetrica/analytics/impl/Df;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/hb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->f:Lio/appmetrica/analytics/impl/ki;

    .line 13
    new-instance v0, Lio/appmetrica/analytics/impl/ji;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ji;-><init>()V

    .line 14
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Q2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/P2;)Z

    :cond_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/Hl;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/ll;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Le;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Le;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/f5;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/a6;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->h:Lio/appmetrica/analytics/impl/d0;

    .line 3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    .line 4
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/d0;->a(Landroid/util/Pair;)V

    .line 5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/m5;->h:Lio/appmetrica/analytics/impl/d0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/d0;->a()Lio/appmetrica/analytics/impl/c0;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->i:Lio/appmetrica/analytics/impl/e0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/c0;->b:J

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Le;->d()Lio/appmetrica/analytics/impl/c0;

    move-result-object v4

    iget-wide v4, v4, Lio/appmetrica/analytics/impl/c0;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 8
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Le;->a(Lio/appmetrica/analytics/impl/c0;)Lio/appmetrica/analytics/impl/Le;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Me;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const-string v1, "Save new app environment for %s. Value: %s"

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    .line 11
    iget-object p1, p1, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    :goto_0
    return-void

    .line 12
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MANUAL:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->h:Lio/appmetrica/analytics/impl/d0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/Lc;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Lc;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/d0;->a:Lio/appmetrica/analytics/impl/Lc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->i:Lio/appmetrica/analytics/impl/e0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m5;->h:Lio/appmetrica/analytics/impl/d0;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/d0;->a()Lio/appmetrica/analytics/impl/c0;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0, v1, p0}, Lio/appmetrica/analytics/impl/e0;->a(Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/Le;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast v0, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/x5;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/G3;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->q:Lio/appmetrica/analytics/impl/G3;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/impl/Le;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/S6;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/Q8;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->l:Lio/appmetrica/analytics/impl/Q8;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/d9;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->g:Lio/appmetrica/analytics/impl/d9;

    return-object p0
.end method

.method public final k()Lio/appmetrica/analytics/impl/q9;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    return-object p0
.end method

.method public final l()Lio/appmetrica/analytics/impl/w9;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    return-object p0
.end method

.method public final m()Lio/appmetrica/analytics/impl/ch;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Le;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-object p0
.end method

.method public final p()Lio/appmetrica/analytics/impl/Oe;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->d:Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final q()Lio/appmetrica/analytics/impl/nk;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->u:Lio/appmetrica/analytics/impl/nk;

    return-object p0
.end method

.method public final r()Lio/appmetrica/analytics/impl/vk;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->j:Lio/appmetrica/analytics/impl/vk;

    return-object p0
.end method

.method public final s()Lio/appmetrica/analytics/impl/Hl;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/B5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t()Lio/appmetrica/analytics/impl/Un;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    return-object p0
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget v0, p0, Lio/appmetrica/analytics/impl/q9;->k:I

    iput v0, p0, Lio/appmetrica/analytics/impl/q9;->m:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/q9;->a:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Le;->a(I)Lio/appmetrica/analytics/impl/Le;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final v()V
    .locals 5

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "last_migration_api_level"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m5;->o:Lio/appmetrica/analytics/impl/h5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/j5;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/j5;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    invoke-static {v1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/i5;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Un;->b(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final w()Z
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/ch;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/m5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-wide v3, p0, Lio/appmetrica/analytics/impl/q9;->l:J

    iget-wide v5, v0, Lio/appmetrica/analytics/impl/ch;->s:J

    const-string v7, "need to check permissions"

    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassSeconds(JJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x()Z
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget v1, v0, Lio/appmetrica/analytics/impl/q9;->m:I

    iget v0, v0, Lio/appmetrica/analytics/impl/q9;->k:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/ch;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/B5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final z()Z
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/ch;->n:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/m5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-wide v3, p0, Lio/appmetrica/analytics/impl/q9;->l:J

    iget-wide v5, v0, Lio/appmetrica/analytics/impl/ch;->t:J

    const-string v7, "should force send permissions"

    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassSeconds(JJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
