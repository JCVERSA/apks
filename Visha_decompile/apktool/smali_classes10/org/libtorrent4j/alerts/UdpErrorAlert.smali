.class public final Lorg/libtorrent4j/alerts/UdpErrorAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/udp_error_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/udp_error_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public endpoint()Lorg/libtorrent4j/UdpEndpoint;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/UdpEndpoint;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/udp_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/udp_error_alert;->get_endpoint()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/UdpEndpoint;-><init>(Lorg/libtorrent4j/swig/udp_endpoint;)V

    return-object v0
.end method

.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/udp_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/udp_error_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public operation()Lorg/libtorrent4j/Operation;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/udp_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/udp_error_alert;->getOperation()Lorg/libtorrent4j/swig/operation_t;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Operation;->fromSwig(Lorg/libtorrent4j/swig/operation_t;)Lorg/libtorrent4j/Operation;

    move-result-object p0

    return-object p0
.end method
