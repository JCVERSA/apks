.class public final Lorg/libtorrent4j/alerts/DhtOutgoingGetPeersAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public endpoint()Lorg/libtorrent4j/UdpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/UdpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;->get_endpoint()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/UdpEndpoint;-><init>(Lorg/libtorrent4j/swig/udp_endpoint;)V

    return-object v0
.end method

.method public infoHash()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;->getInfo_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public obfuscatedInfoHash()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;->getObfuscated_info_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method
