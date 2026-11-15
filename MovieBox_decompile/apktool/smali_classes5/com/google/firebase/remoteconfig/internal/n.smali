.class public Lcom/google/firebase/remoteconfig/internal/n;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/n$a;,
        Lcom/google/firebase/remoteconfig/internal/n$b;
    }
.end annotation


# static fields
.field static final e:Ljava/util/Date;

.field static final f:Ljava/util/Date;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/n;->e:Ljava/util/Date;

    .line 9
    .line 10
    new-instance v0, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/n;->f:Ljava/util/Date;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/n;->c:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/remoteconfig/internal/n$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/firebase/remoteconfig/internal/n$a;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v3, "num_failed_fetches"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/util/Date;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v5, "backoff_end_time_in_millis"

    .line 20
    .line 21
    const-wide/16 v6, -0x1

    .line 22
    .line 23
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Lcom/google/firebase/remoteconfig/internal/n$a;-><init>(ILjava/util/Date;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "fetch_timeout_in_seconds"

    .line 4
    .line 5
    const-wide/16 v2, 0x3c

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public c()Lad/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-string v2, "last_fetch_time_in_millis"

    .line 7
    .line 8
    const-wide/16 v3, -0x1

    .line 9
    .line 10
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    const-string v4, "last_fetch_status"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-instance v4, Lad/j$b;

    .line 24
    .line 25
    invoke-direct {v4}, Lad/j$b;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    const-string v6, "fetch_timeout_in_seconds"

    .line 31
    .line 32
    const-wide/16 v7, 0x3c

    .line 33
    .line 34
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-virtual {v4, v5, v6}, Lad/j$b;->d(J)Lad/j$b;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    const-string v6, "minimum_fetch_interval_in_seconds"

    .line 45
    .line 46
    sget-wide v7, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->j:J

    .line 47
    .line 48
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-virtual {v4, v5, v6}, Lad/j$b;->e(J)Lad/j$b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lad/j$b;->c()Lad/j;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/s;->b()Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5, v3}, Lcom/google/firebase/remoteconfig/internal/s$b;->c(I)Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/remoteconfig/internal/s$b;->d(J)Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v4}, Lcom/google/firebase/remoteconfig/internal/s$b;->b(Lad/j;)Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/s$b;->a()Lcom/google/firebase/remoteconfig/internal/s;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    monitor-exit v0

    .line 81
    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw v1
.end method

.method d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "last_fetch_etag"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method e()Ljava/util/Date;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v2, "last_fetch_time_in_millis"

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method f()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "last_template_version"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public g()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "minimum_fetch_interval_in_seconds"

    .line 4
    .line 5
    sget-wide v2, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->j:J

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public h()Lcom/google/firebase/remoteconfig/internal/n$b;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/firebase/remoteconfig/internal/n$b;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v3, "num_failed_realtime_streams"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/util/Date;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v5, "realtime_backoff_end_time_in_millis"

    .line 20
    .line 21
    const-wide/16 v6, -0x1

    .line 22
    .line 23
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Lcom/google/firebase/remoteconfig/internal/n$b;-><init>(ILjava/util/Date;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method i()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/n;->f:Ljava/util/Date;

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/n;->k(ILjava/util/Date;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method j()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/n;->f:Ljava/util/Date;

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/n;->o(ILjava/util/Date;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method k(ILjava/util/Date;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "num_failed_fetches"

    .line 11
    .line 12
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "backoff_end_time_in_millis"

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public l(Lad/j;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "fetch_timeout_in_seconds"

    .line 11
    .line 12
    invoke-virtual {p1}, Lad/j;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "minimum_fetch_interval_in_seconds"

    .line 21
    .line 22
    invoke-virtual {p1}, Lad/j;->b()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method m(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "last_fetch_etag"

    .line 11
    .line 12
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method n(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "last_template_version"

    .line 11
    .line 12
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method o(ILjava/util/Date;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "num_failed_realtime_streams"

    .line 11
    .line 12
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "realtime_backoff_end_time_in_millis"

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "last_fetch_status"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method q(Ljava/util/Date;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "last_fetch_status"

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "last_fetch_time_in_millis"

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/n;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "last_fetch_status"

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method
