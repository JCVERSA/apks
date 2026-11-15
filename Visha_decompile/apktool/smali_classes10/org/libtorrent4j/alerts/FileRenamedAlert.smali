.class public final Lorg/libtorrent4j/alerts/FileRenamedAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/file_renamed_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/file_renamed_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public index()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/file_renamed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/file_renamed_alert;->getIndex()I

    move-result p0

    return p0
.end method

.method public newName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/file_renamed_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/file_renamed_alert;->new_name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
