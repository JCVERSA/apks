.class public Lcom/google/firebase/perf/metrics/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final f:Luc/a;


# instance fields
.field private final a:Lcom/google/firebase/perf/metrics/i;

.field private final b:Lcom/google/firebase/perf/util/Timer;

.field private final c:Ljava/util/Map;

.field private d:Z

.field private e:Z


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
    sput-object v0, Lcom/google/firebase/perf/metrics/h;->f:Luc/a;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lxc/k;Lcom/google/firebase/perf/util/Timer;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/firebase/perf/metrics/h;->d:Z

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/google/firebase/perf/metrics/h;->e:Z

    .line 9
    .line 10
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/google/firebase/perf/metrics/h;->c:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/h;->b:Lcom/google/firebase/perf/util/Timer;

    .line 18
    .line 19
    invoke-static {p3}, Lcom/google/firebase/perf/metrics/i;->b(Lxc/k;)Lcom/google/firebase/perf/metrics/i;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/metrics/i;->q(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/i;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p3, p2}, Lcom/google/firebase/perf/metrics/i;->f(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/i;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/h;->a:Lcom/google/firebase/perf/metrics/i;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/i;->h()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lcom/google/firebase/perf/config/a;->K()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    sget-object p2, Lcom/google/firebase/perf/metrics/h;->f:Luc/a;

    .line 47
    .line 48
    const-string p3, "HttpMetric feature is disabled. URL %s"

    .line 49
    .line 50
    new-array p4, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, p4, v1

    .line 53
    .line 54
    invoke-virtual {p2, p3, p4}, Luc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/h;->e:Z

    .line 58
    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/h;->a:Lcom/google/firebase/perf/metrics/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/metrics/i;->g(I)Lcom/google/firebase/perf/metrics/i;

    .line 4
    .line 5
    .line 6
    return-void
.end method
