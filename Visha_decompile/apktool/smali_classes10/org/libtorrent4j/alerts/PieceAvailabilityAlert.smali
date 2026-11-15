.class public final Lorg/libtorrent4j/alerts/PieceAvailabilityAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/piece_availability_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/piece_availability_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getPieceAvailability()[I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/piece_availability_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/piece_availability_alert;->getPiece_availability()Lorg/libtorrent4j/swig/int_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->int_vector2ints(Lorg/libtorrent4j/swig/int_vector;)[I

    move-result-object p0

    return-object p0
.end method
