.class public abstract Ldz/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final a:Lorg/apache/commons/compress/archivers/zip/r;

.field static final b:Lorg/apache/commons/compress/archivers/zip/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/s;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/r;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Ldz/d;->a:Lorg/apache/commons/compress/archivers/zip/r;

    .line 7
    .line 8
    new-instance v0, Ldz/d$a;

    .line 9
    .line 10
    invoke-direct {v0}, Ldz/d$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ldz/d;->b:Lorg/apache/commons/compress/archivers/zip/r;

    .line 14
    .line 15
    return-void
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    const-string p0, "\u0000"

    .line 7
    .line 8
    const-string v1, "{NUL}"

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Invalid byte "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p4, " at offset "

    .line 28
    .line 29
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sub-int/2addr p3, p1

    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " in \'"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, "\' len="

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method private static b([BIIZ)J
    .locals 4

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    add-int/lit8 v2, p1, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/math/BigInteger;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x3f

    .line 37
    .line 38
    if-gt v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    neg-long p0, p0

    .line 47
    :cond_1
    return-wide p0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance p3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "At offset "

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ", "

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " byte binary number exceeds maximum signed long value"

    .line 72
    .line 73
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method private static c([BIIZ)J
    .locals 7

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-ge p2, v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    move v3, v0

    .line 9
    :goto_0
    if-ge v3, p2, :cond_0

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    shl-long/2addr v1, v4

    .line 14
    add-int v4, p1, v3

    .line 15
    .line 16
    aget-byte v4, p0, v4

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    int-to-long v4, v4

    .line 21
    add-long/2addr v1, v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p3, :cond_1

    .line 26
    .line 27
    const-wide/16 p0, 0x1

    .line 28
    .line 29
    sub-long/2addr v1, p0

    .line 30
    sub-int/2addr p2, v0

    .line 31
    int-to-double v3, p2

    .line 32
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    .line 33
    .line 34
    mul-double/2addr v3, v5

    .line 35
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 36
    .line 37
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    double-to-long v3, v3

    .line 42
    sub-long/2addr v3, p0

    .line 43
    xor-long/2addr v1, v3

    .line 44
    :cond_1
    if-eqz p3, :cond_2

    .line 45
    .line 46
    neg-long v1, v1

    .line 47
    :cond_2
    return-wide v1

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance p3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "At offset "

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ", "

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " byte binary number exceeds maximum signed long value"

    .line 72
    .line 73
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static d([BI)Z
    .locals 0

    .line 1
    aget-byte p0, p0, p1

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public static e([BII)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ldz/d;->a:Lorg/apache/commons/compress/archivers/zip/r;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    :try_start_1
    sget-object v0, Ldz/d;->b:Lorg/apache/commons/compress/archivers/zip/r;

    .line 9
    .line 10
    invoke-static {p0, p1, p2, v0}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    return-object p0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, p1

    .line 3
    move v1, v0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_0

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-lez v1, :cond_1

    .line 16
    .line 17
    new-array p2, v1, [B

    .line 18
    .line 19
    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/r;->a([B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string p0, ""

    .line 28
    .line 29
    return-object p0
.end method

.method public static g([BII)J
    .locals 7

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt p2, v1, :cond_6

    .line 5
    .line 6
    aget-byte v1, p0, p1

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-wide v2

    .line 13
    :cond_0
    move v1, p1

    .line 14
    :goto_0
    const/16 v4, 0x20

    .line 15
    .line 16
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    aget-byte v5, p0, v1

    .line 19
    .line 20
    if-ne v5, v4, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 26
    .line 27
    aget-byte v5, p0, v5

    .line 28
    .line 29
    :goto_1
    if-ge v1, v0, :cond_3

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    if-ne v5, v4, :cond_3

    .line 34
    .line 35
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x2

    .line 38
    .line 39
    aget-byte v0, p0, v0

    .line 40
    .line 41
    move v6, v5

    .line 42
    move v5, v0

    .line 43
    move v0, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 46
    .line 47
    aget-byte v4, p0, v1

    .line 48
    .line 49
    const/16 v5, 0x30

    .line 50
    .line 51
    if-lt v4, v5, :cond_4

    .line 52
    .line 53
    const/16 v5, 0x37

    .line 54
    .line 55
    if-gt v4, v5, :cond_4

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    shl-long/2addr v2, v5

    .line 59
    add-int/lit8 v4, v4, -0x30

    .line 60
    .line 61
    int-to-long v4, v4

    .line 62
    add-long/2addr v2, v4

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-static {p0, p1, p2, v1, v4}, Ldz/d;->a([BIIIB)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_5
    return-wide v2

    .line 77
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "Length "

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, " must be at least 2"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public static h([BII)J
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Ldz/d;->g([BII)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    const/16 v1, 0x9

    .line 19
    .line 20
    if-ge p2, v1, :cond_2

    .line 21
    .line 22
    invoke-static {p0, p1, p2, v0}, Ldz/d;->c([BIIZ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_2
    invoke-static {p0, p1, p2, v0}, Ldz/d;->b([BIIZ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    return-wide p0
.end method

.method public static i([B)Z
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x94

    .line 4
    .line 5
    invoke-static {p0, v1, v0}, Ldz/d;->g([BII)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v8, v0

    .line 13
    move-wide v6, v4

    .line 14
    :goto_0
    array-length v9, p0

    .line 15
    if-ge v8, v9, :cond_1

    .line 16
    .line 17
    aget-byte v9, p0, v8

    .line 18
    .line 19
    if-gt v1, v8, :cond_0

    .line 20
    .line 21
    const/16 v10, 0x9c

    .line 22
    .line 23
    if-ge v8, v10, :cond_0

    .line 24
    .line 25
    const/16 v9, 0x20

    .line 26
    .line 27
    :cond_0
    and-int/lit16 v10, v9, 0xff

    .line 28
    .line 29
    int-to-long v10, v10

    .line 30
    add-long/2addr v4, v10

    .line 31
    int-to-long v9, v9

    .line 32
    add-long/2addr v6, v9

    .line 33
    add-int/lit8 v8, v8, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    cmp-long p0, v2, v4

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    cmp-long p0, v2, v6

    .line 41
    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    :cond_3
    return v0
.end method
