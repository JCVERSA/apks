.class public final Lio/appmetrica/analytics/impl/Ug;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 10

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    iget v1, v0, Lio/appmetrica/analytics/impl/vk;->g:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lio/appmetrica/analytics/impl/vk;->d:Lio/appmetrica/analytics/impl/g;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/hk;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v1, v2, v3}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lio/appmetrica/analytics/impl/vk;->e:Lio/appmetrica/analytics/impl/g;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/hk;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v1, v2, v3}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    :goto_0
    if-eqz v1, :cond_5

    new-instance v0, Lio/appmetrica/analytics/impl/xk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/xk;-><init>()V

    iget-wide v2, v1, Lio/appmetrica/analytics/impl/hk;->d:J

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/xk;->a:J

    iget-object v2, v1, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iget-object v4, v1, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "SESSION_COUNTER_ID"

    invoke-virtual {v4, v6, v5}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/yk;->b()V

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/xk;->b:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/hk;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/xk;->c:J

    iget-object v1, v1, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/zk;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/xk;->d:Lio/appmetrica/analytics/impl/zk;

    goto :goto_1

    :cond_5
    iget-wide v6, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    iget-object v1, v0, Lio/appmetrica/analytics/impl/vk;->b:Lio/appmetrica/analytics/impl/uk;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/uk;->a()J

    move-result-wide v8

    iget-object v0, v0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    sget-object v0, Lio/appmetrica/analytics/impl/zk;->c:Lio/appmetrica/analytics/impl/zk;

    move-wide v3, v8

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/impl/S6;->a(JLio/appmetrica/analytics/impl/zk;J)V

    new-instance v1, Lio/appmetrica/analytics/impl/xk;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/xk;-><init>()V

    iput-wide v8, v1, Lio/appmetrica/analytics/impl/xk;->a:J

    iput-object v0, v1, Lio/appmetrica/analytics/impl/xk;->d:Lio/appmetrica/analytics/impl/zk;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lio/appmetrica/analytics/impl/xk;->b:J

    iput-wide v2, v1, Lio/appmetrica/analytics/impl/xk;->c:J

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    const/4 p0, 0x1

    return p0
.end method
