.class public Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;
.super Lorg/libtorrent4j/PeerInfo;
.source "SourceFile"


# instance fields
.field protected isUtp:Z

.field protected pieces:Lorg/libtorrent4j/PieceIndexBitfield;

.field protected port:I


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_info;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/libtorrent4j/PeerInfo;-><init>(Lorg/libtorrent4j/swig/peer_info;)V

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->remote_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/tcp_endpoint;->port()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->port:I

    new-instance v0, Lorg/libtorrent4j/PieceIndexBitfield;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->get_pieces()Lorg/libtorrent4j/swig/bitfield;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/PieceIndexBitfield;-><init>(Lorg/libtorrent4j/swig/bitfield;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->pieces:Lorg/libtorrent4j/PieceIndexBitfield;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getFlags()Lorg/libtorrent4j/swig/peer_flags_t;

    move-result-object p1

    sget-object v0, Lorg/libtorrent4j/swig/peer_info;->utp_socket:Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/peer_flags_t;->and_(Lorg/libtorrent4j/swig/peer_flags_t;)Lorg/libtorrent4j/swig/peer_flags_t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_flags_t;->non_zero()Z

    move-result p1

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->isUtp:Z

    return-void
.end method


# virtual methods
.method public isUtp()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->isUtp:Z

    return p0
.end method

.method public pieces()Lorg/libtorrent4j/PieceIndexBitfield;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->pieces:Lorg/libtorrent4j/PieceIndexBitfield;

    return-object p0
.end method

.method public port()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->port:I

    return p0
.end method
