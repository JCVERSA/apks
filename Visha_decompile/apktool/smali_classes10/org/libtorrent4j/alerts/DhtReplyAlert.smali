.class public final Lorg/libtorrent4j/alerts/DhtReplyAlert;
.super Lorg/libtorrent4j/alerts/TrackerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TrackerAlert<",
        "Lorg/libtorrent4j/swig/dht_reply_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_reply_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TrackerAlert;-><init>(Lorg/libtorrent4j/swig/tracker_alert;)V

    return-void
.end method


# virtual methods
.method public numPeers()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_reply_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_reply_alert;->getNum_peers()I

    move-result p0

    return p0
.end method
