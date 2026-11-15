.class public final Lio/appmetrica/analytics/impl/ua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile E:Lio/appmetrica/analytics/impl/ua;


# instance fields
.field public final A:Lio/appmetrica/analytics/impl/Id;

.field public final B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

.field public volatile C:Lio/appmetrica/analytics/impl/T9;

.field public final D:Lio/appmetrica/analytics/impl/Wj;

.field public final a:Landroid/content/Context;

.field public volatile b:Lio/appmetrica/analytics/impl/ag;

.field public volatile c:Lio/appmetrica/analytics/impl/L6;

.field public final d:Lio/appmetrica/analytics/impl/Uj;

.field public volatile e:Lio/appmetrica/analytics/impl/c3;

.field public volatile f:Lio/appmetrica/analytics/impl/cj;

.field public volatile g:Lio/appmetrica/analytics/impl/Q;

.field public volatile h:Lio/appmetrica/analytics/impl/e2;

.field public volatile i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

.field public volatile j:Lio/appmetrica/analytics/impl/if;

.field public volatile k:Lio/appmetrica/analytics/impl/T3;

.field public volatile l:Lio/appmetrica/analytics/impl/Oe;

.field public volatile m:Lio/appmetrica/analytics/impl/Xn;

.field public volatile n:Lio/appmetrica/analytics/impl/Ui;

.field public volatile o:Lio/appmetrica/analytics/impl/Kb;

.field public p:Lio/appmetrica/analytics/impl/cl;

.field public final q:Lio/appmetrica/analytics/impl/ta;

.field public volatile r:Lio/appmetrica/analytics/impl/bk;

.field public final s:Lio/appmetrica/analytics/impl/Xc;

.field public final t:Lio/appmetrica/analytics/impl/Zc;

.field public final u:Lio/appmetrica/analytics/impl/Jl;

.field public final v:Lio/appmetrica/analytics/impl/Pj;

.field public volatile w:Lio/appmetrica/analytics/impl/Pb;

.field public volatile x:Lio/appmetrica/analytics/impl/Lm;

.field public volatile y:Lio/appmetrica/analytics/impl/Vk;

.field public volatile z:Lio/appmetrica/analytics/impl/ud;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/ta;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ta;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->q:Lio/appmetrica/analytics/impl/ta;

    new-instance v0, Lio/appmetrica/analytics/impl/Xc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Xc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->s:Lio/appmetrica/analytics/impl/Xc;

    new-instance v0, Lio/appmetrica/analytics/impl/Zc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->t:Lio/appmetrica/analytics/impl/Zc;

    new-instance v0, Lio/appmetrica/analytics/impl/Jl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Jl;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    new-instance v0, Lio/appmetrica/analytics/impl/Pj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Pj;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->v:Lio/appmetrica/analytics/impl/Pj;

    new-instance v0, Lio/appmetrica/analytics/impl/Id;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Id;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->A:Lio/appmetrica/analytics/impl/Id;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    new-instance v0, Lio/appmetrica/analytics/impl/Wj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Wj;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->D:Lio/appmetrica/analytics/impl/Wj;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    new-instance p1, Lio/appmetrica/analytics/impl/Uj;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Uj;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/appmetrica/analytics/impl/ua;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/ua;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static j()Lio/appmetrica/analytics/impl/ua;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    return-object v0
.end method


# virtual methods
.method public final A()Lio/appmetrica/analytics/impl/Lm;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->x:Lio/appmetrica/analytics/impl/Lm;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->x:Lio/appmetrica/analytics/impl/Lm;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Lm;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Lm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->x:Lio/appmetrica/analytics/impl/Lm;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final declared-synchronized B()Lio/appmetrica/analytics/impl/Xn;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->m:Lio/appmetrica/analytics/impl/Xn;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Xn;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Xn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->m:Lio/appmetrica/analytics/impl/Xn;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->m:Lio/appmetrica/analytics/impl/Xn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final C()V
    .locals 14

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->j:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->j:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_0

    const-class v0, Lio/appmetrica/analytics/impl/Se;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/tm;->c(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    invoke-interface {v5}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/appmetrica/analytics/impl/Se;

    new-instance v0, Lio/appmetrica/analytics/impl/if;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    new-instance v6, Lio/appmetrica/analytics/impl/Ze;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/Ze;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/Qe;

    invoke-direct {v7, v12}, Lio/appmetrica/analytics/impl/Qe;-><init>(Lio/appmetrica/analytics/impl/Se;)V

    new-instance v8, Lio/appmetrica/analytics/impl/hf;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/hf;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/Ye;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v9, v1}, Lio/appmetrica/analytics/impl/Ye;-><init>(Landroid/content/Context;)V

    new-instance v10, Lio/appmetrica/analytics/impl/df;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v1

    invoke-direct {v10, v1}, Lio/appmetrica/analytics/impl/df;-><init>(Lio/appmetrica/analytics/impl/Oe;)V

    new-instance v11, Lio/appmetrica/analytics/impl/Te;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/Te;-><init>()V

    const-string v13, "[PreloadInfoStorage]"

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lio/appmetrica/analytics/impl/if;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/W7;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/lm;Lio/appmetrica/analytics/impl/Ki;Lio/appmetrica/analytics/impl/Ii;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/Se;Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->j:Lio/appmetrica/analytics/impl/if;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method public final a()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->getActivationBarrier()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Q;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->g:Lio/appmetrica/analytics/impl/Q;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->g:Lio/appmetrica/analytics/impl/Q;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Q;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Uj;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v2

    iget-object v3, p0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Jl;->b()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/Q;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/Hl;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Ml;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->g:Lio/appmetrica/analytics/impl/Q;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/e2;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->h:Lio/appmetrica/analytics/impl/e2;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->h:Lio/appmetrica/analytics/impl/e2;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/e2;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/f2;->a()Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/e2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->h:Lio/appmetrica/analytics/impl/e2;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/k2;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kb;->b:Lio/appmetrica/analytics/impl/k2;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/T3;
    .locals 14

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->k:Lio/appmetrica/analytics/impl/T3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->k:Lio/appmetrica/analytics/impl/T3;

    if-nez v0, :cond_0

    const-class v0, Lio/appmetrica/analytics/impl/M3;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/tm;->c(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    new-instance v0, Lio/appmetrica/analytics/impl/T3;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    new-instance v6, Lio/appmetrica/analytics/impl/U3;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/U3;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/H3;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/H3;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/X3;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/X3;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/Ji;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v9, v1}, Lio/appmetrica/analytics/impl/Ji;-><init>(Landroid/content/Context;)V

    new-instance v10, Lio/appmetrica/analytics/impl/V3;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v1

    invoke-direct {v10, v1}, Lio/appmetrica/analytics/impl/V3;-><init>(Lio/appmetrica/analytics/impl/Oe;)V

    new-instance v11, Lio/appmetrica/analytics/impl/I3;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/I3;-><init>()V

    invoke-interface {v5}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/appmetrica/analytics/impl/M3;

    const-string v13, "[ClidsInfoStorage]"

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lio/appmetrica/analytics/impl/T3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/W7;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/lm;Lio/appmetrica/analytics/impl/Ki;Lio/appmetrica/analytics/impl/Ii;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/M3;Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->k:Lio/appmetrica/analytics/impl/T3;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->k:Lio/appmetrica/analytics/impl/T3;

    return-object p0
.end method

.method public final f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/impl/L6;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->c:Lio/appmetrica/analytics/impl/L6;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->c:Lio/appmetrica/analytics/impl/L6;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/L6;

    new-instance v1, Lio/appmetrica/analytics/impl/K6;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/K6;-><init>(Lio/appmetrica/analytics/impl/Oe;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/L6;-><init>(Lio/appmetrica/analytics/impl/J6;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->c:Lio/appmetrica/analytics/impl/L6;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->c:Lio/appmetrica/analytics/impl/L6;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/T9;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->C:Lio/appmetrica/analytics/impl/T9;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->C:Lio/appmetrica/analytics/impl/T9;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/T9;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/T9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->C:Lio/appmetrica/analytics/impl/T9;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final i()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->y:Lio/appmetrica/analytics/impl/Vk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->y:Lio/appmetrica/analytics/impl/Vk;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/Vk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/bk;->c:Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;->getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Vk;-><init>(Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->y:Lio/appmetrica/analytics/impl/Vk;

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()Lio/appmetrica/analytics/impl/Kb;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->o:Lio/appmetrica/analytics/impl/Kb;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->o:Lio/appmetrica/analytics/impl/Kb;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Kb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Uj;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/Z2;

    invoke-direct {v3, v1, v2}, Lio/appmetrica/analytics/impl/Z2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    new-instance v1, Lio/appmetrica/analytics/impl/k2;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/k2;-><init>()V

    invoke-direct {v0, v3, v1}, Lio/appmetrica/analytics/impl/Kb;-><init>(Lio/appmetrica/analytics/impl/Z2;Lio/appmetrica/analytics/impl/k2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->o:Lio/appmetrica/analytics/impl/Kb;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final l()Lio/appmetrica/analytics/impl/Pb;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->w:Lio/appmetrica/analytics/impl/Pb;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->w:Lio/appmetrica/analytics/impl/Pb;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    const-string v1, "io.appmetrica.analytics.location.internal.LocationClientImpl"

    const-class v2, Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    if-nez v1, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Rb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Rb;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v2, Lio/appmetrica/analytics/impl/Qb;

    new-instance v3, Lio/appmetrica/analytics/impl/Xb;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Xb;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Lio/appmetrica/analytics/impl/Qb;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/locationapi/internal/LocationClient;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->w:Lio/appmetrica/analytics/impl/Pb;

    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final m()Lio/appmetrica/analytics/impl/Pb;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->l()Lio/appmetrica/analytics/impl/Pb;

    move-result-object p0

    return-object p0
.end method

.method public final n()Lio/appmetrica/analytics/impl/Zc;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->t:Lio/appmetrica/analytics/impl/Zc;

    return-object p0
.end method

.method public final o()Lio/appmetrica/analytics/impl/bk;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->r:Lio/appmetrica/analytics/impl/bk;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->r:Lio/appmetrica/analytics/impl/bk;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/bk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/bk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->r:Lio/appmetrica/analytics/impl/bk;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final p()Lio/appmetrica/analytics/impl/ud;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->z:Lio/appmetrica/analytics/impl/ud;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->z:Lio/appmetrica/analytics/impl/ud;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/ud;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    new-instance v2, Lio/appmetrica/analytics/impl/Kn;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Kn;-><init>()V

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/ud;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ra;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->z:Lio/appmetrica/analytics/impl/ud;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final q()Lio/appmetrica/analytics/impl/Id;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->A:Lio/appmetrica/analytics/impl/Id;

    return-object p0
.end method

.method public final r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->c()Lio/appmetrica/analytics/impl/e2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/SimpleAdvertisingIdGetter;Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdProvider;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final s()Lio/appmetrica/analytics/impl/if;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->C()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->j:Lio/appmetrica/analytics/impl/if;

    return-object p0
.end method

.method public final t()Lio/appmetrica/analytics/impl/ag;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->b:Lio/appmetrica/analytics/impl/ag;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->b:Lio/appmetrica/analytics/impl/ag;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/ag;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->B()Lio/appmetrica/analytics/impl/Xn;

    move-result-object v2

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Xn;->c:Lio/appmetrica/analytics/impl/Tn;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/ag;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Tn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->b:Lio/appmetrica/analytics/impl/ag;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->b:Lio/appmetrica/analytics/impl/ag;

    return-object p0
.end method

.method public final u()Lio/appmetrica/analytics/impl/Ui;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->n:Lio/appmetrica/analytics/impl/Ui;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->n:Lio/appmetrica/analytics/impl/Ui;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Ui;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ui;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->n:Lio/appmetrica/analytics/impl/Ui;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final declared-synchronized v()Lio/appmetrica/analytics/impl/cj;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->f:Lio/appmetrica/analytics/impl/cj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final w()Lio/appmetrica/analytics/impl/Uj;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    return-object p0
.end method

.method public final x()Lio/appmetrica/analytics/impl/Oe;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->l:Lio/appmetrica/analytics/impl/Oe;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->l:Lio/appmetrica/analytics/impl/Oe;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Oe;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/g7;->c()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Oe;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->l:Lio/appmetrica/analytics/impl/Oe;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->l:Lio/appmetrica/analytics/impl/Oe;

    return-object p0
.end method

.method public final declared-synchronized y()Lio/appmetrica/analytics/impl/V2;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->p:Lio/appmetrica/analytics/impl/cl;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/cl;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/cl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->p:Lio/appmetrica/analytics/impl/cl;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Ml;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->p:Lio/appmetrica/analytics/impl/cl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final z()Lio/appmetrica/analytics/impl/Jl;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    return-object p0
.end method
