.class public final Lio/appmetrica/analytics/impl/Q4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Kb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Q4;-><init>(Lio/appmetrica/analytics/impl/Kb;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Kb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q4;->a:Lio/appmetrica/analytics/impl/Kb;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/O4;)Lio/appmetrica/analytics/impl/V4;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/V4;

    new-instance v1, Lio/appmetrica/analytics/impl/T4;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/T4;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/V4;-><init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/O4;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/Jm;
    .locals 2

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Jm;

    new-instance v1, Lio/appmetrica/analytics/impl/xg;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/xg;-><init>(Lio/appmetrica/analytics/impl/dm;)V

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/Jm;-><init>(Lio/appmetrica/analytics/impl/La;Lio/appmetrica/analytics/impl/ml;)V

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q4;->a:Lio/appmetrica/analytics/impl/Kb;

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kb;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0

    throw p1
.end method
