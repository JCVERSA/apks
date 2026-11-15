.class abstract Lyd/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyd/e$b;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x80

    .line 3
    .line 4
    const/16 v2, 0x1e

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    new-array v4, v2, [B

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v4, Lyd/e;->a:[B

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    sput-object v2, Lyd/e;->b:[B

    .line 20
    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    sput-object v2, Lyd/e;->c:[B

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    sput-object v1, Lyd/e;->d:[B

    .line 28
    .line 29
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    sput-object v1, Lyd/e;->e:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 34
    .line 35
    .line 36
    move v1, v3

    .line 37
    :goto_0
    sget-object v2, Lyd/e;->a:[B

    .line 38
    .line 39
    array-length v4, v2

    .line 40
    if-ge v1, v4, :cond_1

    .line 41
    .line 42
    aget-byte v2, v2, v1

    .line 43
    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    sget-object v4, Lyd/e;->c:[B

    .line 47
    .line 48
    int-to-byte v5, v1

    .line 49
    aput-byte v5, v4, v2

    .line 50
    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v1, Lyd/e;->d:[B

    .line 55
    .line 56
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 57
    .line 58
    .line 59
    :goto_1
    sget-object v0, Lyd/e;->b:[B

    .line 60
    .line 61
    array-length v1, v0

    .line 62
    if-ge v3, v1, :cond_3

    .line 63
    .line 64
    aget-byte v0, v0, v3

    .line 65
    .line 66
    if-lez v0, :cond_2

    .line 67
    .line 68
    sget-object v1, Lyd/e;->d:[B

    .line 69
    .line 70
    int-to-byte v2, v3

    .line 71
    aput-byte v2, v1, v0

    .line 72
    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-void

    .line 77
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    nop

    .line 97
    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private static a(Lkd/h;ILjava/nio/charset/Charset;)I
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-interface {p0}, Lkd/h;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    move v1, p1

    .line 14
    :goto_1
    if-ge v1, v0, :cond_6

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v1

    .line 18
    :cond_1
    const/16 v4, 0xd

    .line 19
    .line 20
    if-ge v2, v4, :cond_2

    .line 21
    .line 22
    invoke-interface {p0, v3}, Lkd/h;->a(I)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    invoke-interface {p0, v3}, Lkd/h;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lyd/e;->l(C)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    add-int v3, v1, v2

    .line 41
    .line 42
    if-lt v3, v0, :cond_1

    .line 43
    .line 44
    :cond_2
    if-lt v2, v4, :cond_3

    .line 45
    .line 46
    sub-int/2addr v1, p1

    .line 47
    return v1

    .line 48
    :cond_3
    if-eqz p2, :cond_5

    .line 49
    .line 50
    invoke-interface {p0, v1}, Lkd/h;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-interface {p0, v1}, Lkd/h;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "Non-encodable character detected: "

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, " (Unicode: "

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 p0, 0x29

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    sub-int/2addr v1, p1

    .line 105
    return v1
.end method

.method private static b(Lkd/h;I)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lkd/h;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    :goto_0
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkd/h;->a(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lkd/h;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Lyd/e;->l(C)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v1
.end method

.method private static c(Lkd/h;I)I
    .locals 5

    .line 1
    invoke-interface {p0}, Lkd/h;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move v1, p1

    .line 6
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_1
    const/16 v3, 0xd

    .line 10
    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, v1}, Lkd/h;->a(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-interface {p0, v1}, Lkd/h;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Lyd/e;->l(C)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    if-lt v2, v3, :cond_1

    .line 37
    .line 38
    sub-int/2addr v1, p1

    .line 39
    sub-int/2addr v1, v2

    .line 40
    return v1

    .line 41
    :cond_1
    if-lez v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p0, v1}, Lkd/h;->a(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-interface {p0, v1}, Lkd/h;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Lyd/e;->o(C)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    :goto_2
    sub-int/2addr v1, p1

    .line 65
    return v1
.end method

.method private static d([BIIILjava/lang/StringBuilder;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const/16 p3, 0x391

    .line 7
    .line 8
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    rem-int/lit8 p3, p2, 0x6

    .line 13
    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    const/16 p3, 0x39c

    .line 17
    .line 18
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 p3, 0x385

    .line 23
    .line 24
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 p3, 0x6

    .line 28
    if-lt p2, p3, :cond_5

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    new-array v1, v0, [C

    .line 32
    .line 33
    move v2, p1

    .line 34
    :goto_1
    add-int v3, p1, p2

    .line 35
    .line 36
    sub-int/2addr v3, v2

    .line 37
    if-lt v3, p3, :cond_6

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    move v6, v3

    .line 43
    :goto_2
    if-ge v6, p3, :cond_2

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    shl-long/2addr v4, v7

    .line 48
    add-int v7, v2, v6

    .line 49
    .line 50
    aget-byte v7, p0, v7

    .line 51
    .line 52
    and-int/lit16 v7, v7, 0xff

    .line 53
    .line 54
    int-to-long v7, v7

    .line 55
    add-long/2addr v4, v7

    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_3
    if-ge v3, v0, :cond_3

    .line 60
    .line 61
    const-wide/16 v6, 0x384

    .line 62
    .line 63
    rem-long v8, v4, v6

    .line 64
    .line 65
    long-to-int v8, v8

    .line 66
    int-to-char v8, v8

    .line 67
    aput-char v8, v1, v3

    .line 68
    .line 69
    div-long/2addr v4, v6

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/4 v3, 0x4

    .line 74
    :goto_4
    if-ltz v3, :cond_4

    .line 75
    .line 76
    aget-char v4, v1, v3

    .line 77
    .line 78
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v3, -0x1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move v2, p1

    .line 88
    :cond_6
    :goto_5
    add-int p3, p1, p2

    .line 89
    .line 90
    if-ge v2, p3, :cond_7

    .line 91
    .line 92
    aget-byte p3, p0, v2

    .line 93
    .line 94
    and-int/lit16 p3, p3, 0xff

    .line 95
    .line 96
    int-to-char p3, p3

    .line 97
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    return-void
.end method

.method static e(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0xff

    .line 24
    .line 25
    if-gt v2, v3, :cond_0

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p3, "Non-encodable character detected: "

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p3, " (Unicode: "

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET."

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz p3, :cond_2

    .line 85
    .line 86
    new-instance v3, Lkd/m;

    .line 87
    .line 88
    const/4 v4, -0x1

    .line 89
    invoke-direct {v3, p0, p2, v4}, Lkd/m;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance v3, Lyd/e$b;

    .line 94
    .line 95
    invoke-direct {v3, p0, v2}, Lyd/e$b;-><init>(Ljava/lang/String;Lyd/e$a;)V

    .line 96
    .line 97
    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    sget-object p2, Lyd/e;->e:Ljava/nio/charset/Charset;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    sget-object p0, Lyd/e;->e:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_4

    .line 110
    .line 111
    invoke-static {p2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-static {p0, v1}, Lyd/e;->i(ILjava/lang/StringBuilder;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_1
    invoke-interface {v3}, Lkd/h;->length()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    sget-object v4, Lyd/e$a;->a:[I

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    aget p1, v4, p1

    .line 135
    .line 136
    const/4 v4, 0x1

    .line 137
    if-eq p1, v4, :cond_16

    .line 138
    .line 139
    const/4 v5, 0x2

    .line 140
    if-eq p1, v5, :cond_14

    .line 141
    .line 142
    const/4 v6, 0x3

    .line 143
    const/16 v7, 0x386

    .line 144
    .line 145
    if-eq p1, v6, :cond_13

    .line 146
    .line 147
    move p1, v0

    .line 148
    move v6, p1

    .line 149
    move v8, v6

    .line 150
    :goto_2
    if-ge p1, p0, :cond_17

    .line 151
    .line 152
    :goto_3
    if-ge p1, p0, :cond_5

    .line 153
    .line 154
    invoke-interface {v3, p1}, Lkd/h;->a(I)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_5

    .line 159
    .line 160
    invoke-interface {v3, p1}, Lkd/h;->b(I)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-static {v9, v1}, Lyd/e;->i(ILjava/lang/StringBuilder;)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 p1, p1, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    if-lt p1, p0, :cond_6

    .line 171
    .line 172
    goto/16 :goto_9

    .line 173
    .line 174
    :cond_6
    invoke-static {v3, p1}, Lyd/e;->b(Lkd/h;I)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    const/16 v10, 0xd

    .line 179
    .line 180
    if-lt v9, v10, :cond_7

    .line 181
    .line 182
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-static {v3, p1, v9, v1}, Lyd/e;->g(Lkd/h;IILjava/lang/StringBuilder;)V

    .line 186
    .line 187
    .line 188
    add-int/2addr p1, v9

    .line 189
    move v6, v0

    .line 190
    move v8, v5

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    invoke-static {v3, p1}, Lyd/e;->c(Lkd/h;I)I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    const/4 v11, 0x5

    .line 197
    if-ge v10, v11, :cond_11

    .line 198
    .line 199
    if-ne v9, p0, :cond_8

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_8
    if-eqz p3, :cond_9

    .line 203
    .line 204
    move-object v9, v2

    .line 205
    goto :goto_4

    .line 206
    :cond_9
    move-object v9, p2

    .line 207
    :goto_4
    invoke-static {v3, p1, v9}, Lyd/e;->a(Lkd/h;ILjava/nio/charset/Charset;)I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-nez v9, :cond_a

    .line 212
    .line 213
    move v9, v4

    .line 214
    :cond_a
    if-eqz p3, :cond_b

    .line 215
    .line 216
    move-object v10, v2

    .line 217
    goto :goto_5

    .line 218
    :cond_b
    add-int v10, p1, v9

    .line 219
    .line 220
    invoke-interface {v3, p1, v10}, Lkd/h;->subSequence(II)Ljava/lang/CharSequence;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-virtual {v10, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    :goto_5
    if-nez v10, :cond_c

    .line 233
    .line 234
    if-eq v9, v4, :cond_d

    .line 235
    .line 236
    :cond_c
    if-eqz v10, :cond_f

    .line 237
    .line 238
    array-length v11, v10

    .line 239
    if-ne v11, v4, :cond_f

    .line 240
    .line 241
    :cond_d
    if-nez v8, :cond_f

    .line 242
    .line 243
    if-eqz p3, :cond_e

    .line 244
    .line 245
    invoke-static {v3, p1, v4, v0, v1}, Lyd/e;->f(Lkd/h;IIILjava/lang/StringBuilder;)V

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_e
    invoke-static {v10, v0, v4, v0, v1}, Lyd/e;->d([BIIILjava/lang/StringBuilder;)V

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_f
    if-eqz p3, :cond_10

    .line 254
    .line 255
    add-int v6, p1, v9

    .line 256
    .line 257
    invoke-static {v3, p1, v6, v8, v1}, Lyd/e;->f(Lkd/h;IIILjava/lang/StringBuilder;)V

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_10
    array-length v6, v10

    .line 262
    invoke-static {v10, v0, v6, v8, v1}, Lyd/e;->d([BIIILjava/lang/StringBuilder;)V

    .line 263
    .line 264
    .line 265
    :goto_6
    move v6, v0

    .line 266
    move v8, v4

    .line 267
    :goto_7
    add-int/2addr p1, v9

    .line 268
    goto :goto_2

    .line 269
    :cond_11
    :goto_8
    if-eqz v8, :cond_12

    .line 270
    .line 271
    const/16 v6, 0x384

    .line 272
    .line 273
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    move v6, v0

    .line 277
    move v8, v6

    .line 278
    :cond_12
    invoke-static {v3, p1, v10, v1, v6}, Lyd/e;->h(Lkd/h;IILjava/lang/StringBuilder;I)I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    add-int/2addr p1, v10

    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :cond_13
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-static {v3, v0, p0, v1}, Lyd/e;->g(Lkd/h;IILjava/lang/StringBuilder;)V

    .line 289
    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_14
    if-eqz p3, :cond_15

    .line 293
    .line 294
    invoke-interface {v3}, Lkd/h;->length()I

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    invoke-static {v3, v0, p0, v0, v1}, Lyd/e;->f(Lkd/h;IIILjava/lang/StringBuilder;)V

    .line 299
    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    array-length p1, p0

    .line 311
    invoke-static {p0, v0, p1, v4, v1}, Lyd/e;->d([BIIILjava/lang/StringBuilder;)V

    .line 312
    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_16
    invoke-static {v3, v0, p0, v1, v0}, Lyd/e;->h(Lkd/h;IILjava/lang/StringBuilder;I)I

    .line 316
    .line 317
    .line 318
    :cond_17
    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :cond_18
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 324
    .line 325
    const-string p1, "Empty message not allowed"

    .line 326
    .line 327
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p0
.end method

.method private static f(Lkd/h;IIILjava/lang/StringBuilder;)V
    .locals 5

    .line 1
    add-int/2addr p2, p1

    .line 2
    invoke-interface {p0}, Lkd/h;->length()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    move v0, p1

    .line 11
    :goto_0
    if-ge v0, p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lkd/h;->a(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lkd/h;->b(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1, p4}, Lyd/e;->i(ILjava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v0

    .line 30
    :goto_1
    if-ge v1, p2, :cond_1

    .line 31
    .line 32
    invoke-interface {p0, v1}, Lkd/h;->a(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-int v2, v1, v0

    .line 42
    .line 43
    if-gtz v2, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-static {p0, v0, v1}, Lyd/e;->p(Lkd/h;II)[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-ne v0, p1, :cond_3

    .line 51
    .line 52
    move v0, p3

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v0, 0x1

    .line 55
    :goto_2
    const/4 v4, 0x0

    .line 56
    invoke-static {v3, v4, v2, v0, p4}, Lyd/e;->d([BIIILjava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private static g(Lkd/h;IILjava/lang/StringBuilder;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    div-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x384

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 27
    .line 28
    .line 29
    const/16 v5, 0x2c

    .line 30
    .line 31
    sub-int v6, p2, v4

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v7, "1"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int v7, p1, v4

    .line 48
    .line 49
    add-int v8, v7, v5

    .line 50
    .line 51
    invoke-interface {p0, v7, v8}, Lkd/h;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    new-instance v7, Ljava/math/BigInteger;

    .line 63
    .line 64
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    int-to-char v6, v6

    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_0

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    add-int/lit8 v6, v6, -0x1

    .line 94
    .line 95
    :goto_1
    if-ltz v6, :cond_1

    .line 96
    .line 97
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    add-int/lit8 v6, v6, -0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    add-int/2addr v4, v5

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method private static h(Lkd/h;IILjava/lang/StringBuilder;I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move/from16 v5, p4

    .line 14
    .line 15
    move v6, v4

    .line 16
    :cond_0
    :goto_0
    add-int v7, p1, v6

    .line 17
    .line 18
    invoke-interface {v0, v7}, Lkd/h;->a(I)Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v7}, Lkd/h;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-static {v7, v2}, Lyd/e;->i(ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v0, v7}, Lkd/h;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    const/16 v9, 0x1a

    .line 39
    .line 40
    const/16 v10, 0x20

    .line 41
    .line 42
    const/16 v11, 0x1b

    .line 43
    .line 44
    const/16 v12, 0x1c

    .line 45
    .line 46
    const/16 v13, 0x1d

    .line 47
    .line 48
    const/4 v14, 0x2

    .line 49
    const/4 v15, 0x1

    .line 50
    if-eqz v5, :cond_d

    .line 51
    .line 52
    if-eq v5, v15, :cond_8

    .line 53
    .line 54
    if-eq v5, v14, :cond_3

    .line 55
    .line 56
    invoke-static {v8}, Lyd/e;->n(C)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    sget-object v7, Lyd/e;->d:[B

    .line 63
    .line 64
    aget-byte v7, v7, v8

    .line 65
    .line 66
    int-to-char v7, v7

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :goto_1
    move v5, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {v8}, Lyd/e;->m(C)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    sget-object v7, Lyd/e;->c:[B

    .line 84
    .line 85
    aget-byte v7, v7, v8

    .line 86
    .line 87
    int-to-char v7, v7

    .line 88
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_4
    invoke-static {v8}, Lyd/e;->k(C)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-static {v8}, Lyd/e;->j(C)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_6

    .line 108
    .line 109
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :goto_2
    move v5, v15

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    if-ge v7, v1, :cond_7

    .line 117
    .line 118
    invoke-interface {v0, v7}, Lkd/h;->a(I)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-nez v9, :cond_7

    .line 123
    .line 124
    invoke-interface {v0, v7}, Lkd/h;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-static {v7}, Lyd/e;->n(C)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_7

    .line 133
    .line 134
    const/16 v5, 0x19

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const/4 v5, 0x3

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    sget-object v7, Lyd/e;->d:[B

    .line 145
    .line 146
    aget-byte v7, v7, v8

    .line 147
    .line 148
    int-to-char v7, v7

    .line 149
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_8
    invoke-static {v8}, Lyd/e;->j(C)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_a

    .line 159
    .line 160
    if-ne v8, v10, :cond_9

    .line 161
    .line 162
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    add-int/lit8 v8, v8, -0x61

    .line 167
    .line 168
    int-to-char v7, v8

    .line 169
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_a
    invoke-static {v8}, Lyd/e;->k(C)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_b

    .line 178
    .line 179
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    add-int/lit8 v8, v8, -0x41

    .line 183
    .line 184
    int-to-char v7, v8

    .line 185
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_b
    invoke-static {v8}, Lyd/e;->m(C)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eqz v7, :cond_c

    .line 194
    .line 195
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :goto_3
    move v5, v14

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_c
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    sget-object v7, Lyd/e;->d:[B

    .line 205
    .line 206
    aget-byte v7, v7, v8

    .line 207
    .line 208
    int-to-char v7, v7

    .line 209
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_d
    invoke-static {v8}, Lyd/e;->k(C)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_f

    .line 218
    .line 219
    if-ne v8, v10, :cond_e

    .line 220
    .line 221
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_e
    add-int/lit8 v8, v8, -0x41

    .line 226
    .line 227
    int-to-char v7, v8

    .line 228
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_f
    invoke-static {v8}, Lyd/e;->j(C)Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-eqz v7, :cond_10

    .line 237
    .line 238
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_10
    invoke-static {v8}, Lyd/e;->m(C)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_11

    .line 248
    .line 249
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_11
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    sget-object v7, Lyd/e;->d:[B

    .line 257
    .line 258
    aget-byte v7, v7, v8

    .line 259
    .line 260
    int-to-char v7, v7

    .line 261
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 265
    .line 266
    if-lt v6, v1, :cond_0

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    move v1, v4

    .line 273
    :goto_5
    if-ge v4, v0, :cond_13

    .line 274
    .line 275
    rem-int/lit8 v6, v4, 0x2

    .line 276
    .line 277
    if-eqz v6, :cond_12

    .line 278
    .line 279
    mul-int/lit8 v1, v1, 0x1e

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    add-int/2addr v1, v6

    .line 286
    int-to-char v1, v1

    .line 287
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_13
    rem-int/2addr v0, v14

    .line 299
    if-eqz v0, :cond_14

    .line 300
    .line 301
    mul-int/lit8 v1, v1, 0x1e

    .line 302
    .line 303
    add-int/2addr v1, v13

    .line 304
    int-to-char v0, v1

    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    :cond_14
    return v5
.end method

.method private static i(ILjava/lang/StringBuilder;)V
    .locals 2

    .line 1
    const/16 v0, 0x384

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x39f

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    int-to-char p0, p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v1, 0xc5f94

    .line 18
    .line 19
    .line 20
    if-ge p0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x39e

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    div-int/lit16 v1, p0, 0x384

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    int-to-char v1, v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    rem-int/2addr p0, v0

    .line 36
    int-to-char p0, p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const v0, 0xc6318

    .line 42
    .line 43
    .line 44
    if-ge p0, v0, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x39d

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sub-int/2addr v1, p0

    .line 52
    int-to-char p0, v1

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_2
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "ECI number not in valid range from 0..811799, but was "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method private static j(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x61

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x7a

    .line 10
    .line 11
    if-gt p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private static k(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x41

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x5a

    .line 10
    .line 11
    if-gt p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private static l(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private static m(C)Z
    .locals 1

    .line 1
    sget-object v0, Lyd/e;->c:[B

    .line 2
    .line 3
    aget-byte p0, v0, p0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method private static n(C)Z
    .locals 1

    .line 1
    sget-object v0, Lyd/e;->d:[B

    .line 2
    .line 3
    aget-byte p0, v0, p0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method private static o(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-lt p0, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x7e

    .line 18
    .line 19
    if-gt p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method static p(Lkd/h;II)[B
    .locals 4

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    move v1, p1

    .line 6
    :goto_0
    if-ge v1, p2, :cond_0

    .line 7
    .line 8
    sub-int v2, v1, p1

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lkd/h;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, v0, v2

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method
