.class public final Lorg/libtorrent4j/alerts/ListenFailedAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/listen_failed_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/listen_failed_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public address()Lorg/libtorrent4j/Address;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Address;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_failed_alert;->get_address()Lorg/libtorrent4j/swig/address;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-object v0
.end method

.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_failed_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public listenInterface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_failed_alert;->listen_interface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public operation()Lorg/libtorrent4j/Operation;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_failed_alert;->getOp()Lorg/libtorrent4j/swig/operation_t;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Operation;->fromSwig(Lorg/libtorrent4j/swig/operation_t;)Lorg/libtorrent4j/Operation;

    move-result-object p0

    return-object p0
.end method

.method public port()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_failed_alert;->getPort()I

    move-result p0

    return p0
.end method

.method public socketType()Lorg/libtorrent4j/alerts/SocketType;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/listen_failed_alert;->get_socket_type()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/SocketType;->fromSwig(I)Lorg/libtorrent4j/alerts/SocketType;

    move-result-object p0

    return-object p0
.end method
