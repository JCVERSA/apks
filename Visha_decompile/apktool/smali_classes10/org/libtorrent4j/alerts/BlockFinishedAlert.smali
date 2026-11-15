.class public final Lorg/libtorrent4j/alerts/BlockFinishedAlert;
.super Lorg/libtorrent4j/alerts/PeerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/PeerAlert<",
        "Lorg/libtorrent4j/swig/block_finished_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/block_finished_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/PeerAlert;-><init>(Lorg/libtorrent4j/swig/peer_alert;)V

    return-void
.end method


# virtual methods
.method public blockIndex()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/block_finished_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_finished_alert;->getBlock_index()I

    move-result p0

    return p0
.end method

.method public pieceIndex()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/block_finished_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_finished_alert;->getPiece_index()I

    move-result p0

    return p0
.end method
