.class public final Lorg/libtorrent4j/alerts/DhtDirectResponseAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/dht_direct_response_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_direct_response_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public endpoint()Lorg/libtorrent4j/UdpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/UdpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_direct_response_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_direct_response_alert;->get_endpoint()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/UdpEndpoint;-><init>(Lorg/libtorrent4j/swig/udp_endpoint;)V

    return-object v0
.end method

.method public response()Lorg/libtorrent4j/BDecodeNode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/BDecodeNode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_direct_response_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_direct_response_alert;->response()Lorg/libtorrent4j/swig/bdecode_node;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/BDecodeNode;-><init>(Lorg/libtorrent4j/swig/bdecode_node;)V

    return-object v0
.end method

.method public userdata()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_direct_response_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_direct_response_alert;->getUserdata()Lorg/libtorrent4j/swig/client_data_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/client_data_t;->get()J

    move-result-wide v0

    return-wide v0
.end method
