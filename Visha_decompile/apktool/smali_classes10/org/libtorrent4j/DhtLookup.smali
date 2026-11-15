.class public final Lorg/libtorrent4j/DhtLookup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final l:Lorg/libtorrent4j/swig/dht_lookup;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_lookup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    return-void
.end method


# virtual methods
.method public branchFactor()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getBranch_factor()I

    move-result p0

    return p0
.end method

.method public firstTimeout()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getFirst_timeout()I

    move-result p0

    return p0
.end method

.method public lastSent()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getLast_sent()I

    move-result p0

    return p0
.end method

.method public nodesLeft()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getNodes_left()I

    move-result p0

    return p0
.end method

.method public outstandingRequests()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getOutstanding_requests()I

    move-result p0

    return p0
.end method

.method public responses()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getResponses()I

    move-result p0

    return p0
.end method

.method public swig()Lorg/libtorrent4j/swig/dht_lookup;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    return-object p0
.end method

.method public target()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getTarget()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public timeouts()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->getTimeouts()I

    move-result p0

    return p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/DhtLookup;->l:Lorg/libtorrent4j/swig/dht_lookup;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->get_type()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
