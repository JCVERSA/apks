.class public final Lorg/libtorrent4j/alerts/InvalidRequestAlert;
.super Lorg/libtorrent4j/alerts/PeerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/PeerAlert<",
        "Lorg/libtorrent4j/swig/invalid_request_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/invalid_request_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/PeerAlert;-><init>(Lorg/libtorrent4j/swig/peer_alert;)V

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/libtorrent4j/PeerRequest;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/PeerRequest;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/invalid_request_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/invalid_request_alert;->getRequest()Lorg/libtorrent4j/swig/peer_request;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/PeerRequest;-><init>(Lorg/libtorrent4j/swig/peer_request;)V

    return-object v0
.end method
