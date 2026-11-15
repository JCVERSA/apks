.class public final Lorg/libtorrent4j/alerts/PeerLogAlert;
.super Lorg/libtorrent4j/alerts/PeerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/PeerAlert<",
        "Lorg/libtorrent4j/swig/peer_log_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_log_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/PeerAlert;-><init>(Lorg/libtorrent4j/swig/peer_alert;)V

    return-void
.end method


# virtual methods
.method public direction()Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_log_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_log_alert;->getDirection()Lorg/libtorrent4j/swig/peer_log_alert$direction_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->fromSwig(I)Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    move-result-object p0

    return-object p0
.end method

.method public eventType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_log_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_log_alert;->getEvent_type()Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_log_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_log_alert;->log_message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
