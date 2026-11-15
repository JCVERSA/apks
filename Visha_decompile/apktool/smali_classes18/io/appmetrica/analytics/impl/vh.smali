.class public final Lio/appmetrica/analytics/impl/vh;
.super Lio/appmetrica/analytics/impl/m5;
.source "SourceFile"


# instance fields
.field public final v:Ljava/lang/String;

.field public final w:Lio/appmetrica/analytics/impl/L6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/y9;)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/L6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/impl/k5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/appmetrica/analytics/impl/y9;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/e0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/e0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v16, Lio/appmetrica/analytics/impl/r5;

    new-instance v11, Lio/appmetrica/analytics/impl/qh;

    move-object/from16 v2, p4

    invoke-direct {v11, v2}, Lio/appmetrica/analytics/impl/qh;-><init>(Lio/appmetrica/analytics/impl/L6;)V

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

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move-object/from16 v15, p7

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/r5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    .line 6
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/vh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/F4;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 7
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/m5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/e0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/F4;)V

    .line 8
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/f5;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vh;->v:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lio/appmetrica/analytics/impl/vh;->w:Lio/appmetrica/analytics/impl/L6;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/F4;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->w:Lio/appmetrica/analytics/impl/L6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->v:Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/L6;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
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
