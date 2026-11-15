.class public abstract Lcom/google/zxing/qrcode/encoder/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[I

.field static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/zxing/qrcode/encoder/b;->a:[I

    .line 9
    .line 10
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    sput-object v0, Lcom/google/zxing/qrcode/encoder/b;->b:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(Ljava/lang/String;Lkd/a;Ljava/nio/charset/Charset;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p2, p0

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-ge v0, p2, :cond_0

    .line 8
    .line 9
    aget-byte v1, p0, v0

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Lkd/a;->c(II)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method static b(Ljava/lang/CharSequence;Lkd/a;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/b;->p(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    add-int/lit8 v4, v1, 0x1

    .line 20
    .line 21
    if-ge v4, v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/b;->p(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eq v4, v3, :cond_0

    .line 32
    .line 33
    mul-int/lit8 v2, v2, 0x2d

    .line 34
    .line 35
    add-int/2addr v2, v4

    .line 36
    const/16 v3, 0xb

    .line 37
    .line 38
    invoke-virtual {p1, v2, v3}, Lkd/a;->c(II)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    const/4 v1, 0x6

    .line 51
    invoke-virtual {p1, v2, v1}, Lkd/a;->c(II)V

    .line 52
    .line 53
    .line 54
    move v1, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    return-void
.end method

.method static c(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/b$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x4

    .line 19
    if-ne v0, p3, :cond_0

    .line 20
    .line 21
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/b;->e(Ljava/lang/String;Lkd/a;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p3, "Invalid mode: "

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/b;->a(Ljava/lang/String;Lkd/a;Ljava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/b;->b(Ljava/lang/CharSequence;Lkd/a;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/b;->h(Ljava/lang/CharSequence;Lkd/a;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method private static d(Lcom/google/zxing/common/CharacterSetECI;Lkd/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v0, v1}, Lkd/a;->c(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, p0, v0}, Lkd/a;->c(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static e(Ljava/lang/String;Lkd/a;)V
    .locals 6

    .line 1
    sget-object v0, Lkd/o;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    rem-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    array-length v0, p0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_3

    .line 17
    .line 18
    aget-byte v2, p0, v1

    .line 19
    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    aget-byte v3, p0, v3

    .line 25
    .line 26
    and-int/lit16 v3, v3, 0xff

    .line 27
    .line 28
    shl-int/lit8 v2, v2, 0x8

    .line 29
    .line 30
    or-int/2addr v2, v3

    .line 31
    const v3, 0x8140

    .line 32
    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    .line 37
    const v5, 0x9ffc

    .line 38
    .line 39
    .line 40
    if-gt v2, v5, :cond_0

    .line 41
    .line 42
    :goto_1
    sub-int/2addr v2, v3

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    const v3, 0xe040

    .line 45
    .line 46
    .line 47
    if-lt v2, v3, :cond_1

    .line 48
    .line 49
    const v3, 0xebbf

    .line 50
    .line 51
    .line 52
    if-gt v2, v3, :cond_1

    .line 53
    .line 54
    const v3, 0xc140

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v2, v4

    .line 59
    :goto_2
    if-eq v2, v4, :cond_2

    .line 60
    .line 61
    shr-int/lit8 v3, v2, 0x8

    .line 62
    .line 63
    mul-int/lit16 v3, v3, 0xc0

    .line 64
    .line 65
    and-int/lit16 v2, v2, 0xff

    .line 66
    .line 67
    add-int/2addr v3, v2

    .line 68
    const/16 v2, 0xd

    .line 69
    .line 70
    invoke-virtual {p1, v3, v2}, Lkd/a;->c(II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 77
    .line 78
    const-string p1, "Invalid byte sequence"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 86
    .line 87
    const-string p1, "Kanji byte size not even"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method static f(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    shl-int v0, p2, p1

    .line 7
    .line 8
    if-ge p0, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3, p0, p1}, Lkd/a;->c(II)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 15
    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is bigger than "

    .line 25
    .line 26
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sub-int/2addr v0, p2

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method static g(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, p0, v0}, Lkd/a;->c(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static h(Ljava/lang/CharSequence;Lkd/a;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, -0x30

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    if-ge v3, v0, :cond_0

    .line 17
    .line 18
    add-int/lit8 v4, v1, 0x1

    .line 19
    .line 20
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    add-int/lit8 v4, v4, -0x30

    .line 25
    .line 26
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/lit8 v3, v3, -0x30

    .line 31
    .line 32
    mul-int/lit8 v2, v2, 0x64

    .line 33
    .line 34
    const/16 v5, 0xa

    .line 35
    .line 36
    mul-int/2addr v4, v5

    .line 37
    add-int/2addr v2, v4

    .line 38
    add-int/2addr v2, v3

    .line 39
    invoke-virtual {p1, v2, v5}, Lkd/a;->c(II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    if-ge v1, v0, :cond_1

    .line 48
    .line 49
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/lit8 v1, v1, -0x30

    .line 54
    .line 55
    mul-int/lit8 v2, v2, 0xa

    .line 56
    .line 57
    add-int/2addr v2, v1

    .line 58
    const/4 v1, 0x7

    .line 59
    invoke-virtual {p1, v2, v1}, Lkd/a;->c(II)V

    .line 60
    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v3, 0x4

    .line 65
    invoke-virtual {p1, v2, v3}, Lkd/a;->c(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method private static i(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Lkd/a;Lcom/google/zxing/qrcode/decoder/g;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lkd/a;->m()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/2addr p1, p0

    .line 10
    invoke-virtual {p2}, Lkd/a;->m()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/2addr p1, p0

    .line 15
    return p1
.end method

.method private static j(Lae/a;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->a(Lae/a;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->c(Lae/a;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->d(Lae/a;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->e(Lae/a;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method private static k(Lkd/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/g;Lae/a;)I
    .locals 4

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/16 v3, 0x8

    .line 7
    .line 8
    if-ge v2, v3, :cond_1

    .line 9
    .line 10
    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/encoder/d;->a(Lkd/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/g;ILae/a;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/b;->j(Lae/a;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    move v0, v3

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1
.end method

.method private static l(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 5

    .line 1
    sget-object v0, Lkd/o;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/b;->s(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    move v0, p1

    .line 20
    move v1, v0

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge p1, v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0x30

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-lt v2, v3, :cond_1

    .line 35
    .line 36
    const/16 v3, 0x39

    .line 37
    .line 38
    if-gt v2, v3, :cond_1

    .line 39
    .line 40
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/b;->p(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, -0x1

    .line 47
    if-eq v0, v2, :cond_2

    .line 48
    .line 49
    move v0, v4

    .line 50
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_3
    if-eqz v0, :cond_4

    .line 57
    .line 58
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    if-eqz v1, :cond_5

    .line 62
    .line 63
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_5
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 67
    .line 68
    return-object p0
.end method

.method private static m(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/g;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    const/16 v1, 0x28

    .line 3
    .line 4
    if-gt v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/g;->i(I)Lcom/google/zxing/qrcode/decoder/g;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/b;->v(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 21
    .line 22
    const-string p1, "Data too big"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static n(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lae/b;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object v2, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    .line 6
    .line 7
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move v2, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v0

    .line 30
    :goto_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    sget-object v3, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 33
    .line 34
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    move v3, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v3, v0

    .line 57
    :goto_1
    sget-object v4, Lcom/google/zxing/qrcode/encoder/b;->b:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    sget-object v5, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 62
    .line 63
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    move v0, v1

    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 73
    .line 74
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move-object v1, v4

    .line 88
    :goto_2
    if-eqz v3, :cond_5

    .line 89
    .line 90
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v4, 0x0

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    move-object v1, v4

    .line 100
    :cond_4
    invoke-static {p0, v4, v1, v2, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->i(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/g;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v1, Lkd/a;

    .line 105
    .line 106
    invoke-direct {v1}, Lkd/a;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->b(Lkd/a;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->e()Lcom/google/zxing/qrcode/decoder/g;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_5
    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/b;->l(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    new-instance v4, Lkd/a;

    .line 123
    .line 124
    invoke-direct {v4}, Lkd/a;-><init>()V

    .line 125
    .line 126
    .line 127
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 128
    .line 129
    if-ne v3, v5, :cond_6

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-static {v0, v4}, Lcom/google/zxing/qrcode/encoder/b;->d(Lcom/google/zxing/common/CharacterSetECI;Lkd/a;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    if-eqz v2, :cond_7

    .line 143
    .line 144
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 145
    .line 146
    invoke-static {v0, v4}, Lcom/google/zxing/qrcode/encoder/b;->g(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-static {v3, v4}, Lcom/google/zxing/qrcode/encoder/b;->g(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lkd/a;

    .line 153
    .line 154
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v3, v0, v1}, Lcom/google/zxing/qrcode/encoder/b;->c(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Ljava/nio/charset/Charset;)V

    .line 158
    .line 159
    .line 160
    if-eqz p2, :cond_9

    .line 161
    .line 162
    sget-object v1, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    .line 163
    .line 164
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_9

    .line 169
    .line 170
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/g;->i(I)Lcom/google/zxing/qrcode/decoder/g;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v3, v4, v0, v1}, Lcom/google/zxing/qrcode/encoder/b;->i(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Lkd/a;Lcom/google/zxing/qrcode/decoder/g;)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-static {v2, v1, p1}, Lcom/google/zxing/qrcode/encoder/b;->v(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_8

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 198
    .line 199
    const-string p1, "Data too big for requested version"

    .line 200
    .line 201
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_9
    invoke-static {p1, v3, v4, v0}, Lcom/google/zxing/qrcode/encoder/b;->t(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Lkd/a;)Lcom/google/zxing/qrcode/decoder/g;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :goto_3
    new-instance v2, Lkd/a;

    .line 210
    .line 211
    invoke-direct {v2}, Lkd/a;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v4}, Lkd/a;->b(Lkd/a;)V

    .line 215
    .line 216
    .line 217
    if-ne v3, v5, :cond_a

    .line 218
    .line 219
    invoke-virtual {v0}, Lkd/a;->n()I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    goto :goto_4

    .line 224
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    :goto_4
    invoke-static {p0, v1, v3, v2}, Lcom/google/zxing/qrcode/encoder/b;->f(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Lkd/a;->b(Lkd/a;)V

    .line 232
    .line 233
    .line 234
    move-object p0, v1

    .line 235
    move-object v1, v2

    .line 236
    move-object v0, v3

    .line 237
    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/decoder/g;->f(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/g$b;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/g;->h()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/g$b;->d()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    sub-int/2addr v3, v4

    .line 250
    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/encoder/b;->u(ILkd/a;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/g;->h()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/g$b;->c()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-static {v1, v4, v3, v2}, Lcom/google/zxing/qrcode/encoder/b;->r(Lkd/a;III)Lkd/a;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v2, Lae/b;

    .line 266
    .line 267
    invoke-direct {v2}, Lae/b;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, p1}, Lae/b;->c(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v0}, Lae/b;->f(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, p0}, Lae/b;->g(Lcom/google/zxing/qrcode/decoder/g;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/g;->e()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    new-instance v3, Lae/a;

    .line 284
    .line 285
    invoke-direct {v3, v0, v0}, Lae/a;-><init>(II)V

    .line 286
    .line 287
    .line 288
    const/4 v0, -0x1

    .line 289
    if-eqz p2, :cond_b

    .line 290
    .line 291
    sget-object v4, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    .line 292
    .line 293
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_b

    .line 298
    .line 299
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    invoke-static {p2}, Lae/b;->b(I)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_b

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_b
    move p2, v0

    .line 319
    :goto_6
    if-ne p2, v0, :cond_c

    .line 320
    .line 321
    invoke-static {v1, p1, p0, v3}, Lcom/google/zxing/qrcode/encoder/b;->k(Lkd/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/g;Lae/a;)I

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    :cond_c
    invoke-virtual {v2, p2}, Lae/b;->d(I)V

    .line 326
    .line 327
    .line 328
    invoke-static {v1, p1, p0, p2, v3}, Lcom/google/zxing/qrcode/encoder/d;->a(Lkd/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/g;ILae/a;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v3}, Lae/b;->e(Lae/a;)V

    .line 332
    .line 333
    .line 334
    return-object v2
.end method

.method static o([BI)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int v1, v0, p1

    .line 3
    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    .line 10
    aget-byte v4, p0, v3

    .line 11
    .line 12
    and-int/lit16 v4, v4, 0xff

    .line 13
    .line 14
    aput v4, v1, v3

    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Lmd/d;

    .line 20
    .line 21
    sget-object v3, Lmd/a;->l:Lmd/a;

    .line 22
    .line 23
    invoke-direct {p0, v3}, Lmd/d;-><init>(Lmd/a;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, p1}, Lmd/d;->b([II)V

    .line 27
    .line 28
    .line 29
    new-array p0, p1, [B

    .line 30
    .line 31
    :goto_1
    if-ge v2, p1, :cond_1

    .line 32
    .line 33
    add-int v3, v0, v2

    .line 34
    .line 35
    aget v3, v1, v3

    .line 36
    .line 37
    int-to-byte v3, v3

    .line 38
    aput-byte v3, p0, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-object p0
.end method

.method static p(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/b;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget p0, v0, p0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, -0x1

    .line 10
    return p0
.end method

.method static q(IIII[I[I)V
    .locals 6

    .line 1
    if-ge p3, p2, :cond_4

    .line 2
    .line 3
    rem-int v0, p0, p2

    .line 4
    .line 5
    sub-int v1, p2, v0

    .line 6
    .line 7
    div-int v2, p0, p2

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    div-int/2addr p1, p2

    .line 12
    add-int/lit8 v4, p1, 0x1

    .line 13
    .line 14
    sub-int/2addr v2, p1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    if-ne v2, v3, :cond_3

    .line 17
    .line 18
    add-int v5, v1, v0

    .line 19
    .line 20
    if-ne p2, v5, :cond_2

    .line 21
    .line 22
    add-int p2, p1, v2

    .line 23
    .line 24
    mul-int/2addr p2, v1

    .line 25
    add-int v5, v4, v3

    .line 26
    .line 27
    mul-int/2addr v5, v0

    .line 28
    add-int/2addr p2, v5

    .line 29
    if-ne p0, p2, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    if-ge p3, v1, :cond_0

    .line 33
    .line 34
    aput p1, p4, p0

    .line 35
    .line 36
    aput v2, p5, p0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    aput v4, p4, p0

    .line 40
    .line 41
    aput v3, p5, p0

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 45
    .line 46
    const-string p1, "Total bytes mismatch"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 53
    .line 54
    const-string p1, "RS blocks mismatch"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 61
    .line 62
    const-string p1, "EC bytes mismatch"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 69
    .line 70
    const-string p1, "Block ID too large"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method static r(Lkd/a;III)Lkd/a;
    .locals 17

    .line 1
    move/from16 v6, p1

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lkd/a;->n()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, v7, :cond_9

    .line 12
    .line 13
    new-instance v9, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    move v11, v10

    .line 20
    move v12, v11

    .line 21
    move v13, v12

    .line 22
    move v14, v13

    .line 23
    :goto_0
    if-ge v11, v8, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v15, v0, [I

    .line 27
    .line 28
    new-array v5, v0, [I

    .line 29
    .line 30
    move/from16 v0, p1

    .line 31
    .line 32
    move/from16 v1, p2

    .line 33
    .line 34
    move/from16 v2, p3

    .line 35
    .line 36
    move v3, v11

    .line 37
    move-object v4, v15

    .line 38
    move-object/from16 v16, v5

    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/b;->q(IIII[I[I)V

    .line 41
    .line 42
    .line 43
    aget v0, v15, v10

    .line 44
    .line 45
    new-array v1, v0, [B

    .line 46
    .line 47
    mul-int/lit8 v2, v12, 0x8

    .line 48
    .line 49
    move-object/from16 v3, p0

    .line 50
    .line 51
    invoke-virtual {v3, v2, v1, v10, v0}, Lkd/a;->t(I[BII)V

    .line 52
    .line 53
    .line 54
    aget v2, v16, v10

    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/b;->o([BI)[B

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v4, Lcom/google/zxing/qrcode/encoder/a;

    .line 61
    .line 62
    invoke-direct {v4, v1, v2}, Lcom/google/zxing/qrcode/encoder/a;-><init>([B[B)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    array-length v0, v2

    .line 73
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    aget v0, v15, v10

    .line 78
    .line 79
    add-int/2addr v12, v0

    .line 80
    add-int/lit8 v11, v11, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    if-ne v7, v12, :cond_8

    .line 84
    .line 85
    new-instance v0, Lkd/a;

    .line 86
    .line 87
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 88
    .line 89
    .line 90
    move v1, v10

    .line 91
    :goto_1
    const/16 v2, 0x8

    .line 92
    .line 93
    if-ge v1, v13, :cond_3

    .line 94
    .line 95
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lcom/google/zxing/qrcode/encoder/a;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/a;->a()[B

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    array-length v5, v4

    .line 116
    if-ge v1, v5, :cond_1

    .line 117
    .line 118
    aget-byte v4, v4, v1

    .line 119
    .line 120
    invoke-virtual {v0, v4, v2}, Lkd/a;->c(II)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    :goto_3
    if-ge v10, v14, :cond_6

    .line 128
    .line 129
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_5

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/google/zxing/qrcode/encoder/a;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/a;->b()[B

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    array-length v4, v3

    .line 150
    if-ge v10, v4, :cond_4

    .line 151
    .line 152
    aget-byte v3, v3, v10

    .line 153
    .line 154
    invoke-virtual {v0, v3, v2}, Lkd/a;->c(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    invoke-virtual {v0}, Lkd/a;->n()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-ne v6, v1, :cond_7

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_7
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v3, "Interleaving error: "

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, " and "

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lkd/a;->n()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, " differ."

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v1

    .line 208
    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 209
    .line 210
    const-string v1, "Data bytes does not match offset"

    .line 211
    .line 212
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :cond_9
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 217
    .line 218
    const-string v1, "Number of bits and data bytes does not match"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method static s(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lkd/o;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    rem-int/lit8 v1, v0, 0x2

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    if-ge v1, v0, :cond_4

    .line 16
    .line 17
    aget-byte v3, p0, v1

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    const/16 v4, 0x81

    .line 22
    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    const/16 v4, 0x9f

    .line 26
    .line 27
    if-le v3, v4, :cond_2

    .line 28
    .line 29
    :cond_1
    const/16 v4, 0xe0

    .line 30
    .line 31
    if-lt v3, v4, :cond_3

    .line 32
    .line 33
    const/16 v4, 0xeb

    .line 34
    .line 35
    if-le v3, v4, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    return v2

    .line 42
    :cond_4
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method private static t(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Lkd/a;)Lcom/google/zxing/qrcode/decoder/g;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/g;->i(I)Lcom/google/zxing/qrcode/decoder/g;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/b;->i(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Lkd/a;Lcom/google/zxing/qrcode/decoder/g;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/b;->m(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/b;->i(Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Lkd/a;Lcom/google/zxing/qrcode/decoder/g;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1, p0}, Lcom/google/zxing/qrcode/encoder/b;->m(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/g;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method static u(ILkd/a;)V
    .locals 4

    .line 1
    mul-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    invoke-virtual {p1}, Lkd/a;->m()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v1, v0, :cond_5

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    const/4 v3, 0x4

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lkd/a;->m()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v3, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lkd/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lkd/a;->m()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    and-int/lit8 v2, v2, 0x7

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    :goto_1
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lkd/a;->a(Z)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lkd/a;->n()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    sub-int/2addr p0, v2

    .line 49
    :goto_2
    if-ge v1, p0, :cond_3

    .line 50
    .line 51
    and-int/lit8 v2, v1, 0x1

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    const/16 v2, 0xec

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    const/16 v2, 0x11

    .line 59
    .line 60
    :goto_3
    invoke-virtual {p1, v2, v3}, Lkd/a;->c(II)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p1}, Lkd/a;->m()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-ne p0, v0, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 74
    .line 75
    const-string p1, "Bits size does not equal capacity"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_5
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "data bits cannot fit in the QR Code"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lkd/a;->m()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, " > "

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method static v(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/g;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/g;->f(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/g$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/g$b;->d()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    add-int/lit8 p0, p0, 0x7

    .line 15
    .line 16
    div-int/lit8 p0, p0, 0x8

    .line 17
    .line 18
    if-lt v0, p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method
