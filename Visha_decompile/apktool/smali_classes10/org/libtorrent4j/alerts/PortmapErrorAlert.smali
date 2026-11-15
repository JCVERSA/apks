.class public final Lorg/libtorrent4j/alerts/PortmapErrorAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/portmap_error_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/portmap_error_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/portmap_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/portmap_error_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public mapTransport()Lorg/libtorrent4j/PortmapTransport;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/portmap_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/portmap_error_alert;->getMap_transport()Lorg/libtorrent4j/swig/portmap_transport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/portmap_transport;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/PortmapTransport;->fromSwig(I)Lorg/libtorrent4j/PortmapTransport;

    move-result-object p0

    return-object p0
.end method

.method public mapping()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/portmap_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/portmap_error_alert;->get_mapping()I

    move-result p0

    return p0
.end method
