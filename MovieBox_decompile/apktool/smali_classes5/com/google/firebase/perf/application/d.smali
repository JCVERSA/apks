.class public Lcom/google/firebase/perf/application/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final e:Luc/a;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroidx/core/app/g;

.field private final c:Ljava/util/Map;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Luc/a;->e()Luc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/app/g;

    invoke-direct {v0}, Landroidx/core/app/g;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/application/d;-><init>(Landroid/app/Activity;Landroidx/core/app/g;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/core/app/g;Ljava/util/Map;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 4
    iput-object p1, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    return-void
.end method

.method static a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method private b()Lcom/google/firebase/perf/util/e;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 6
    .line 7
    const-string v1, "No recording has been started."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Luc/a;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/core/app/g;->b()[Landroid/util/SparseIntArray;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 26
    .line 27
    const-string v1, "FrameMetricsAggregator.mMetrics is uninitialized."

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Luc/a;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    aget-object v1, v0, v1

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 43
    .line 44
    const-string v1, "FrameMetricsAggregator.mMetrics[TOTAL_INDEX] is uninitialized."

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Luc/a;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/perf/metrics/g;->a([Landroid/util/SparseIntArray;)Lcom/google/firebase/perf/metrics/g$a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/firebase/perf/util/e;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v0, v3

    .line 22
    .line 23
    const-string v2, "FrameMetricsAggregator is already recording %s"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/core/app/g;->a(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 37
    .line 38
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 8
    .line 9
    const-string v0, "Cannot start sub-recording because FrameMetricsAggregator is not recording"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Luc/a;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, v1, v0

    .line 36
    .line 37
    const-string p1, "Cannot start sub-recording because one is already ongoing with the key %s"

    .line 38
    .line 39
    invoke-virtual {v2, p1, v1}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/application/d;->b()Lcom/google/firebase/perf/util/e;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object p1, v1, v0

    .line 66
    .line 67
    const-string p1, "startFragment(%s): snapshot() failed"

    .line 68
    .line 69
    invoke-virtual {v2, p1, v1}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/google/firebase/perf/metrics/g$a;

    .line 80
    .line 81
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public e()Lcom/google/firebase/perf/util/e;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 7
    .line 8
    const-string v1, "Cannot stop because no recording was started"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Luc/a;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sget-object v1, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 27
    .line 28
    const-string v2, "Sub-recordings are still ongoing! Sub-recordings should be stopped first before stopping Activity screen trace."

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Luc/a;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/application/d;->b()Lcom/google/firebase/perf/util/e;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroidx/core/app/g;->c(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    .line 53
    :goto_0
    instance-of v2, v1, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v3, 0x1c

    .line 60
    .line 61
    if-gt v2, v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    throw v1

    .line 65
    :cond_3
    :goto_1
    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v3, 0x1

    .line 72
    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v1, v3, v0

    .line 75
    .line 76
    const-string v1, "View not hardware accelerated. Unable to collect FrameMetrics. %s"

    .line 77
    .line 78
    invoke-virtual {v2, v1, v3}, Luc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_2
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/core/app/g;->d()[Landroid/util/SparseIntArray;

    .line 88
    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 91
    .line 92
    return-object v1
.end method

.method public f(Landroidx/fragment/app/Fragment;)Lcom/google/firebase/perf/util/e;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/google/firebase/perf/application/d;->d:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 8
    .line 9
    const-string v0, "Cannot stop sub-recording because FrameMetricsAggregator is not recording"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Luc/a;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p1, v1, v0

    .line 40
    .line 41
    const-string p1, "Sub-recording associated with key %s was not started or does not exist"

    .line 42
    .line 43
    invoke-virtual {v2, p1, v1}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/google/firebase/perf/metrics/g$a;

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/firebase/perf/application/d;->b()Lcom/google/firebase/perf/util/e;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Luc/a;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p1, v1, v0

    .line 82
    .line 83
    const-string p1, "stopFragment(%s): snapshot() failed"

    .line 84
    .line 85
    invoke-virtual {v2, p1, v1}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/google/firebase/perf/metrics/g$a;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lcom/google/firebase/perf/metrics/g$a;->a(Lcom/google/firebase/perf/metrics/g$a;)Lcom/google/firebase/perf/metrics/g$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/google/firebase/perf/util/e;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method
