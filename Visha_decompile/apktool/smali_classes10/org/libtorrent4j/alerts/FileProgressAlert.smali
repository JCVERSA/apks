.class public final Lorg/libtorrent4j/alerts/FileProgressAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/file_progress_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/file_progress_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getFiles()[J
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/file_progress_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/file_progress_alert;->get_files()Lorg/libtorrent4j/swig/int64_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->int64_vector2longs(Lorg/libtorrent4j/swig/int64_vector;)[J

    move-result-object p0

    return-object p0
.end method
