.class public final Lorg/libtorrent4j/alerts/TorrentRemovedAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/torrent_removed_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_removed_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getInfoHashes()Lorg/libtorrent4j/InfoHash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/InfoHash;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_removed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_removed_alert;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/InfoHash;-><init>(Lorg/libtorrent4j/swig/info_hash_t;)V

    return-object v0
.end method
