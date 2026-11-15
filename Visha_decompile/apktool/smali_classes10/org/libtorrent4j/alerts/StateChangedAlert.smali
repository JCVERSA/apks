.class public final Lorg/libtorrent4j/alerts/StateChangedAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/state_changed_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/state_changed_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getPrevState()Lorg/libtorrent4j/TorrentStatus$State;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/state_changed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/state_changed_alert;->getPrev_state()Lorg/libtorrent4j/swig/torrent_status$state_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/TorrentStatus$State;->fromSwig(I)Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lorg/libtorrent4j/TorrentStatus$State;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/state_changed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/state_changed_alert;->getState()Lorg/libtorrent4j/swig/torrent_status$state_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/TorrentStatus$State;->fromSwig(I)Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object p0

    return-object p0
.end method
