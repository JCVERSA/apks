.class public final Lorg/libtorrent4j/Sha256Hash;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/sha256_hash;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/libtorrent4j/Sha256Hash;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/sha256_hash;-><init>()V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/Sha256Hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/sha256_hash;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static convert(Lorg/libtorrent4j/swig/sha256_hash_vector;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/sha256_hash_vector;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/Sha256Hash;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha256_hash_vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/sha256_hash;

    new-instance v2, Lorg/libtorrent4j/Sha256Hash;

    invoke-direct {v2, v1}, Lorg/libtorrent4j/Sha256Hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromBytes([B)Lorg/libtorrent4j/Sha256Hash;
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/libtorrent4j/Sha256Hash;

    new-instance v1, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/libtorrent4j/swig/sha256_hash;-><init>(Lorg/libtorrent4j/swig/byte_vector;)V

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Sha256Hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes array must be of length 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static max()Lorg/libtorrent4j/Sha256Hash;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/Sha256Hash;

    invoke-static {}, Lorg/libtorrent4j/swig/sha256_hash;->max()Lorg/libtorrent4j/swig/sha256_hash;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Sha256Hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    return-object v0
.end method

.method public static min()Lorg/libtorrent4j/Sha256Hash;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/Sha256Hash;

    invoke-static {}, Lorg/libtorrent4j/swig/sha256_hash;->min()Lorg/libtorrent4j/swig/sha256_hash;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Sha256Hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    return-object v0
.end method

.method public static parseHex(Ljava/lang/String;)Lorg/libtorrent4j/Sha256Hash;
    .locals 0

    invoke-static {p0}, Lorg/libtorrent4j/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Sha256Hash;->fromBytes([B)Lorg/libtorrent4j/Sha256Hash;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha256_hash;->clear()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/Sha256Hash;->clone()Lorg/libtorrent4j/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/libtorrent4j/Sha256Hash;
    .locals 2

    .line 2
    new-instance v0, Lorg/libtorrent4j/Sha256Hash;

    new-instance v1, Lorg/libtorrent4j/swig/sha256_hash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/swig/sha256_hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Sha256Hash;-><init>(Lorg/libtorrent4j/swig/sha256_hash;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/libtorrent4j/Sha256Hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/Sha256Hash;->compareTo(Lorg/libtorrent4j/Sha256Hash;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/libtorrent4j/Sha256Hash;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    iget-object p1, p1, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p1, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-static {p0, p1}, Lorg/libtorrent4j/swig/sha256_hash;->compare(Lorg/libtorrent4j/swig/sha256_hash;Lorg/libtorrent4j/swig/sha256_hash;)I

    move-result p0

    return p0
.end method

.method public countLeadingZeroes()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha256_hash;->count_leading_zeroes()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/libtorrent4j/Sha256Hash;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    check-cast p1, Lorg/libtorrent4j/Sha256Hash;

    iget-object p1, p1, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p1, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/sha256_hash;->eq(Lorg/libtorrent4j/swig/sha256_hash;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha256_hash;->hash_code()I

    move-result p0

    return p0
.end method

.method public isAllZeros()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha256_hash;->is_all_zeros()Z

    move-result p0

    return p0
.end method

.method public toHex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/sha256_hash;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha256_hash;->to_hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/Sha256Hash;->toHex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
