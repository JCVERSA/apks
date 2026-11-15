.class public final Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;
.super Lcom/google/firebase/perf/config/u;
.source "source.java"


# static fields
.field private static a:Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->b:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/config/u;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized e()Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;
    .locals 2

    .line 1
    const-class v0, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->a:Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->a:Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->a:Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method protected static f(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method protected static g(J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.firebase.perf.LogSourceName"

    .line 2
    .line 3
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "fpr_log_source"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrc/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
