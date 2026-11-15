.class public final Lorg/libtorrent4j/AnnounceEntry;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/announce_entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/swig/announce_entry;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/announce_entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public endpoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/AnnounceEndpoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getEndpoints()Lorg/libtorrent4j/swig/announce_endpoint_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/announce_endpoint;

    new-instance v2, Lorg/libtorrent4j/AnnounceEndpoint;

    invoke-direct {v2, v0}, Lorg/libtorrent4j/AnnounceEndpoint;-><init>(Lorg/libtorrent4j/swig/announce_endpoint;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public failLimit()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getFail_limit()S

    move-result p0

    return p0
.end method

.method public failLimit(S)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_entry;->setFail_limit(S)V

    return-void
.end method

.method public isVerified()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getVerified()Z

    move-result p0

    return p0
.end method

.method public source()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getSource()S

    move-result p0

    return p0
.end method

.method public tier()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getTier()S

    move-result p0

    return p0
.end method

.method public tier(S)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_entry;->setTier(S)V

    return-void
.end method

.method public trackerId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getTrackerid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trackerId(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_entry;->setTrackerid(Ljava/lang/String;)V

    return-void
.end method

.method public url()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public url(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_entry;->setUrl(Ljava/lang/String;)V

    return-void
.end method
