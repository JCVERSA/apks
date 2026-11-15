.class public final Lorg/libtorrent4j/alerts/ListenSucceededAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/listen_succeeded_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/listen_succeeded_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public address()Lorg/libtorrent4j/Address;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Address;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_succeeded_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_succeeded_alert;->get_address()Lorg/libtorrent4j/swig/address;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-object v0
.end method

.method public port()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_succeeded_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_succeeded_alert;->getPort()I

    move-result p0

    return p0
.end method

.method public socketType()Lorg/libtorrent4j/alerts/SocketType;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_succeeded_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_succeeded_alert;->get_socket_type()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/SocketType;->fromSwig(I)Lorg/libtorrent4j/alerts/SocketType;

    move-result-object p0

    return-object p0
.end method
