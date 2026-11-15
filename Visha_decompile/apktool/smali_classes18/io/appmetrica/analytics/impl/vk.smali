.class public final Lio/appmetrica/analytics/impl/vk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/m5;

.field public final b:Lio/appmetrica/analytics/impl/uk;

.field public final c:Lio/appmetrica/analytics/impl/l5;

.field public final d:Lio/appmetrica/analytics/impl/g;

.field public final e:Lio/appmetrica/analytics/impl/g;

.field public f:Lio/appmetrica/analytics/impl/hk;

.field public g:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/l5;Lio/appmetrica/analytics/impl/oa;Lio/appmetrica/analytics/impl/J2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/vk;->c:Lio/appmetrica/analytics/impl/l5;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/vk;->d:Lio/appmetrica/analytics/impl/g;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/vk;->e:Lio/appmetrica/analytics/impl/g;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/vk;->b:Lio/appmetrica/analytics/impl/uk;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;
    .locals 6

    .line 64
    new-instance v0, Lio/appmetrica/analytics/impl/xk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/xk;-><init>()V

    .line 65
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/hk;->d:J

    .line 66
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/xk;->a:J

    .line 67
    iget-object v1, p0, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 68
    iget-object v3, p0, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 70
    const-string v5, "SESSION_COUNTER_ID"

    invoke-virtual {v3, v5, v4}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/yk;->b()V

    .line 72
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/xk;->b:J

    .line 73
    iget-object v1, p0, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    .line 74
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/hk;->e:J

    sub-long/2addr p1, v2

    .line 75
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/hk;->j:J

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 77
    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {v1, p2, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/hk;->j:J

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 79
    iput-wide p1, v0, Lio/appmetrica/analytics/impl/xk;->c:J

    .line 80
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 81
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/zk;

    .line 82
    iput-object p0, v0, Lio/appmetrica/analytics/impl/xk;->d:Lio/appmetrica/analytics/impl/zk;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    if-nez v0, :cond_0

    const-wide v0, 0x2540be400L

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, v0, Lio/appmetrica/analytics/impl/hk;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;
    .locals 6

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start foreground session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/vk;->d:Lio/appmetrica/analytics/impl/g;

    new-instance v3, Lio/appmetrica/analytics/impl/ik;

    .line 8
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    .line 9
    invoke-direct {v3, v0, v1, v4, v5}, Lio/appmetrica/analytics/impl/ik;-><init>(JJ)V

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/g;->a(Lio/appmetrica/analytics/impl/ik;)Lio/appmetrica/analytics/impl/hk;

    move-result-object v2

    const/4 v3, 0x3

    .line 12
    iput v3, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    .line 13
    iget-object v3, p0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    .line 14
    iget-object v3, v3, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    .line 15
    check-cast v3, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/x5;->d()V

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/vk;->c:Lio/appmetrica/analytics/impl/l5;

    .line 17
    sget-object v3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 18
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ua;->h()Lio/appmetrica/analytics/impl/T9;

    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/T9;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    .line 20
    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object v0

    .line 21
    iget-object p0, p0, Lio/appmetrica/analytics/impl/l5;->a:Lio/appmetrica/analytics/impl/m5;

    .line 22
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    .line 23
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    return-object v2
.end method

.method public final a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V
    .locals 8

    .line 24
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/hk;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/hk;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 26
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->c:Lio/appmetrica/analytics/impl/l5;

    .line 27
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->g:Lio/appmetrica/analytics/impl/hb;

    invoke-static {p2, v2}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/hb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p2

    .line 28
    new-instance v2, Lio/appmetrica/analytics/impl/xk;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/xk;-><init>()V

    .line 29
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/hk;->d:J

    .line 30
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/xk;->a:J

    .line 31
    iget-object v3, p1, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 32
    iget-object v3, v3, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/zk;

    .line 33
    iput-object v3, v2, Lio/appmetrica/analytics/impl/xk;->d:Lio/appmetrica/analytics/impl/zk;

    .line 34
    iget-object v3, p1, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    .line 35
    iget-object v5, p1, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 37
    const-string v7, "SESSION_COUNTER_ID"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/yk;->b()V

    .line 39
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/xk;->b:J

    .line 40
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/hk;->i:J

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/hk;->e:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/hk;->j:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 41
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/xk;->c:J

    .line 42
    iget-object v0, v0, Lio/appmetrica/analytics/impl/l5;->a:Lio/appmetrica/analytics/impl/m5;

    .line 43
    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    .line 44
    invoke-virtual {v0, p2, v2}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    .line 45
    iget-boolean p2, p1, Lio/appmetrica/analytics/impl/hk;->g:Z

    if-eqz p2, :cond_0

    .line 46
    iput-boolean v1, p1, Lio/appmetrica/analytics/impl/hk;->g:Z

    .line 47
    iget-object p2, p1, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    const-string v2, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p2, v2, v0}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/yk;->b()V

    .line 51
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    .line 52
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 53
    iget-object p2, p1, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 54
    iget-object p2, p2, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/zk;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Finish background session"

    invoke-virtual {p0, v0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_2
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Finish foreground session"

    invoke-virtual {p0, v0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    monitor-enter p1

    .line 59
    :try_start_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance p2, Lio/appmetrica/analytics/impl/lb;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/lb;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 61
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/yk;->b()V

    const/4 p0, 0x0

    .line 62
    iput-object p0, p1, Lio/appmetrica/analytics/impl/hk;->h:Lio/appmetrica/analytics/impl/wk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit p1

    throw p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->d:Lio/appmetrica/analytics/impl/g;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/hk;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0, v4, v5}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    const/4 v0, 0x3

    iput v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->e:Lio/appmetrica/analytics/impl/g;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/hk;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0, v4, v5}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    iput v3, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :goto_1
    iput-object v1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    iput v2, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    :cond_4
    :goto_2
    iget v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0, v4, v5}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :goto_3
    iput v2, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    iput-object v1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    :cond_7
    :goto_4
    iget v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Q7;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_b

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start background session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iget-object v2, p0, Lio/appmetrica/analytics/impl/vk;->e:Lio/appmetrica/analytics/impl/g;

    new-instance v3, Lio/appmetrica/analytics/impl/ik;

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    invoke-direct {v3, v0, v1, v4, v5}, Lio/appmetrica/analytics/impl/ik;-><init>(JJ)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/g;->a(Lio/appmetrica/analytics/impl/ik;)Lio/appmetrica/analytics/impl/hk;

    move-result-object v2

    iget-object v3, p0, Lio/appmetrica/analytics/impl/vk;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Un;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->c:Lio/appmetrica/analytics/impl/l5;

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->h()Lio/appmetrica/analytics/impl/T9;

    move-result-object v1

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/T9;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v2, v3, v4}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object p1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/l5;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    goto :goto_5

    :cond_8
    iget v3, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    sget-object v4, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x1801

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lio/appmetrica/analytics/impl/vk;->c:Lio/appmetrica/analytics/impl/l5;

    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object v4

    iget-object v3, v3, Lio/appmetrica/analytics/impl/l5;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    invoke-virtual {v3, p1, v4}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/vk;->c:Lio/appmetrica/analytics/impl/l5;

    sget-object v4, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/ua;->h()Lio/appmetrica/analytics/impl/T9;

    move-result-object v4

    invoke-static {p1, v4}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/T9;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object v0

    iget-object v1, v3, Lio/appmetrica/analytics/impl/l5;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    :cond_9
    :goto_5
    iput-object v2, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_a
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/hk;->i:J

    iget-object p1, v0, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SESSION_SLEEP_START"

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yk;->b()V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/impl/a6;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->d:Lio/appmetrica/analytics/impl/g;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/hk;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0, v3, v4}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    const/4 v0, 0x3

    iput v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->e:Lio/appmetrica/analytics/impl/g;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/hk;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0, v3, v4}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    iput v2, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    iput v1, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    :cond_4
    :goto_2
    iget v0, p0, Lio/appmetrica/analytics/impl/vk;->g:I

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Q7;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/hk;->a(J)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/hk;->i:J

    iget-object p1, v0, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SESSION_SLEEP_START"

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yk;->b()V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    :goto_3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;Lio/appmetrica/analytics/impl/a6;)V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vk;->f:Lio/appmetrica/analytics/impl/hk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
