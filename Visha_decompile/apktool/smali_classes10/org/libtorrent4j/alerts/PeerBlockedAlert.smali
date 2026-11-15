.class public final Lorg/libtorrent4j/alerts/PeerBlockedAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/peer_blocked_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/peer_blocked_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public reason()Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/peer_blocked_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_blocked_alert;->getReason()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->fromSwig(I)Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    move-result-object p0

    return-object p0
.end method
