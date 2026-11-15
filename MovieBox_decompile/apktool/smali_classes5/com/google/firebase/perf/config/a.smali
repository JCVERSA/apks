.class public Lcom/google/firebase/perf/config/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final d:Luc/a;

.field private static volatile e:Lcom/google/firebase/perf/config/a;


# instance fields
.field private final a:Lcom/google/firebase/perf/config/RemoteConfigManager;

.field private b:Lcom/google/firebase/perf/util/d;

.field private c:Lcom/google/firebase/perf/config/w;


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
    sput-object v0, Lcom/google/firebase/perf/config/a;->d:Luc/a;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/util/d;Lcom/google/firebase/perf/config/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    new-instance p2, Lcom/google/firebase/perf/util/d;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/google/firebase/perf/util/d;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object p2, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    .line 20
    .line 21
    if-nez p3, :cond_2

    .line 22
    .line 23
    invoke-static {}, Lcom/google/firebase/perf/config/w;->e()Lcom/google/firebase/perf/config/w;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    :cond_2
    iput-object p3, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 28
    .line 29
    return-void
.end method

.method private H(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private I(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const-string v0, ";"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    array-length v0, p1

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    aget-object v3, p1, v2

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Lrc/a;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return v1
.end method

.method private J(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private L(D)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, v0, p1

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    cmpg-double p1, p1, v0

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private M(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private N(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->b(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->c(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->f(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private e(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->g(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public static declared-synchronized g()Lcom/google/firebase/perf/config/a;
    .locals 3

    .line 1
    const-class v0, Lcom/google/firebase/perf/config/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/perf/config/a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v2, v2}, Lcom/google/firebase/perf/config/a;-><init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/util/d;Lcom/google/firebase/perf/config/w;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method

.method private k()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/k;->e()Lcom/google/firebase/perf/config/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/k;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/w;->m(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    return v0

    .line 55
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    return v0

    .line 76
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/k;->d()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    return v0
.end method

.method private l()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/j;->e()Lcom/google/firebase/perf/config/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->x(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/j;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/w;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->I(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->e(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->I(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    return v0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/j;->d()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->I(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    return v0
.end method

.method private n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/d;->b(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private o(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/d;->c(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/d;->e(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private u(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getDouble(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private x(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getString(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method


# virtual methods
.method public A()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/n;->e()Lcom/google/firebase/perf/config/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->M(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->M(J)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/n;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->M(J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    return-wide v0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/n;->d()Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    return-wide v0
.end method

.method public B()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/o;->e()Lcom/google/firebase/perf/config/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/o;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    return-wide v0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/o;->d()Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    return-wide v0
.end method

.method public C()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/p;->f()Lcom/google/firebase/perf/config/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    return-wide v0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->e()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    return-wide v0

    .line 152
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->d()Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    return-wide v0
.end method

.method public D()D
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/q;->f()Lcom/google/firebase/perf/config/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->o(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Double;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 26
    .line 27
    div-double/2addr v1, v3

    .line 28
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    return-wide v1

    .line 35
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Double;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Double;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    return-wide v0

    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/Double;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/Double;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    return-wide v0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->e()Ljava/lang/Double;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    return-wide v0

    .line 145
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->d()Ljava/lang/Double;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    return-wide v0
.end method

.method public E()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/r;->e()Lcom/google/firebase/perf/config/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/r;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/r;->d()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    return-wide v0
.end method

.method public F()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/s;->e()Lcom/google/firebase/perf/config/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/s;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/s;->d()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    return-wide v0
.end method

.method public G()D
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/t;->f()Lcom/google/firebase/perf/config/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Double;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/t;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Double;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Double;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Double;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Double;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/t;->e()Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    return-wide v0

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/t;->d()Ljava/lang/Double;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    return-wide v0
.end method

.method public K()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->j()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    return v1
.end method

.method public O(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/perf/config/a;->d:Luc/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/perf/util/k;->b(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Luc/a;->i(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->i(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public P(Lcom/google/firebase/perf/util/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    .line 2
    .line 3
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->e()Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lrc/a;->a:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, -0x1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v4, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->g(J)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->f(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/config/w;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->e(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->d()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public f()D
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/e;->e()Lcom/google/firebase/perf/config/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->o(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Double;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 26
    .line 27
    div-double/2addr v1, v3

    .line 28
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    return-wide v1

    .line 35
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Double;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/e;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Double;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    return-wide v0

    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/Double;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/Double;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    return-wide v0

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/e;->d()Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    return-wide v0
.end method

.method public h()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/d;->e()Lcom/google/firebase/perf/config/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/d;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/w;->m(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0

    .line 66
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    return v0

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/d;->d()Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/b;->e()Lcom/google/firebase/perf/config/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/b;->d()Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->i()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/config/c;->d()Lcom/google/firebase/perf/config/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/config/a;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/firebase/perf/config/a;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public q()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/f;->e()Lcom/google/firebase/perf/config/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/f;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/f;->d()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    return-wide v0
.end method

.method public r()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/g;->e()Lcom/google/firebase/perf/config/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/g;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/g;->d()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    return-wide v0
.end method

.method public s()D
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/h;->f()Lcom/google/firebase/perf/config/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Double;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Double;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Double;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Double;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Double;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->e()Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    return-wide v0

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->d()Ljava/lang/Double;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    return-wide v0
.end method

.method public t()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/i;->e()Lcom/google/firebase/perf/config/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->N(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/i;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->N(J)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/i;->d()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    return-wide v0
.end method

.method public y()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/l;->e()Lcom/google/firebase/perf/config/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/l;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    return-wide v0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/l;->d()Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    return-wide v0
.end method

.method public z()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/config/m;->f()Lcom/google/firebase/perf/config/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    return-wide v0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->e()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    return-wide v0

    .line 152
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->d()Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    return-wide v0
.end method
