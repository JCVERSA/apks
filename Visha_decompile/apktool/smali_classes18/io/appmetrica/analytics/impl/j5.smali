.class public final Lio/appmetrica/analytics/impl/j5;
.super Lio/appmetrica/analytics/impl/i5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/i5;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-void
.end method


# virtual methods
.method public final b(I)Z
    .locals 0

    const/16 p0, 0x71

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 7

    const-string v0, "SESSION_LAST_EVENT_OFFSET"

    const-string v1, "SESSION_SLEEP_START"

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    :try_start_0
    new-instance v2, Lio/appmetrica/analytics/impl/yk;

    const-string v3, "background"

    invoke-direct {v2, p0, v3}, Lio/appmetrica/analytics/impl/yk;-><init>(Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;)V

    iget-object v3, v2, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {v3, v1}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v3, v2, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {v3, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :try_start_1
    new-instance v2, Lio/appmetrica/analytics/impl/yk;

    const-string v3, "foreground"

    invoke-direct {v2, p0, v3}, Lio/appmetrica/analytics/impl/yk;-><init>(Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;)V

    iget-object p0, v2, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, v2, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method
