.class public Lorg/libtorrent4j/InfoHash;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/info_hash_t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/info_hash_t;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/info_hash_t;-><init>()V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/info_hash_t;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBest()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/info_hash_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/info_hash_t;->get_best()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public getV1()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/info_hash_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/info_hash_t;->getV1()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public hasV1()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/info_hash_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/info_hash_t;->has_v1()Z

    move-result p0

    return p0
.end method

.method public hasV2()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/info_hash_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/info_hash_t;->has_v2()Z

    move-result p0

    return p0
.end method
