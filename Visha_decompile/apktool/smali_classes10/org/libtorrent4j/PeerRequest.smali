.class public final Lorg/libtorrent4j/PeerRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final r:Lorg/libtorrent4j/swig/peer_request;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/PeerRequest;->r:Lorg/libtorrent4j/swig/peer_request;

    return-void
.end method


# virtual methods
.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerRequest;->r:Lorg/libtorrent4j/swig/peer_request;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_request;->getLength()I

    move-result p0

    return p0
.end method

.method public piece()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerRequest;->r:Lorg/libtorrent4j/swig/peer_request;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_request;->getPiece()I

    move-result p0

    return p0
.end method

.method public start()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerRequest;->r:Lorg/libtorrent4j/swig/peer_request;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_request;->getStart()I

    move-result p0

    return p0
.end method

.method public swig()Lorg/libtorrent4j/swig/peer_request;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerRequest;->r:Lorg/libtorrent4j/swig/peer_request;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeerRequest(piece: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/PeerRequest;->piece()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/PeerRequest;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/PeerRequest;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
