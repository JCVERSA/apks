.class public final Lorg/libtorrent4j/alerts/DhtPutAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/dht_put_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_put_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public publicKey()[B
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_put_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_put_alert;->get_public_key()Lorg/libtorrent4j/swig/byte_array_32;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_array2bytes(Lorg/libtorrent4j/swig/byte_array_32;)[B

    move-result-object p0

    return-object p0
.end method

.method public salt()[B
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_put_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_put_alert;->get_salt()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0
.end method

.method public seq()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_put_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_put_alert;->get_seq()J

    move-result-wide v0

    return-wide v0
.end method

.method public signature()[B
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_put_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_put_alert;->get_signature()Lorg/libtorrent4j/swig/byte_array_64;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_array2bytes(Lorg/libtorrent4j/swig/byte_array_64;)[B

    move-result-object p0

    return-object p0
.end method

.method public target()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_put_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_put_alert;->getTarget()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method
