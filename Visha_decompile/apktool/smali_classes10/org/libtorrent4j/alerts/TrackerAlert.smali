.class public Lorg/libtorrent4j/alerts/TrackerAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/libtorrent4j/swig/tracker_alert;",
        ">",
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/tracker_alert;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getVersion()Lorg/libtorrent4j/swig/protocol_version;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_alert;->getVersion()Lorg/libtorrent4j/swig/protocol_version;

    move-result-object p0

    return-object p0
.end method

.method public localEndpoint()Lorg/libtorrent4j/TcpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TcpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_alert;->get_local_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-object v0
.end method

.method public trackerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_alert;->tracker_url()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
