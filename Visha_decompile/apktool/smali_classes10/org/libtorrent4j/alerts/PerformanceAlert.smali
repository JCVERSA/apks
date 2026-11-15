.class public final Lorg/libtorrent4j/alerts/PerformanceAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/performance_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/performance_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getWarningCode()Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/performance_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/performance_alert;->getWarning_code()Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->fromSwig(I)Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    move-result-object p0

    return-object p0
.end method
