.class public Lorg/libtorrent4j/alerts/TorrentAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/libtorrent4j/swig/torrent_alert;",
        ">",
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_alert;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public handle()Lorg/libtorrent4j/TorrentHandle;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TorrentHandle;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_alert;->getHandle()Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TorrentHandle;-><init>(Lorg/libtorrent4j/swig/torrent_handle;)V

    return-object v0
.end method
