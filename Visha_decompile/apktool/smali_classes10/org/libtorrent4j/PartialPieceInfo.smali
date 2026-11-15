.class public final Lorg/libtorrent4j/PartialPieceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final p:Lorg/libtorrent4j/swig/partial_piece_info;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/partial_piece_info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    return-void
.end method


# virtual methods
.method public blocksInPiece()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->getBlocks_in_piece()I

    move-result p0

    return p0
.end method

.method public finished()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->getFinished()I

    move-result p0

    return p0
.end method

.method public pieceIndex()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->getPiece_index()I

    move-result p0

    return p0
.end method

.method public requested()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->getRequested()I

    move-result p0

    return p0
.end method

.method public swig()Lorg/libtorrent4j/swig/partial_piece_info;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    return-object p0
.end method

.method public writing()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PartialPieceInfo;->p:Lorg/libtorrent4j/swig/partial_piece_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->getWriting()I

    move-result p0

    return p0
.end method
