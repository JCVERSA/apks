.class public final Lorg/libtorrent4j/Vectors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ascii2byte_vector(Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/libtorrent4j/Vectors;->string2byte_vector(Ljava/lang/String;Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    return-object p0
.end method

.method public static byte_array2bytes(Lorg/libtorrent4j/swig/byte_array_32;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_array_32;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/byte_array_32;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static byte_array2bytes(Lorg/libtorrent4j/swig/byte_array_64;)[B
    .locals 4

    .line 4
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_array_64;->size()I

    move-result v0

    .line 5
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/byte_array_64;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static byte_vector2ascii(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/libtorrent4j/Vectors;->byte_vector2string(Lorg/libtorrent4j/swig/byte_vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;[B)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/byte_vector;->get(I)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_vector;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/byte_vector;->get(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static byte_vector2string(Lorg/libtorrent4j/swig/byte_vector;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static byte_vector2utf8(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/libtorrent4j/Vectors;->byte_vector2string(Lorg/libtorrent4j/swig/byte_vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytes2byte_array_32([B)Lorg/libtorrent4j/swig/byte_array_32;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_array_32;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/byte_array_32;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    invoke-virtual {v0, v1, v2}, Lorg/libtorrent4j/swig/byte_array_32;->set(IB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bytes2byte_array_64([B)Lorg/libtorrent4j/swig/byte_array_64;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_array_64;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/byte_array_64;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    invoke-virtual {v0, v1, v2}, Lorg/libtorrent4j/swig/byte_array_64;->set(IB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/byte_vector;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/swig/byte_vector;->add(Ljava/lang/Byte;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bytes2byte_vector([BLorg/libtorrent4j/swig/byte_vector;)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 5
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/libtorrent4j/swig/byte_vector;->set(ILjava/lang/Byte;)Ljava/lang/Byte;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static int64_vector2longs(Lorg/libtorrent4j/swig/int64_vector;)[J
    .locals 5

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int64_vector;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/int64_vector;->get(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static int_vector2ints(Lorg/libtorrent4j/swig/int_vector;)[I
    .locals 4

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int_vector;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/int_vector;->get(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static string2byte_vector(Ljava/lang/String;Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static string_vector2list(Lorg/libtorrent4j/swig/string_vector;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/string_vector;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/string_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/string_vector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
