.class public final Lorg/libtorrent4j/alerts/SaveResumeDataFailedAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/save_resume_data_failed_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/save_resume_data_failed_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public error()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/save_resume_data_failed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/save_resume_data_failed_alert;->getError()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method
