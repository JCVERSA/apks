.class public final Lorg/libtorrent4j/alerts/TrackerListAlert;
.super Lorg/libtorrent4j/alerts/TorrentAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/TorrentAlert<",
        "Lorg/libtorrent4j/swig/tracker_list_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/tracker_list_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/TorrentAlert;-><init>(Lorg/libtorrent4j/swig/torrent_alert;)V

    return-void
.end method


# virtual methods
.method public getTrackers()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/AnnounceEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/tracker_list_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_list_alert;->getTrackers()Lorg/libtorrent4j/swig/announce_entry_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/announce_entry_vector;->get(I)Lorg/libtorrent4j/swig/announce_entry;

    move-result-object v3

    new-instance v4, Lorg/libtorrent4j/AnnounceEntry;

    invoke-direct {v4, v3}, Lorg/libtorrent4j/AnnounceEntry;-><init>(Lorg/libtorrent4j/swig/announce_entry;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
