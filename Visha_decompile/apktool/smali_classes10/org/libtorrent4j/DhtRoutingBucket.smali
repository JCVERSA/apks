.class public final Lorg/libtorrent4j/DhtRoutingBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final t:Lorg/libtorrent4j/swig/dht_routing_bucket;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_routing_bucket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/DhtRoutingBucket;->t:Lorg/libtorrent4j/swig/dht_routing_bucket;

    return-void
.end method


# virtual methods
.method public lastActive()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtRoutingBucket;->t:Lorg/libtorrent4j/swig/dht_routing_bucket;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_routing_bucket;->getLast_active()I

    move-result p0

    return p0
.end method

.method public numNodes()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtRoutingBucket;->t:Lorg/libtorrent4j/swig/dht_routing_bucket;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_routing_bucket;->getNum_nodes()I

    move-result p0

    return p0
.end method

.method public numReplacements()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtRoutingBucket;->t:Lorg/libtorrent4j/swig/dht_routing_bucket;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_routing_bucket;->getNum_replacements()I

    move-result p0

    return p0
.end method

.method public swig()Lorg/libtorrent4j/swig/dht_routing_bucket;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtRoutingBucket;->t:Lorg/libtorrent4j/swig/dht_routing_bucket;

    return-object p0
.end method
