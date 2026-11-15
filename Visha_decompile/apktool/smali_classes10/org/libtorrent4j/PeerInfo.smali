.class public Lorg/libtorrent4j/PeerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/PeerInfo$ConnectionType;
    }
.end annotation


# instance fields
.field protected client:Ljava/lang/String;

.field protected connectionType:Lorg/libtorrent4j/PeerInfo$ConnectionType;

.field protected downSpeed:I

.field protected flags:I

.field protected ip:Ljava/lang/String;

.field protected progress:F

.field protected progressPpm:I

.field protected source:B

.field protected totalDownload:J

.field protected totalUpload:J

.field protected upSpeed:I


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/PeerInfo;->init(Lorg/libtorrent4j/swig/peer_info;)V

    return-void
.end method


# virtual methods
.method public client()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerInfo;->client:Ljava/lang/String;

    return-object p0
.end method

.method public connectionType()Lorg/libtorrent4j/PeerInfo$ConnectionType;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerInfo;->connectionType:Lorg/libtorrent4j/PeerInfo$ConnectionType;

    return-object p0
.end method

.method public downSpeed()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PeerInfo;->downSpeed:I

    return p0
.end method

.method public flags()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PeerInfo;->flags:I

    return p0
.end method

.method public init(Lorg/libtorrent4j/swig/peer_info;)V
    .locals 2

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->get_client()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_vector2utf8(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/PeerInfo;->client:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getTotal_download()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libtorrent4j/PeerInfo;->totalDownload:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getTotal_upload()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libtorrent4j/PeerInfo;->totalUpload:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->get_flags()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/PeerInfo;->flags:I

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->get_source()B

    move-result v0

    iput-byte v0, p0, Lorg/libtorrent4j/PeerInfo;->source:B

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getUp_speed()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/PeerInfo;->upSpeed:I

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getDown_speed()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/PeerInfo;->downSpeed:I

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getConnection_type()Lorg/libtorrent4j/swig/connection_type_t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/connection_type_t;->to_int()I

    move-result v0

    invoke-static {v0}, Lorg/libtorrent4j/PeerInfo$ConnectionType;->fromSwig(I)Lorg/libtorrent4j/PeerInfo$ConnectionType;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/PeerInfo;->connectionType:Lorg/libtorrent4j/PeerInfo$ConnectionType;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getProgress()F

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/PeerInfo;->progress:F

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->getProgress_ppm()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/PeerInfo;->progressPpm:I

    new-instance v0, Lorg/libtorrent4j/TcpEndpoint;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/peer_info;->remote_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/TcpEndpoint;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/libtorrent4j/PeerInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public ip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/PeerInfo;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public progress()F
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PeerInfo;->progress:F

    return p0
.end method

.method public progressPpm()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PeerInfo;->progressPpm:I

    return p0
.end method

.method public source()B
    .locals 0

    iget-byte p0, p0, Lorg/libtorrent4j/PeerInfo;->source:B

    return p0
.end method

.method public totalDownload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/PeerInfo;->totalDownload:J

    return-wide v0
.end method

.method public totalUpload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/PeerInfo;->totalUpload:J

    return-wide v0
.end method

.method public upSpeed()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PeerInfo;->upSpeed:I

    return p0
.end method
