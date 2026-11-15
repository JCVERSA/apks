.class public final Lorg/libtorrent4j/alerts/TorrentConflictAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/torrent_conflict_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_conflict_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getConflictingTorrent()Lorg/libtorrent4j/TorrentHandle;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TorrentHandle;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_conflict_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_conflict_alert;->getConflicting_torrent()Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TorrentHandle;-><init>(Lorg/libtorrent4j/swig/torrent_handle;)V

    return-object v0
.end method

.method public getMetadata()Lorg/libtorrent4j/TorrentInfo;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TorrentInfo;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_conflict_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_conflict_alert;->get_metadata()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    return-object v0
.end method
