.class public final Lorg/libtorrent4j/AnnounceInfohash;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/announce_infohash;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/announce_infohash;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fails()S
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_infohash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_infohash;->getFails()S

    move-result p0

    return p0
.end method

.method public isWorking()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_infohash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_infohash;->getFails()S

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_infohash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_infohash;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updating()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_infohash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_infohash;->getUpdating()Z

    move-result p0

    return p0
.end method
