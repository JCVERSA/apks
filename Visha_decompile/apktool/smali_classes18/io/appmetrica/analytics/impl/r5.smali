.class public Lio/appmetrica/analytics/impl/r5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p5;

.field public final b:Lio/appmetrica/analytics/impl/q5;

.field protected final c:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lio/appmetrica/analytics/impl/f5;

.field public final e:Lio/appmetrica/analytics/impl/F4;

.field public final f:Lio/appmetrica/analytics/impl/k5;

.field protected final g:Lio/appmetrica/analytics/impl/Hl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Lio/appmetrica/analytics/impl/Zg;

.field public final i:Lio/appmetrica/analytics/impl/L8;

.field public final j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final k:Lio/appmetrica/analytics/impl/Kb;

.field public final l:Lio/appmetrica/analytics/impl/y9;

.field public final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V
    .locals 14

    .line 1
    new-instance v8, Lio/appmetrica/analytics/impl/L8;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/L8;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/p5;

    move-object/from16 v3, p3

    iget-object v0, v3, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/p5;-><init>(Ljava/lang/String;)V

    new-instance v11, Lio/appmetrica/analytics/impl/q5;

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct {v11, p1, v2}, Lio/appmetrica/analytics/impl/q5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V

    move-object v0, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lio/appmetrica/analytics/impl/r5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/L8;ILio/appmetrica/analytics/impl/p5;Lio/appmetrica/analytics/impl/q5;Lio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/L8;ILio/appmetrica/analytics/impl/p5;Lio/appmetrica/analytics/impl/q5;Lio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/r5;->d:Lio/appmetrica/analytics/impl/f5;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/r5;->e:Lio/appmetrica/analytics/impl/F4;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/r5;->f:Lio/appmetrica/analytics/impl/k5;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/r5;->g:Lio/appmetrica/analytics/impl/Hl;

    .line 8
    iput-object p6, p0, Lio/appmetrica/analytics/impl/r5;->h:Lio/appmetrica/analytics/impl/Zg;

    .line 9
    iput-object p7, p0, Lio/appmetrica/analytics/impl/r5;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 10
    iput-object p8, p0, Lio/appmetrica/analytics/impl/r5;->i:Lio/appmetrica/analytics/impl/L8;

    .line 11
    iput p9, p0, Lio/appmetrica/analytics/impl/r5;->m:I

    .line 12
    iput-object p10, p0, Lio/appmetrica/analytics/impl/r5;->a:Lio/appmetrica/analytics/impl/p5;

    .line 13
    iput-object p11, p0, Lio/appmetrica/analytics/impl/r5;->b:Lio/appmetrica/analytics/impl/q5;

    .line 14
    iput-object p12, p0, Lio/appmetrica/analytics/impl/r5;->k:Lio/appmetrica/analytics/impl/Kb;

    .line 15
    iput-object p13, p0, Lio/appmetrica/analytics/impl/r5;->l:Lio/appmetrica/analytics/impl/y9;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/d9;)Lio/appmetrica/analytics/impl/ki;
    .locals 1

    .line 22
    new-instance v0, Lio/appmetrica/analytics/impl/ki;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/ki;-><init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/m5;)V

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/l5;)Lio/appmetrica/analytics/impl/vk;
    .locals 9

    .line 6
    new-instance v6, Lio/appmetrica/analytics/impl/vk;

    new-instance v7, Lio/appmetrica/analytics/impl/uk;

    invoke-direct {v7, p1}, Lio/appmetrica/analytics/impl/uk;-><init>(Lio/appmetrica/analytics/impl/Un;)V

    .line 7
    new-instance p1, Lio/appmetrica/analytics/impl/oa;

    .line 8
    new-instance v3, Lio/appmetrica/analytics/impl/yk;

    .line 9
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/m5;->g()Lio/appmetrica/analytics/impl/Le;

    move-result-object v0

    const-string v1, "foreground"

    invoke-direct {v3, v0, v1}, Lio/appmetrica/analytics/impl/yk;-><init>(Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/q1;->a()Lio/appmetrica/analytics/impl/Fj;

    move-result-object v4

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    .line 11
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/oa;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/Fj;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    .line 12
    new-instance v8, Lio/appmetrica/analytics/impl/J2;

    .line 13
    new-instance v3, Lio/appmetrica/analytics/impl/yk;

    .line 14
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/m5;->g()Lio/appmetrica/analytics/impl/Le;

    move-result-object v0

    const-string v1, "background"

    invoke-direct {v3, v0, v1}, Lio/appmetrica/analytics/impl/yk;-><init>(Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lio/appmetrica/analytics/impl/q1;->a()Lio/appmetrica/analytics/impl/Fj;

    move-result-object v4

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, v8

    move-object v1, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/J2;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/Fj;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    move-object v0, v6

    move-object v3, p2

    move-object v4, p1

    move-object v5, v8

    .line 17
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/vk;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/l5;Lio/appmetrica/analytics/impl/oa;Lio/appmetrica/analytics/impl/J2;)V

    return-object v6
.end method

.method public static b()Lio/appmetrica/analytics/impl/h5;
    .locals 1

    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/h5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/h5;-><init>()V

    return-object v0
.end method

.method public static c(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/d9;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/d9;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/d9;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/Fg;
    .locals 4

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/Fg;

    new-instance v1, Lio/appmetrica/analytics/impl/ah;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/r5;->h:Lio/appmetrica/analytics/impl/Zg;

    .line 4
    new-instance v3, Lio/appmetrica/analytics/impl/W3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/W3;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lio/appmetrica/analytics/impl/ah;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/impl/W3;)V

    .line 5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/r5;->g:Lio/appmetrica/analytics/impl/Hl;

    new-instance v2, Lio/appmetrica/analytics/impl/Xg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->e:Lio/appmetrica/analytics/impl/F4;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/Xg;-><init>(Lio/appmetrica/analytics/impl/F4;)V

    invoke-direct {v0, v1, p1, v2}, Lio/appmetrica/analytics/impl/Fg;-><init>(Lio/appmetrica/analytics/impl/ah;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Xg;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/G3;
    .locals 3

    .line 25
    new-instance v0, Lio/appmetrica/analytics/impl/G3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {v0, p0, p1, v1, v2}, Lio/appmetrica/analytics/impl/G3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-object v0
.end method

.method public final a()Lio/appmetrica/analytics/impl/Q8;
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Q8;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/r5;->d:Lio/appmetrica/analytics/impl/f5;

    iget p0, p0, Lio/appmetrica/analytics/impl/r5;->m:I

    .line 2
    new-instance v3, Lio/appmetrica/analytics/impl/V8;

    invoke-direct {v3, v1, v2}, Lio/appmetrica/analytics/impl/V8;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V

    invoke-direct {v0, v3, p0}, Lio/appmetrica/analytics/impl/Q8;-><init>(Lio/appmetrica/analytics/impl/V8;I)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Le;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/vk;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/impl/nk;Lio/appmetrica/analytics/impl/mi;)Lio/appmetrica/analytics/impl/q9;
    .locals 13

    move-object v0, p0

    move-object v2, p2

    .line 18
    new-instance v12, Lio/appmetrica/analytics/impl/q9;

    iget-object v6, v0, Lio/appmetrica/analytics/impl/r5;->i:Lio/appmetrica/analytics/impl/L8;

    iget v8, v0, Lio/appmetrica/analytics/impl/r5;->m:I

    new-instance v9, Lio/appmetrica/analytics/impl/o5;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Lio/appmetrica/analytics/impl/o5;-><init>(Lio/appmetrica/analytics/impl/mi;)V

    .line 19
    new-instance v10, Lio/appmetrica/analytics/impl/X8;

    .line 20
    new-instance v0, Lio/appmetrica/analytics/impl/Y8;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/Y8;-><init>(Lio/appmetrica/analytics/impl/Un;)V

    invoke-direct {v10, p2, v0}, Lio/appmetrica/analytics/impl/X8;-><init>(Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/Y8;)V

    .line 21
    new-instance v11, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v11}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v11}, Lio/appmetrica/analytics/impl/q9;-><init>(Lio/appmetrica/analytics/impl/Le;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/vk;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/impl/L8;Lio/appmetrica/analytics/impl/nk;ILio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/X8;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v12
.end method

.method public a(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/w9;
    .locals 7

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r5;->l:Lio/appmetrica/analytics/impl/y9;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/appmetrica/analytics/impl/y9;->a(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/x9;

    move-result-object p0

    .line 24
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/x9;->a()Lio/appmetrica/analytics/impl/w9;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/S6;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/S6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->d:Lio/appmetrica/analytics/impl/f5;

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/g7;->c(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/f7;

    move-result-object p0

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/O6;

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/O6;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    new-instance v2, Lio/appmetrica/analytics/impl/n7;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/n7;-><init>()V

    .line 5
    invoke-direct {v0, p1, p0, v1, v2}, Lio/appmetrica/analytics/impl/S6;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/f7;Lio/appmetrica/analytics/impl/O6;Lio/appmetrica/analytics/impl/n7;)V

    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/nk;
    .locals 2

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/nk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->d:Lio/appmetrica/analytics/impl/f5;

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/nk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V

    return-object v0
.end method

.method public final d(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/impl/mi;
    .locals 3

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/mi;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/r5;->f:Lio/appmetrica/analytics/impl/k5;

    .line 3
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/k5;->a()Lio/appmetrica/analytics/impl/ml;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/r5;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-direct {v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/mi;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/ml;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->k:Lio/appmetrica/analytics/impl/Kb;

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kb;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final d()Lio/appmetrica/analytics/impl/p5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->a:Lio/appmetrica/analytics/impl/p5;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/q5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->b:Lio/appmetrica/analytics/impl/q5;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Un;
    .locals 9

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->B()Lio/appmetrica/analytics/impl/Xn;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->d:Lio/appmetrica/analytics/impl/f5;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Xn;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lio/appmetrica/analytics/impl/Un;

    new-instance v4, Lio/appmetrica/analytics/impl/Le;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/Xn;->a:Landroid/content/Context;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object v5

    invoke-virtual {v5, p0}, Lio/appmetrica/analytics/impl/g7;->b(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/Oa;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/Le;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f5;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "appmetrica_vital_main.dat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appmetrica_vital_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v6, Lio/appmetrica/analytics/impl/t5;

    new-instance v7, Lio/appmetrica/analytics/impl/ia;

    iget-object v8, v0, Lio/appmetrica/analytics/impl/Xn;->a:Landroid/content/Context;

    invoke-direct {v7, v8, p0}, Lio/appmetrica/analytics/impl/ia;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v7}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    new-instance v7, Lio/appmetrica/analytics/impl/ia;

    iget-object v8, v0, Lio/appmetrica/analytics/impl/Xn;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v5}, Lio/appmetrica/analytics/impl/ia;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v5, v7}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    filled-new-array {p0, v5}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/t5;-><init>(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v6, Lio/appmetrica/analytics/impl/ia;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/Xn;->a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appmetrica_vital_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, v5, p0}, Lio/appmetrica/analytics/impl/ia;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v3, v4, v6, v1}, Lio/appmetrica/analytics/impl/Un;-><init>(Lio/appmetrica/analytics/impl/Le;Lio/appmetrica/analytics/impl/Yn;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Lio/appmetrica/analytics/impl/Un;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v3

    :goto_1
    monitor-exit v0

    throw p0
.end method
