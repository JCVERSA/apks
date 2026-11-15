.class public final Lorg/libtorrent4j/alerts/TrackerWarningAlert;
.super Lorg/libtorrent4j/alerts/TrackerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TrackerAlert<",
        "Lorg/libtorrent4j/swig/tracker_warning_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/tracker_warning_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TrackerAlert;-><init>(Lorg/libtorrent4j/swig/tracker_alert;)V

    return-void
.end method


# virtual methods
.method public warningMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_warning_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_warning_alert;->warning_message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
