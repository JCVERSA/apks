.class public final Lcom/google/zxing/datamatrix/decoder/c;
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
    sget-object v1, Lmd/a;->m:Lmd/a;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lmd/c;-><init>(Lmd/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/c;->a:Lmd/c;

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
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/c;->a:Lmd/c;

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


# virtual methods
.method public b(Lkd/b;)Lkd/d;
    .locals 10

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/a;-><init>(Lkd/b;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/a;->b()Lcom/google/zxing/datamatrix/decoder/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/a;->c()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/zxing/datamatrix/decoder/b;->b([BLcom/google/zxing/datamatrix/decoder/d;)[Lcom/google/zxing/datamatrix/decoder/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v0, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    aget-object v4, p1, v2

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/b;->c()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v3, v4

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-array v0, v3, [B

    .line 35
    .line 36
    array-length v2, p1

    .line 37
    move v3, v1

    .line 38
    move v4, v3

    .line 39
    :goto_1
    if-ge v3, v2, :cond_2

    .line 40
    .line 41
    aget-object v5, p1, v3

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/b;->a()[B

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/b;->c()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/c;->a([BI)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    add-int/2addr v4, v7

    .line 56
    move v7, v1

    .line 57
    :goto_2
    if-ge v7, v5, :cond_1

    .line 58
    .line 59
    mul-int v8, v7, v2

    .line 60
    .line 61
    add-int/2addr v8, v3

    .line 62
    aget-byte v9, v6, v7

    .line 63
    .line 64
    aput-byte v9, v0, v8

    .line 65
    .line 66
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->a([B)Lkd/d;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lkd/d;->n(Ljava/lang/Integer;)V

    .line 81
    .line 82
    .line 83
    return-object p1
.end method
