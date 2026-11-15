.class public final Lorg/libtorrent4j/alerts/TrackerErrorAlert;
.super Lorg/libtorrent4j/alerts/TrackerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TrackerAlert<",
        "Lorg/libtorrent4j/swig/tracker_error_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/tracker_error_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TrackerAlert;-><init>(Lorg/libtorrent4j/swig/tracker_alert;)V

    return-void
.end method


# virtual methods
.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_error_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_error_alert;->error_message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public timesInRow()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_error_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_error_alert;->getTimes_in_row()I

    move-result p0

    return p0
.end method
