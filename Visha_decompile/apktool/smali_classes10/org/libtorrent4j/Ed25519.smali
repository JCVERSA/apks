.class public final Lorg/libtorrent4j/Ed25519;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PUBLIC_KEY_SIZE:I = 0x20

.field public static final SCALAR_SIZE:I = 0x20

.field public static final SECRET_KEY_SIZE:I = 0x40

.field public static final SEED_SIZE:I = 0x20

.field public static final SHARED_SECRET_SIZE:I = 0x20

.field public static final SIGNATURE_SIZE:I = 0x40


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addScalarPublic([B[B)[B
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_add_scalar_public(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scalar must be not null and of size 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key must be not null and of size 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addScalarSecret([B[B)[B
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_add_scalar_secret(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scalar must be not null and of size 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key must be not null and of size 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createKeypair([B)Lorg/libtorrent4j/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/libtorrent4j/Pair<",
            "[B[B>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_create_keypair(Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/byte_vector_byte_vector_pair;

    move-result-object p0

    new-instance v0, Lorg/libtorrent4j/Pair;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_vector_byte_vector_pair;->getFirst()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v1

    invoke-static {v1}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_vector_byte_vector_pair;->getSecond()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/libtorrent4j/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "seed must be not null and of size 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createSeed()[B
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_create_seed()Lorg/libtorrent4j/swig/byte_array_32;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_array2bytes(Lorg/libtorrent4j/swig/byte_array_32;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sign([B[B[B)[B
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_sign(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secret key must be not null and of size 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key must be not null and of size 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verify([B[B[B)Z
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_verify(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key must be not null and of size 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature must be not null and of size 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public keyExchange([B[B)[B
    .locals 1

    if-eqz p1, :cond_1

    array-length p0, p1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    if-eqz p2, :cond_0

    array-length p0, p2

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/libtorrent4j/swig/libtorrent;->ed25519_key_exchange(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "private key must be not null and of size 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key must be not null and of size 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
