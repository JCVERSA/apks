.class public final Lorg/libtorrent4j/AnnounceEndpoint;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/announce_endpoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/announce_endpoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint;->getEnabled()Z

    move-result p0

    return p0
.end method

.method public infohashV1()Lorg/libtorrent4j/AnnounceInfohash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/AnnounceInfohash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint;->get_infohash_v1()Lorg/libtorrent4j/swig/announce_infohash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/AnnounceInfohash;-><init>(Lorg/libtorrent4j/swig/announce_infohash;)V

    return-object v0
.end method

.method public infohashV2()Lorg/libtorrent4j/AnnounceInfohash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/AnnounceInfohash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint;->get_infohash_v2()Lorg/libtorrent4j/swig/announce_infohash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/AnnounceInfohash;-><init>(Lorg/libtorrent4j/swig/announce_infohash;)V

    return-object v0
.end method

.method public localEndpoint()Lorg/libtorrent4j/TcpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TcpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint;->getLocal_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-object v0
.end method
