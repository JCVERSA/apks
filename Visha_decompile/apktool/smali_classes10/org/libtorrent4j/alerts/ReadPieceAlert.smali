.class public final Lorg/libtorrent4j/alerts/ReadPieceAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/read_piece_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/read_piece_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public bufferPtr()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/read_piece_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/read_piece_alert;->buffer_ptr()J

    move-result-wide v0

    return-wide v0
.end method

.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/read_piece_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/read_piece_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public piece()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/read_piece_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/read_piece_alert;->getPiece()I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/read_piece_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/read_piece_alert;->getSize()I

    move-result p0

    return p0
.end method
