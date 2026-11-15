.class public final Lorg/libtorrent4j/alerts/PieceInfoAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/piece_info_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/piece_info_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getBlockData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/BlockInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/piece_info_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/piece_info_alert;->getBlock_data()Lorg/libtorrent4j/swig/block_info_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/block_info_vector;->get(I)Lorg/libtorrent4j/swig/block_info;

    move-result-object v3

    new-instance v4, Lorg/libtorrent4j/BlockInfo;

    invoke-direct {v4, v3}, Lorg/libtorrent4j/BlockInfo;-><init>(Lorg/libtorrent4j/swig/block_info;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPieceInfo()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/PartialPieceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/piece_info_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/piece_info_alert;->getPiece_info()Lorg/libtorrent4j/swig/partial_piece_info_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/partial_piece_info_vector;->get(I)Lorg/libtorrent4j/swig/partial_piece_info;

    move-result-object v3

    new-instance v4, Lorg/libtorrent4j/PartialPieceInfo;

    invoke-direct {v4, v3}, Lorg/libtorrent4j/PartialPieceInfo;-><init>(Lorg/libtorrent4j/swig/partial_piece_info;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
