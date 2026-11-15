.class public final Lorg/libtorrent4j/StatsMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DHT_NODES_GAUGE_INDEX:I

.field public static final DHT_NODES_GAUGE_NAME:Ljava/lang/String; = "dht.dht_nodes"

.field public static final NET_RECV_BYTES_COUNTER_INDEX:I

.field public static final NET_RECV_BYTES_COUNTER_NAME:Ljava/lang/String; = "net.recv_bytes"

.field public static final NET_RECV_IP_OVERHEAD_BYTES_COUNTER_INDEX:I

.field public static final NET_RECV_IP_OVERHEAD_BYTES_COUNTER_NAME:Ljava/lang/String; = "net.recv_ip_overhead_bytes"

.field public static final NET_RECV_PAYLOAD_BYTES_COUNTER_INDEX:I

.field public static final NET_RECV_PAYLOAD_BYTES_COUNTER_NAME:Ljava/lang/String; = "net.recv_payload_bytes"

.field public static final NET_SENT_BYTES_COUNTER_INDEX:I

.field public static final NET_SENT_BYTES_COUNTER_NAME:Ljava/lang/String; = "net.sent_bytes"

.field public static final NET_SENT_IP_OVERHEAD_BYTES_COUNTER_INDEX:I

.field public static final NET_SENT_IP_OVERHEAD_BYTES_COUNTER_NAME:Ljava/lang/String; = "net.sent_ip_overhead_bytes"

.field public static final NET_SENT_PAYLOAD_BYTES_COUNTER_INDEX:I

.field public static final NET_SENT_PAYLOAD_BYTES_COUNTER_NAME:Ljava/lang/String; = "net.sent_payload_bytes"

.field public static final TYPE_COUNTER:I

.field public static final TYPE_GAUGE:I


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:I

.field public final valueIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "net.sent_payload_bytes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->NET_SENT_PAYLOAD_BYTES_COUNTER_INDEX:I

    const-string v0, "net.sent_bytes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->NET_SENT_BYTES_COUNTER_INDEX:I

    const-string v0, "net.sent_ip_overhead_bytes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->NET_SENT_IP_OVERHEAD_BYTES_COUNTER_INDEX:I

    const-string v0, "net.recv_payload_bytes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->NET_RECV_PAYLOAD_BYTES_COUNTER_INDEX:I

    const-string v0, "net.recv_bytes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->NET_RECV_BYTES_COUNTER_INDEX:I

    const-string v0, "net.recv_ip_overhead_bytes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->NET_RECV_IP_OVERHEAD_BYTES_COUNTER_INDEX:I

    const-string v0, "dht.dht_nodes"

    invoke-static {v0}, Lorg/libtorrent4j/LibTorrent;->findMetricIdx(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->DHT_NODES_GAUGE_INDEX:I

    sget-object v0, Lorg/libtorrent4j/swig/metric_type_t;->counter:Lorg/libtorrent4j/swig/metric_type_t;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/metric_type_t;->swigValue()I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->TYPE_COUNTER:I

    sget-object v0, Lorg/libtorrent4j/swig/metric_type_t;->gauge:Lorg/libtorrent4j/swig/metric_type_t;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/metric_type_t;->swigValue()I

    move-result v0

    sput v0, Lorg/libtorrent4j/StatsMetric;->TYPE_GAUGE:I

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/stats_metric;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/stats_metric;->get_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/StatsMetric;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/stats_metric;->getValue_index()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/StatsMetric;->valueIndex:I

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/stats_metric;->getType()Lorg/libtorrent4j/swig/metric_type_t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/metric_type_t;->swigValue()I

    move-result p1

    iput p1, p0, Lorg/libtorrent4j/StatsMetric;->type:I

    return-void
.end method

.method private typeStr()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lorg/libtorrent4j/StatsMetric;->type:I

    sget v0, Lorg/libtorrent4j/StatsMetric;->TYPE_COUNTER:I

    if-ne p0, v0, :cond_0

    const-string p0, "counter"

    goto :goto_0

    :cond_0
    sget v0, Lorg/libtorrent4j/StatsMetric;->TYPE_GAUGE:I

    if-ne p0, v0, :cond_1

    const-string p0, "gauge"

    goto :goto_0

    :cond_1
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/libtorrent4j/StatsMetric;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/libtorrent4j/StatsMetric;->valueIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/libtorrent4j/StatsMetric;->typeStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
