.class public final Lio/appmetrica/analytics/impl/vc;
.super Lio/appmetrica/analytics/impl/m5;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ta;
.implements Lio/appmetrica/analytics/impl/Sa;


# instance fields
.field public final v:Lio/appmetrica/analytics/impl/ag;

.field public final w:Lio/appmetrica/analytics/impl/eg;

.field public final x:Lio/appmetrica/analytics/impl/L6;

.field public final y:Lio/appmetrica/analytics/impl/l3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/ag;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/k5;)V
    .locals 20
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
    .param p5    # Lio/appmetrica/analytics/impl/ag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/impl/L6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/appmetrica/analytics/impl/k5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v5, Lio/appmetrica/analytics/impl/e0;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/e0;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v6}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v19, Lio/appmetrica/analytics/impl/xc;

    new-instance v13, Lio/appmetrica/analytics/impl/qc;

    move-object/from16 v4, p6

    invoke-direct {v13, v4}, Lio/appmetrica/analytics/impl/qc;-><init>(Lio/appmetrica/analytics/impl/L6;)V

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Uj;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v14

    .line 4
    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v15

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object v16

    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object v17

    new-instance v18, Lio/appmetrica/analytics/impl/jc;

    invoke-direct/range {v18 .. v18}, Lio/appmetrica/analytics/impl/jc;-><init>()V

    move-object/from16 v7, v19

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v18}, Lio/appmetrica/analytics/impl/xc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Uj;Lio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 7
    invoke-direct/range {v0 .. v9}, Lio/appmetrica/analytics/impl/vc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/xc;Lio/appmetrica/analytics/impl/ag;Lio/appmetrica/analytics/impl/L6;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/xc;Lio/appmetrica/analytics/impl/ag;Lio/appmetrica/analytics/impl/L6;)V
    .locals 9

    move-object v7, p0

    move-object/from16 v8, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object v6, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/m5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/F4;)V

    move-object/from16 v0, p8

    .line 9
    iput-object v0, v7, Lio/appmetrica/analytics/impl/vc;->v:Lio/appmetrica/analytics/impl/ag;

    .line 10
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/m5;->j()Lio/appmetrica/analytics/impl/d9;

    move-result-object v0

    .line 11
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->e:Lio/appmetrica/analytics/impl/hb;

    new-instance v2, Lio/appmetrica/analytics/impl/wg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/d9;->b()Lio/appmetrica/analytics/impl/ii;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/wg;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/d9;->a(Lio/appmetrica/analytics/impl/hb;Lio/appmetrica/analytics/impl/va;)V

    .line 12
    invoke-virtual {v8, p0}, Lio/appmetrica/analytics/impl/xc;->b(Lio/appmetrica/analytics/impl/vc;)Lio/appmetrica/analytics/impl/eg;

    move-result-object v0

    iput-object v0, v7, Lio/appmetrica/analytics/impl/vc;->w:Lio/appmetrica/analytics/impl/eg;

    move-object/from16 v0, p9

    .line 13
    iput-object v0, v7, Lio/appmetrica/analytics/impl/vc;->x:Lio/appmetrica/analytics/impl/L6;

    .line 14
    invoke-virtual {v8, p0}, Lio/appmetrica/analytics/impl/xc;->a(Lio/appmetrica/analytics/impl/vc;)Lio/appmetrica/analytics/impl/l3;

    move-result-object v0

    iput-object v0, v7, Lio/appmetrica/analytics/impl/vc;->y:Lio/appmetrica/analytics/impl/l3;

    move-object v1, p4

    .line 15
    iget-object v1, v1, Lio/appmetrica/analytics/impl/F4;->m:Ljava/lang/Boolean;

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Lio/appmetrica/analytics/impl/l3;->a(Lio/appmetrica/analytics/impl/Hl;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vc;->v:Lio/appmetrica/analytics/impl/ag;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vc;->w:Lio/appmetrica/analytics/impl/eg;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/ag;->a(Lio/appmetrica/analytics/impl/eg;)V

    return-void
.end method

.method public final C()Z
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "referrer_handled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 4

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "referrer_handled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Vn;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vc;->x:Lio/appmetrica/analytics/impl/L6;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/L6;->a(Ljava/lang/Boolean;)V
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

.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/Hl;)V

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/vc;->y:Lio/appmetrica/analytics/impl/l3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/l3;->a(Lio/appmetrica/analytics/impl/Hl;)V

    return-void
.end method

.method public final c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method
