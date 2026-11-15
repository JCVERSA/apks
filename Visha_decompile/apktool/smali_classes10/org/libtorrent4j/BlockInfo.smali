.class public final Lorg/libtorrent4j/BlockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/BlockInfo$BlockState;
    }
.end annotation


# instance fields
.field private final b:Lorg/libtorrent4j/swig/block_info;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/block_info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    return-void
.end method


# virtual methods
.method public blockSize()I
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->getBlock_size()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public bytesProgress()I
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->getBytes_progress()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public numPeers()I
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->getNum_peers()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public peer()Lorg/libtorrent4j/TcpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TcpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->peer()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-object v0
.end method

.method public state()Lorg/libtorrent4j/BlockInfo$BlockState;
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->getState()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lorg/libtorrent4j/BlockInfo$BlockState;->fromSwig(I)Lorg/libtorrent4j/BlockInfo$BlockState;

    move-result-object p0

    return-object p0
.end method

.method public swig()Lorg/libtorrent4j/swig/block_info;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/BlockInfo;->b:Lorg/libtorrent4j/swig/block_info;

    return-object p0
.end method
