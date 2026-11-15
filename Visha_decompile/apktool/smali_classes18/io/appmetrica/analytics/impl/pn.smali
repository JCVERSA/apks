.class public final Lio/appmetrica/analytics/impl/pn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/rb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/rb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/rb;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/pn;-><init>(Lio/appmetrica/analytics/impl/rb;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/rb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/pn;->a:Lio/appmetrica/analytics/impl/rb;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/nn;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/nh;
    .locals 8

    iget-object v0, p1, Lio/appmetrica/analytics/impl/nn;->a:Lio/appmetrica/analytics/impl/dn;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/dn;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pn;->a:Lio/appmetrica/analytics/impl/rb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/rb;->a(Lio/appmetrica/analytics/impl/nn;)[B

    move-result-object p0

    iget-object p1, p2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/e4;

    const/16 v1, 0x1703

    invoke-direct {v3, p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/xh;->d()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    iget-object v6, v3, Lio/appmetrica/analytics/impl/e4;->q:Ljava/util/HashMap;

    new-instance p0, Lio/appmetrica/analytics/impl/nh;

    new-instance v7, Lio/appmetrica/analytics/impl/xh;

    new-instance p1, Lio/appmetrica/analytics/impl/pf;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-direct {v7, p1, v0, v1}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
