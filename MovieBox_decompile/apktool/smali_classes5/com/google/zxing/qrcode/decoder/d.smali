.class public final Lcom/google/zxing/qrcode/decoder/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lmd/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmd/c;

    .line 5
    .line 6
    sget-object v1, Lmd/a;->l:Lmd/a;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lmd/c;-><init>(Lmd/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/d;->a:Lmd/c;

    .line 12
    .line 13
    return-void
.end method

.method private a([BI)I
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v0, :cond_0

    .line 7
    .line 8
    aget-byte v4, p1, v3

    .line 9
    .line 10
    and-int/lit16 v4, v4, 0xff

    .line 11
    .line 12
    aput v4, v1, v3

    .line 13
    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/d;->a:Lmd/c;

    .line 18
    .line 19
    array-length v3, p1

    .line 20
    sub-int/2addr v3, p2

    .line 21
    invoke-virtual {v0, v1, v3}, Lmd/c;->a([II)I

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_1
    if-ge v2, p2, :cond_1

    .line 26
    .line 27
    aget v3, v1, v2

    .line 28
    .line 29
    int-to-byte v3, v3

    .line 30
    aput-byte v3, p1, v2

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    return v0

    .line 36
    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    throw p1
.end method

.method private b(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lkd/d;
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->e()Lcom/google/zxing/qrcode/decoder/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->d()Lcom/google/zxing/qrcode/decoder/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/e;->d()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->c()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, v0, v1}, Lcom/google/zxing/qrcode/decoder/b;->b([BLcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    array-length v2, p1

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v4, v2, :cond_0

    .line 26
    .line 27
    aget-object v6, p1, v4

    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/b;->c()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    add-int/2addr v5, v6

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-array v2, v5, [B

    .line 38
    .line 39
    array-length v4, p1

    .line 40
    move v5, v3

    .line 41
    move v6, v5

    .line 42
    move v7, v6

    .line 43
    :goto_1
    if-ge v5, v4, :cond_2

    .line 44
    .line 45
    aget-object v8, p1, v5

    .line 46
    .line 47
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/b;->a()[B

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/b;->c()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-direct {p0, v9, v8}, Lcom/google/zxing/qrcode/decoder/d;->a([BI)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    add-int/2addr v6, v10

    .line 60
    move v10, v3

    .line 61
    :goto_2
    if-ge v10, v8, :cond_1

    .line 62
    .line 63
    add-int/lit8 v11, v7, 0x1

    .line 64
    .line 65
    aget-byte v12, v9, v10

    .line 66
    .line 67
    aput-byte v12, v2, v7

    .line 68
    .line 69
    add-int/lit8 v10, v10, 0x1

    .line 70
    .line 71
    move v7, v11

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/c;->a([BLcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lkd/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Lkd/d;->n(Ljava/lang/Integer;)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method


# virtual methods
.method public c(Lkd/b;Ljava/util/Map;)Lkd/d;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/decoder/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/a;-><init>(Lkd/b;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/d;->b(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lkd/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v1

    .line 15
    move-object v3, v1

    .line 16
    move-object v1, p1

    .line 17
    move-object p1, v3

    .line 18
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->f()V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/decoder/a;->g(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->e()Lcom/google/zxing/qrcode/decoder/g;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->d()Lcom/google/zxing/qrcode/decoder/e;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->b()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/d;->b(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lkd/d;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v0, Lcom/google/zxing/qrcode/decoder/f;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/google/zxing/qrcode/decoder/f;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Lkd/d;->p(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :catch_2
    if-eqz p1, :cond_0

    .line 48
    .line 49
    throw p1

    .line 50
    :cond_0
    throw v1
.end method
