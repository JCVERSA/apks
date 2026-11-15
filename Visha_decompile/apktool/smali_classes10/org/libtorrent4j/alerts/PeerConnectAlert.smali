.class public final Lorg/libtorrent4j/alerts/PeerConnectAlert;
.super Lorg/libtorrent4j/alerts/PeerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/PeerConnectAlert$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/PeerAlert<",
        "Lorg/libtorrent4j/swig/peer_connect_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_connect_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/PeerAlert;-><init>(Lorg/libtorrent4j/swig/peer_alert;)V

    return-void
.end method


# virtual methods
.method public direction()Lorg/libtorrent4j/alerts/PeerConnectAlert$Direction;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_connect_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_connect_alert;->getDirection()Lorg/libtorrent4j/swig/peer_connect_alert$direction_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_connect_alert$direction_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/PeerConnectAlert$Direction;->fromSwig(I)Lorg/libtorrent4j/alerts/PeerConnectAlert$Direction;

    move-result-object p0

    return-object p0
.end method

.method public socketType()Lorg/libtorrent4j/alerts/SocketType;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_connect_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_connect_alert;->getSocket_type()Lorg/libtorrent4j/swig/socket_type_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/SocketType;->fromSwig(I)Lorg/libtorrent4j/alerts/SocketType;

    move-result-object p0

    return-object p0
.end method
