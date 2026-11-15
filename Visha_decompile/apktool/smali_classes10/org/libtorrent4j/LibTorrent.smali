.class public final Lorg/libtorrent4j/LibTorrent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boostVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->boost_lib_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findMetricIdx(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->find_metric_idx_ex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static hasArmNeonSupport()Z
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->arm_neon_support()Z

    move-result v0

    return v0
.end method

.method public static libtorrent4jVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1.0-39"

    return-object v0
.end method

.method public static opensslVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->openssl_version_text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static revision()Ljava/lang/String;
    .locals 1

    const-string v0, "24a3adf35d3e689bde700371337aad61b160bafa"

    return-object v0
.end method

.method public static sessionStatsMetrics()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/StatsMetric;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->session_stats_metrics()Lorg/libtorrent4j/swig/stats_metric_vector;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/stats_metric_vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/libtorrent4j/swig/stats_metric;

    new-instance v3, Lorg/libtorrent4j/StatsMetric;

    invoke-direct {v3, v2}, Lorg/libtorrent4j/StatsMetric;-><init>(Lorg/libtorrent4j/swig/stats_metric;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
