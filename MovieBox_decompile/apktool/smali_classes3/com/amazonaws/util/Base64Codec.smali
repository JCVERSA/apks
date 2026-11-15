.class Lcom/amazonaws/util/Base64Codec;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base64Codec$LazyHolder;
    }
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a([BI)[B
    .locals 7

    .line 1
    rem-int/lit8 v0, p2, 0x4

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    add-int/lit8 v0, p2, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x2

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    if-le v0, v4, :cond_1

    .line 14
    .line 15
    aget-byte v4, p1, v0

    .line 16
    .line 17
    const/16 v5, 0x3d

    .line 18
    .line 19
    if-eq v4, v5, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    const/4 v0, 0x3

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq v2, v4, :cond_4

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    move v3, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/Error;

    .line 38
    .line 39
    const-string p2, "Impossible"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_3
    move v3, v0

    .line 46
    :cond_4
    :goto_2
    div-int/lit8 p2, p2, 0x4

    .line 47
    .line 48
    mul-int/2addr p2, v0

    .line 49
    rsub-int/lit8 v2, v3, 0x3

    .line 50
    .line 51
    sub-int/2addr p2, v2

    .line 52
    new-array v6, p2, [B

    .line 53
    .line 54
    move v4, v1

    .line 55
    move v5, v4

    .line 56
    :goto_3
    rem-int/lit8 v1, v3, 0x3

    .line 57
    .line 58
    sub-int v1, p2, v1

    .line 59
    .line 60
    if-ge v5, v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, p1, v4, v6, v5}, Lcom/amazonaws/util/Base64Codec;->c([BI[BI)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x4

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    if-ge v3, v0, :cond_6

    .line 71
    .line 72
    move-object v0, p0

    .line 73
    move v1, v3

    .line 74
    move-object v2, p1

    .line 75
    move v3, v4

    .line 76
    move-object v4, v6

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/util/Base64Codec;->b(I[BI[BI)V

    .line 78
    .line 79
    .line 80
    :cond_6
    return-object v6

    .line 81
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "Input is expected to be encoded in multiple of 4 bytes but found: "

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method b(I[BI[BI)V
    .locals 7

    .line 1
    add-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    add-int/lit8 v1, p3, 0x1

    .line 4
    .line 5
    aget-byte v2, p2, p3

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    shl-int/2addr v2, v3

    .line 13
    add-int/lit8 v4, p3, 0x2

    .line 14
    .line 15
    aget-byte v1, p2, v1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    ushr-int/lit8 v5, v1, 0x4

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    and-int/2addr v5, v6

    .line 25
    or-int/2addr v2, v5

    .line 26
    int-to-byte v2, v2

    .line 27
    aput-byte v2, p4, p5

    .line 28
    .line 29
    const/16 v2, 0xf

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-ne p1, v5, :cond_0

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    add-int/2addr p5, v3

    .line 39
    and-int/2addr v1, v2

    .line 40
    shl-int/lit8 v1, v1, 0x4

    .line 41
    .line 42
    add-int/2addr p3, v6

    .line 43
    aget-byte v4, p2, v4

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    ushr-int/lit8 v5, v4, 0x2

    .line 50
    .line 51
    and-int/2addr v2, v5

    .line 52
    or-int/2addr v1, v2

    .line 53
    int-to-byte v1, v1

    .line 54
    aput-byte v1, p4, v0

    .line 55
    .line 56
    if-ne p1, v3, :cond_1

    .line 57
    .line 58
    invoke-static {v4, v6}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    and-int/lit8 p1, v4, 0x3

    .line 63
    .line 64
    shl-int/lit8 p1, p1, 0x6

    .line 65
    .line 66
    aget-byte p2, p2, p3

    .line 67
    .line 68
    invoke-virtual {p0, p2}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    or-int/2addr p1, p2

    .line 73
    int-to-byte p1, p1

    .line 74
    aput-byte p1, p4, p5

    .line 75
    .line 76
    return-void
.end method

.method c([BI[BI)V
    .locals 5

    .line 1
    add-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    aget-byte v2, p1, p2

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    shl-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    add-int/lit8 v3, p2, 0x2

    .line 14
    .line 15
    aget-byte v1, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    ushr-int/lit8 v4, v1, 0x4

    .line 22
    .line 23
    and-int/lit8 v4, v4, 0x3

    .line 24
    .line 25
    or-int/2addr v2, v4

    .line 26
    int-to-byte v2, v2

    .line 27
    aput-byte v2, p3, p4

    .line 28
    .line 29
    add-int/lit8 p4, p4, 0x2

    .line 30
    .line 31
    and-int/lit8 v1, v1, 0xf

    .line 32
    .line 33
    shl-int/lit8 v1, v1, 0x4

    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x3

    .line 36
    .line 37
    aget-byte v2, p1, v3

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    ushr-int/lit8 v3, v2, 0x2

    .line 44
    .line 45
    and-int/lit8 v3, v3, 0xf

    .line 46
    .line 47
    or-int/2addr v1, v3

    .line 48
    int-to-byte v1, v1

    .line 49
    aput-byte v1, p3, v0

    .line 50
    .line 51
    and-int/lit8 v0, v2, 0x3

    .line 52
    .line 53
    shl-int/lit8 v0, v0, 0x6

    .line 54
    .line 55
    aget-byte p1, p1, p2

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/Base64Codec;->h(B)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    or-int/2addr p1, v0

    .line 62
    int-to-byte p1, p1

    .line 63
    aput-byte p1, p3, p4

    .line 64
    .line 65
    return-void
.end method

.method public d([B)[B
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    div-int/lit8 v0, v0, 0x3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    rem-int/lit8 v1, v1, 0x3

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    move v1, v2

    .line 15
    :goto_0
    array-length v3, p1

    .line 16
    if-ge v2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/amazonaws/util/Base64Codec;->g([BI[BI)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x3

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v0

    .line 27
    :cond_1
    const/4 v3, 0x1

    .line 28
    add-int/2addr v0, v3

    .line 29
    mul-int/lit8 v0, v0, 0x4

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    move v4, v2

    .line 34
    :goto_1
    array-length v5, p1

    .line 35
    sub-int/2addr v5, v1

    .line 36
    if-ge v2, v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/amazonaws/util/Base64Codec;->g([BI[BI)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x3

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-eq v1, v3, :cond_4

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    if-eq v1, v3, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/amazonaws/util/Base64Codec;->f([BI[BI)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/amazonaws/util/Base64Codec;->e([BI[BI)V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-object v0
.end method

.method e([BI[BI)V
    .locals 2

    .line 1
    add-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    .line 4
    .line 5
    aget-byte p1, p1, p2

    .line 6
    .line 7
    ushr-int/lit8 p2, p1, 0x2

    .line 8
    .line 9
    and-int/lit8 p2, p2, 0x3f

    .line 10
    .line 11
    aget-byte p2, v1, p2

    .line 12
    .line 13
    aput-byte p2, p3, p4

    .line 14
    .line 15
    add-int/lit8 p2, p4, 0x2

    .line 16
    .line 17
    and-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    shl-int/lit8 p1, p1, 0x4

    .line 20
    .line 21
    aget-byte p1, v1, p1

    .line 22
    .line 23
    aput-byte p1, p3, v0

    .line 24
    .line 25
    add-int/lit8 p4, p4, 0x3

    .line 26
    .line 27
    const/16 p1, 0x3d

    .line 28
    .line 29
    aput-byte p1, p3, p2

    .line 30
    .line 31
    aput-byte p1, p3, p4

    .line 32
    .line 33
    return-void
.end method

.method f([BI[BI)V
    .locals 4

    .line 1
    add-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    .line 4
    .line 5
    add-int/lit8 v2, p2, 0x1

    .line 6
    .line 7
    aget-byte p2, p1, p2

    .line 8
    .line 9
    ushr-int/lit8 v3, p2, 0x2

    .line 10
    .line 11
    and-int/lit8 v3, v3, 0x3f

    .line 12
    .line 13
    aget-byte v3, v1, v3

    .line 14
    .line 15
    aput-byte v3, p3, p4

    .line 16
    .line 17
    add-int/lit8 v3, p4, 0x2

    .line 18
    .line 19
    and-int/lit8 p2, p2, 0x3

    .line 20
    .line 21
    shl-int/lit8 p2, p2, 0x4

    .line 22
    .line 23
    aget-byte p1, p1, v2

    .line 24
    .line 25
    ushr-int/lit8 v2, p1, 0x4

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0xf

    .line 28
    .line 29
    or-int/2addr p2, v2

    .line 30
    aget-byte p2, v1, p2

    .line 31
    .line 32
    aput-byte p2, p3, v0

    .line 33
    .line 34
    add-int/lit8 p4, p4, 0x3

    .line 35
    .line 36
    and-int/lit8 p1, p1, 0xf

    .line 37
    .line 38
    shl-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    aget-byte p1, v1, p1

    .line 41
    .line 42
    aput-byte p1, p3, v3

    .line 43
    .line 44
    const/16 p1, 0x3d

    .line 45
    .line 46
    aput-byte p1, p3, p4

    .line 47
    .line 48
    return-void
.end method

.method g([BI[BI)V
    .locals 6

    .line 1
    add-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    .line 4
    .line 5
    add-int/lit8 v2, p2, 0x1

    .line 6
    .line 7
    aget-byte v3, p1, p2

    .line 8
    .line 9
    ushr-int/lit8 v4, v3, 0x2

    .line 10
    .line 11
    and-int/lit8 v4, v4, 0x3f

    .line 12
    .line 13
    aget-byte v4, v1, v4

    .line 14
    .line 15
    aput-byte v4, p3, p4

    .line 16
    .line 17
    add-int/lit8 v4, p4, 0x2

    .line 18
    .line 19
    and-int/lit8 v3, v3, 0x3

    .line 20
    .line 21
    shl-int/lit8 v3, v3, 0x4

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x2

    .line 24
    .line 25
    aget-byte v2, p1, v2

    .line 26
    .line 27
    ushr-int/lit8 v5, v2, 0x4

    .line 28
    .line 29
    and-int/lit8 v5, v5, 0xf

    .line 30
    .line 31
    or-int/2addr v3, v5

    .line 32
    aget-byte v3, v1, v3

    .line 33
    .line 34
    aput-byte v3, p3, v0

    .line 35
    .line 36
    add-int/lit8 p4, p4, 0x3

    .line 37
    .line 38
    and-int/lit8 v0, v2, 0xf

    .line 39
    .line 40
    shl-int/lit8 v0, v0, 0x2

    .line 41
    .line 42
    aget-byte p1, p1, p2

    .line 43
    .line 44
    ushr-int/lit8 p2, p1, 0x6

    .line 45
    .line 46
    and-int/lit8 p2, p2, 0x3

    .line 47
    .line 48
    or-int/2addr p2, v0

    .line 49
    aget-byte p2, v1, p2

    .line 50
    .line 51
    aput-byte p2, p3, v4

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0x3f

    .line 54
    .line 55
    aget-byte p1, v1, p1

    .line 56
    .line 57
    aput-byte p1, p3, p4

    .line 58
    .line 59
    return-void
.end method

.method protected h(B)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/amazonaws/util/Base64Codec$LazyHolder;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    aget-byte v0, v0, p1

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Invalid base 64 character: \'"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    int-to-char p1, p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "\'"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
