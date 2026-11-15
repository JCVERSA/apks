.class public final Lio/appmetrica/analytics/impl/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/m5;

.field public final b:Lio/appmetrica/analytics/impl/yk;

.field public final c:Lio/appmetrica/analytics/impl/kk;

.field public d:J

.field public e:J

.field public f:Ljava/util/concurrent/atomic/AtomicLong;

.field public g:Z

.field public volatile h:Lio/appmetrica/analytics/impl/wk;

.field public i:J

.field public j:J

.field public final k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/kk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hk;->a:Lio/appmetrica/analytics/impl/m5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/hk;->b:Lio/appmetrica/analytics/impl/yk;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/hk;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/hk;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/hk;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v1

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/kk;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    :goto_0
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/hk;->e:J

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/kk;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    :goto_1
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/hk;->d:J

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 10
    iget-object v1, v1, Lio/appmetrica/analytics/impl/kk;->e:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 12
    :goto_2
    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/kk;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 16
    :goto_3
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/hk;->g:Z

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 18
    iget-object v0, v0, Lio/appmetrica/analytics/impl/kk;->g:Ljava/lang/Long;

    if-nez v0, :cond_4

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 20
    :goto_4
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/hk;->i:J

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    iget-wide v4, p0, Lio/appmetrica/analytics/impl/hk;->e:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v0, v0, Lio/appmetrica/analytics/impl/kk;->h:Ljava/lang/Long;

    if-nez v0, :cond_5

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 24
    :goto_5
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/hk;->j:J

    return-void
.end method

.method public final a(J)Z
    .locals 13

    .line 25
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/hk;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 26
    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/hk;->h:Lio/appmetrica/analytics/impl/wk;

    if-nez v3, :cond_2

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/hk;->h:Lio/appmetrica/analytics/impl/wk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 29
    :try_start_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/hk;->a:Lio/appmetrica/analytics/impl/m5;

    .line 30
    iget-object v3, v3, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    .line 31
    iget-wide v4, p0, Lio/appmetrica/analytics/impl/hk;->d:J

    .line 32
    iget-object v6, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    .line 33
    iget-object v6, v6, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/zk;

    .line 34
    invoke-virtual {v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/S6;->a(JLio/appmetrica/analytics/impl/zk;)Landroid/content/ContentValues;

    move-result-object v3

    .line 35
    const-string v4, "report_request_parameters"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v3, Lio/appmetrica/analytics/impl/wk;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/wk;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lio/appmetrica/analytics/impl/hk;->h:Lio/appmetrica/analytics/impl/wk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    :cond_1
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 40
    :cond_2
    :goto_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/hk;->h:Lio/appmetrica/analytics/impl/wk;

    if-eqz v3, :cond_7

    .line 41
    iget-object v4, p0, Lio/appmetrica/analytics/impl/hk;->a:Lio/appmetrica/analytics/impl/m5;

    .line 42
    iget-object v4, v4, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    .line 43
    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/ch;

    .line 44
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lio/appmetrica/analytics/impl/wk;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 45
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Lio/appmetrica/analytics/impl/wk;->b:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 46
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v3, Lio/appmetrica/analytics/impl/wk;->c:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 47
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v3, Lio/appmetrica/analytics/impl/wk;->d:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 48
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v3, Lio/appmetrica/analytics/impl/wk;->e:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 49
    iget v5, v3, Lio/appmetrica/analytics/impl/wk;->f:I

    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsApiLevel()I

    move-result v11

    if-ne v5, v11, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 50
    iget v3, v3, Lio/appmetrica/analytics/impl/wk;->g:I

    .line 51
    iget v4, v4, Lio/appmetrica/analytics/impl/ch;->r:I

    if-ne v3, v4, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    .line 52
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Boolean;

    move-result-object v3

    .line 53
    invoke-static {v3}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 54
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 55
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v1

    .line 56
    :goto_5
    iget-object v4, p0, Lio/appmetrica/analytics/impl/hk;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v4}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v4

    .line 57
    iget-wide v6, p0, Lio/appmetrica/analytics/impl/hk;->i:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    move v4, v1

    goto :goto_6

    :cond_9
    move v4, v2

    :goto_6
    sub-long v5, p1, v6

    .line 58
    iget-wide v7, p0, Lio/appmetrica/analytics/impl/hk;->e:J

    sub-long/2addr p1, v7

    if-nez v4, :cond_c

    .line 59
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    iget-object v7, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/impl/kk;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hk;->a:Lio/appmetrica/analytics/impl/m5;

    .line 61
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    .line 62
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    .line 63
    iget p0, p0, Lio/appmetrica/analytics/impl/ch;->f:I

    .line 64
    iget-object v7, v7, Lio/appmetrica/analytics/impl/kk;->d:Ljava/lang/Integer;

    if-nez v7, :cond_a

    goto :goto_7

    .line 65
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_7
    int-to-long v7, p0

    .line 66
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long p0, v5, v7

    if-gez p0, :cond_c

    sget-wide v5, Lio/appmetrica/analytics/impl/lk;->a:J

    .line 67
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long p0, p1, v4

    if-ltz p0, :cond_b

    goto :goto_8

    :cond_b
    move p0, v2

    goto :goto_9

    :cond_c
    :goto_8
    move p0, v1

    :goto_9
    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    if-nez p0, :cond_d

    goto :goto_a

    :cond_d
    move v1, v2

    :goto_a
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/hk;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/hk;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentReportId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/hk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionRequestParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/hk;->h:Lio/appmetrica/analytics/impl/wk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sleepStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/hk;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
