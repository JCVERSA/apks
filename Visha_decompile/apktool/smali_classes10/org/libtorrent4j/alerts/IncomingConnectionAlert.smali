.class public final Lorg/libtorrent4j/alerts/IncomingConnectionAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/incoming_connection_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/incoming_connection_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public endpoint()Lorg/libtorrent4j/TcpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TcpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/incoming_connection_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/incoming_connection_alert;->get_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-object v0
.end method

.method public socketType()Lorg/libtorrent4j/alerts/SocketType;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/incoming_connection_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/incoming_connection_alert;->getSocket_type()Lorg/libtorrent4j/swig/socket_type_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/SocketType;->fromSwig(I)Lorg/libtorrent4j/alerts/SocketType;

    move-result-object p0

    return-object p0
.end method
