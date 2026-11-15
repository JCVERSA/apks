.class public final Lorg/libtorrent4j/alerts/DhtStatsAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/dht_stats_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_stats_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public activeRequests()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/DhtLookup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_stats_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_stats_alert;->getActive_requests()Lorg/libtorrent4j/swig/dht_lookup_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/libtorrent4j/DhtLookup;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/dht_lookup_vector;->get(I)Lorg/libtorrent4j/swig/dht_lookup;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/DhtLookup;-><init>(Lorg/libtorrent4j/swig/dht_lookup;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public localEndpoint()Lorg/libtorrent4j/UdpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/UdpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_stats_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_stats_alert;->get_local_endpoint()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/UdpEndpoint;-><init>(Lorg/libtorrent4j/swig/udp_endpoint;)V

    return-object v0
.end method

.method public routingTable()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/DhtRoutingBucket;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_stats_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_stats_alert;->getRouting_table()Lorg/libtorrent4j/swig/dht_routing_bucket_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_routing_bucket_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/libtorrent4j/DhtRoutingBucket;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/dht_routing_bucket_vector;->get(I)Lorg/libtorrent4j/swig/dht_routing_bucket;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/DhtRoutingBucket;-><init>(Lorg/libtorrent4j/swig/dht_routing_bucket;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
