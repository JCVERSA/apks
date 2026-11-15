.class public final Lorg/libtorrent4j/alerts/TrackerAnnounceAlert;
.super Lorg/libtorrent4j/alerts/TrackerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TrackerAlert<",
        "Lorg/libtorrent4j/swig/tracker_announce_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/tracker_announce_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TrackerAlert;-><init>(Lorg/libtorrent4j/swig/tracker_alert;)V

    return-void
.end method


# virtual methods
.method public getEvent()Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_announce_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_announce_alert;->getEvent()Lorg/libtorrent4j/swig/event_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/event_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->fromSwig(I)Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    move-result-object p0

    return-object p0
.end method
