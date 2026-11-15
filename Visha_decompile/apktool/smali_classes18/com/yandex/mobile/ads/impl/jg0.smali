.class public final Lcom/yandex/mobile/ads/impl/jg0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x1

    .line 15
    const-string v1, "<this>"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v1, ":"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v5, -0x1

    if-eqz v1, :cond_b

    .line 17
    const-string v1, "["

    invoke-static {p0, v1, v2, v3, v4}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-static {p0, v1, v2, v3, v4}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/jg0;->a(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1, p0}, Lcom/yandex/mobile/ads/impl/jg0;->a(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v4

    .line 20
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 21
    array-length v6, v4

    const/4 v7, 0x4

    const/16 v8, 0x10

    if-ne v6, v8, :cond_9

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    move p0, v2

    move v1, p0

    .line 22
    :goto_1
    array-length v6, v4

    if-ge p0, v6, :cond_4

    move v6, p0

    :goto_2
    if-ge v6, v8, :cond_2

    .line 23
    aget-byte v9, v4, v6

    if-nez v9, :cond_2

    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v4, v9

    if-nez v9, :cond_2

    add-int/2addr v6, v3

    goto :goto_2

    :cond_2
    sub-int v9, v6, p0

    if-le v9, v1, :cond_3

    if-lt v9, v7, :cond_3

    move v5, p0

    move v1, v9

    :cond_3
    add-int/lit8 p0, v6, 0x2

    goto :goto_1

    .line 24
    :cond_4
    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    .line 25
    :cond_5
    :goto_3
    array-length v6, v4

    if-ge v2, v6, :cond_8

    const/16 v6, 0x3a

    if-ne v2, v5, :cond_6

    .line 26
    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/2addr v2, v1

    if-ne v2, v8, :cond_5

    .line 27
    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_3

    :cond_6
    if-lez v2, :cond_7

    .line 28
    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 29
    :cond_7
    aget-byte v6, v4, v2

    sget-object v7, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-long v6, v6

    .line 30
    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    add-int/2addr v2, v3

    goto :goto_3

    .line 31
    :cond_8
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_9
    array-length v0, v4

    if-ne v0, v7, :cond_a

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 34
    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toASCII(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_c

    return-object v4

    .line 36
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_f

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v3, 0x1f

    .line 38
    invoke-static {v7, v3}, Ly45;->l(II)I

    move-result v3

    if-lez v3, :cond_10

    const/16 v3, 0x7f

    invoke-static {v7, v3}, Ly45;->l(II)I

    move-result v3

    if-ltz v3, :cond_d

    goto :goto_5

    .line 39
    :cond_d
    const-string v6, " #%/:?@[\\]"

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lj1a;->l0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v5, :cond_e

    goto :goto_5

    :cond_e
    add-int/2addr v2, v0

    goto :goto_4

    :cond_f
    move-object v4, p0

    :catch_0
    :cond_10
    :goto_5
    return-object v4
.end method

.method private static final a(IILjava/lang/String;)Ljava/net/InetAddress;
    .locals 19

    move/from16 v0, p1

    move-object/from16 v7, p2

    const/16 v8, 0x10

    .line 1
    new-array v9, v8, [B

    const/4 v11, -0x1

    const/4 v13, 0x0

    move/from16 v12, p0

    move v14, v11

    move v15, v14

    :goto_0
    const/16 v16, 0x0

    if-ge v12, v0, :cond_13

    if-ne v13, v8, :cond_0

    return-object v16

    :cond_0
    add-int/lit8 v6, v12, 0x2

    const/16 v5, 0xff

    if-gt v6, v0, :cond_3

    const/16 v17, 0x4

    const/16 v18, 0x0

    .line 2
    const-string v2, "::"

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move v3, v12

    move v10, v5

    move/from16 v5, v17

    move v10, v6

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lg1a;->Q(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq v14, v11, :cond_1

    return-object v16

    :cond_1
    add-int/lit8 v13, v13, 0x2

    if-ne v10, v0, :cond_2

    move v14, v13

    goto/16 :goto_8

    :cond_2
    move v15, v10

    move v14, v13

    goto/16 :goto_5

    :cond_3
    if-eqz v13, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 3
    const-string v2, ":"

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v6}, Lg1a;->Q(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_4
    move v15, v12

    goto/16 :goto_5

    :cond_5
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 4
    const-string v2, "."

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v6}, Lg1a;->Q(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v1, v13, -0x2

    move v2, v1

    :goto_1
    if-ge v15, v0, :cond_e

    if-ne v2, v8, :cond_6

    goto :goto_4

    :cond_6
    if-eq v2, v1, :cond_8

    .line 5
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v15, v15, 0x1

    :cond_8
    move v3, v15

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v0, :cond_c

    .line 6
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 7
    invoke-static {v5, v6}, Ly45;->l(II)I

    move-result v10

    if-ltz v10, :cond_c

    const/16 v10, 0x39

    invoke-static {v5, v10}, Ly45;->l(II)I

    move-result v10

    if-lez v10, :cond_9

    goto :goto_3

    :cond_9
    if-nez v4, :cond_a

    if-eq v15, v3, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    const/16 v5, 0xff

    if-le v4, v5, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    sub-int v5, v3, v15

    if-nez v5, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v5, v2, 0x1

    int-to-byte v4, v4

    .line 8
    aput-byte v4, v9, v2

    move v15, v3

    move v2, v5

    goto :goto_1

    :cond_e
    add-int/lit8 v0, v13, 0x2

    if-ne v2, v0, :cond_f

    add-int/lit8 v13, v13, 0x2

    goto :goto_8

    :cond_f
    :goto_4
    return-object v16

    :goto_5
    move v12, v15

    const/4 v1, 0x0

    :goto_6
    if-ge v12, v0, :cond_10

    .line 9
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/g92;->a(C)I

    move-result v2

    if-eq v2, v11, :cond_10

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    sub-int v2, v12, v15

    if-eqz v2, :cond_12

    const/4 v3, 0x4

    if-le v2, v3, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 v2, v13, 0x1

    ushr-int/lit8 v3, v1, 0x8

    const/16 v4, 0xff

    and-int/2addr v3, v4

    int-to-byte v3, v3

    .line 10
    aput-byte v3, v9, v13

    add-int/lit8 v13, v13, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 11
    aput-byte v1, v9, v2

    goto/16 :goto_0

    :cond_12
    :goto_7
    return-object v16

    :cond_13
    :goto_8
    if-eq v13, v8, :cond_15

    if-ne v14, v11, :cond_14

    return-object v16

    :cond_14
    sub-int v0, v13, v14

    rsub-int/lit8 v1, v0, 0x10

    .line 12
    invoke-static {v9, v14, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v8, v13

    add-int/2addr v8, v14

    const/4 v0, 0x0

    .line 13
    invoke-static {v9, v14, v8, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 14
    :cond_15
    invoke-static {v9}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
