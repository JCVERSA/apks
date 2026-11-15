.class public final Lorg/libtorrent4j/alerts/DhtSampleInfohashesAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public endpoint()Lorg/libtorrent4j/UdpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/UdpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->get_endpoint()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/UdpEndpoint;-><init>(Lorg/libtorrent4j/swig/udp_endpoint;)V

    return-object v0
.end method

.method public interval()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->get_interval()J

    move-result-wide v0

    return-wide v0
.end method

.method public nodes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Lorg/libtorrent4j/Sha1Hash;",
            "Lorg/libtorrent4j/UdpEndpoint;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->nodes()Lorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;->get(I)Lorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;

    move-result-object v3

    new-instance v4, Lorg/libtorrent4j/Sha1Hash;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;->getFirst()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    invoke-virtual {v4}, Lorg/libtorrent4j/Sha1Hash;->clone()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v4

    new-instance v5, Lorg/libtorrent4j/UdpEndpoint;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;->getSecond()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/libtorrent4j/UdpEndpoint;-><init>(Lorg/libtorrent4j/swig/udp_endpoint;)V

    invoke-virtual {v5}, Lorg/libtorrent4j/UdpEndpoint;->clone()Lorg/libtorrent4j/UdpEndpoint;

    move-result-object v3

    new-instance v5, Lorg/libtorrent4j/Pair;

    invoke-direct {v5, v4, v3}, Lorg/libtorrent4j/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public numInfohashes()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->getNum_infohashes()I

    move-result p0

    return p0
.end method

.method public numNodes()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->num_nodes()I

    move-result p0

    return p0
.end method

.method public numSamples()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->num_samples()I

    move-result p0

    return p0
.end method

.method public samples()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Sha1Hash;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;->samples()Lorg/libtorrent4j/swig/sha1_hash_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha1_hash_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/sha1_hash_vector;->get(I)Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v3

    new-instance v4, Lorg/libtorrent4j/Sha1Hash;

    invoke-direct {v4, v3}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    invoke-virtual {v4}, Lorg/libtorrent4j/Sha1Hash;->clone()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
