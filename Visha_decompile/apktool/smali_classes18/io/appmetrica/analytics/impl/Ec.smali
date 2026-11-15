.class public final Lio/appmetrica/analytics/impl/Ec;
.super Lio/appmetrica/analytics/impl/T2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p10}, Lio/appmetrica/analytics/impl/T2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/T9;)V
    .locals 11

    move-object v0, p3

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/xh;

    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v1, p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/ReporterConfig;)V

    iget-object v0, v0, Lio/appmetrica/analytics/ReporterConfig;->userProfileID:Ljava/lang/String;

    move-object v2, p2

    invoke-direct {v3, p2, v1, v0}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->l()Lio/appmetrica/analytics/impl/lc;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/on;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/on;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/tg;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/tg;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/C6;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/C6;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/X;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/X;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/ye;

    move-object/from16 v4, p5

    invoke-direct {v10, v4}, Lio/appmetrica/analytics/impl/ye;-><init>(Lio/appmetrica/analytics/impl/T9;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 3
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/Ec;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V

    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "[ManualReporter]"

    return-object p0
.end method
