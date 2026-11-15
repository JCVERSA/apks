.class public final Lorg/libtorrent4j/alerts/PeerDisconnectedAlert;
.super Lorg/libtorrent4j/alerts/PeerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/PeerAlert<",
        "Lorg/libtorrent4j/swig/peer_disconnected_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_disconnected_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/PeerAlert;-><init>(Lorg/libtorrent4j/swig/peer_alert;)V

    return-void
.end method


# virtual methods
.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_disconnected_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_disconnected_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public operation()Lorg/libtorrent4j/Operation;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_disconnected_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_disconnected_alert;->getOp()Lorg/libtorrent4j/swig/operation_t;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Operation;->fromSwig(Lorg/libtorrent4j/swig/operation_t;)Lorg/libtorrent4j/Operation;

    move-result-object p0

    return-object p0
.end method

.method public reason()Lorg/libtorrent4j/alerts/CloseReason;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_disconnected_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_disconnected_alert;->getReason()Lorg/libtorrent4j/swig/close_reason_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/CloseReason;->fromSwig(I)Lorg/libtorrent4j/alerts/CloseReason;

    move-result-object p0

    return-object p0
.end method

.method public socketType()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_disconnected_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_disconnected_alert;->getSocket_type()Lorg/libtorrent4j/swig/socket_type_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result p0

    return p0
.end method
