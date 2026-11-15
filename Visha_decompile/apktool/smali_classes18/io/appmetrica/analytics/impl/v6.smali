.class public final Lio/appmetrica/analytics/impl/v6;
.super Lio/appmetrica/analytics/impl/T2;
.source "SourceFile"


# instance fields
.field public final o:Lio/appmetrica/analytics/impl/w6;

.field public final p:Lio/appmetrica/analytics/impl/pn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/impl/pn;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    .line 4
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/T2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V

    move-object/from16 v0, p5

    .line 5
    iput-object v0, v11, Lio/appmetrica/analytics/impl/v6;->o:Lio/appmetrica/analytics/impl/w6;

    move-object/from16 v0, p6

    .line 6
    iput-object v0, v11, Lio/appmetrica/analytics/impl/v6;->p:Lio/appmetrica/analytics/impl/pn;

    .line 7
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/T9;)V
    .locals 13

    move-object/from16 v0, p3

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/xh;

    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    sget-object v2, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->CRASH:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct {v1, v0, v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object v0, v0, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    move-object v2, p2

    invoke-direct {v3, p2, v1, v0}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    new-instance v5, Lio/appmetrica/analytics/impl/w6;

    move-object v1, p1

    invoke-direct {v5, p1}, Lio/appmetrica/analytics/impl/w6;-><init>(Landroid/content/Context;)V

    new-instance v6, Lio/appmetrica/analytics/impl/pn;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/pn;-><init>()V

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->l()Lio/appmetrica/analytics/impl/lc;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/impl/on;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/on;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/tg;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/tg;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/C6;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/C6;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/X;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/X;-><init>()V

    new-instance v12, Lio/appmetrica/analytics/impl/ye;

    move-object/from16 v4, p5

    invoke-direct {v12, v4}, Lio/appmetrica/analytics/impl/ye;-><init>(Lio/appmetrica/analytics/impl/T9;)V

    move-object v0, p0

    move-object/from16 v2, p4

    .line 3
    invoke-direct/range {v0 .. v12}, Lio/appmetrica/analytics/impl/v6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/impl/pn;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/nn;)V
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/nn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/v6;->o:Lio/appmetrica/analytics/impl/w6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/v6;->p:Lio/appmetrica/analytics/impl/pn;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v1, p1, v2}, Lio/appmetrica/analytics/impl/pn;->a(Lio/appmetrica/analytics/impl/nn;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/nh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/w6;->a(Lio/appmetrica/analytics/impl/nh;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/T2;->b(Ljava/util/Map;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "[CrashReporter]"

    return-object p0
.end method
