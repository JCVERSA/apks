.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/zxing/qrcode/decoder/Mode;

.field private final b:I

.field private final c:I

.field private final d:I

.field final synthetic e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;


# direct methods
.method constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;Lcom/google/zxing/qrcode/decoder/Mode;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;Lcom/google/zxing/qrcode/decoder/g;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->f(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;Lkd/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d(Lkd/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Lkd/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

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
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;)Lcom/google/zxing/qrcode/decoder/g;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lkd/a;->c(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 35
    .line 36
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lkd/g;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lkd/g;->e(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lkd/a;->c(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    .line 73
    .line 74
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 75
    .line 76
    add-int/2addr v2, v1

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lkd/g;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lkd/g;->d(I)Ljava/nio/charset/Charset;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v0, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/b;->c(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lkd/a;Ljava/nio/charset/Charset;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method

.method private e()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lkd/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    .line 24
    .line 25
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 26
    .line 27
    add-int/2addr v3, v2

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lkd/g;->c(Ljava/lang/String;I)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    array-length v0, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 41
    .line 42
    :goto_0
    return v0
.end method

.method private f(Lcom/google/zxing/qrcode/decoder/g;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 v0, p1, 0x4

    .line 8
    .line 9
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v1, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_6

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v1, v4, :cond_5

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    const/4 v6, 0x4

    .line 28
    if-eq v1, v5, :cond_2

    .line 29
    .line 30
    if-eq v1, v6, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    add-int/lit8 v0, p1, 0xc

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    mul-int/lit8 p1, p1, 0x8

    .line 44
    .line 45
    :goto_0
    add-int/2addr v0, p1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 48
    .line 49
    div-int/lit8 v1, p1, 0x3

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0xa

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    rem-int/2addr p1, v5

    .line 55
    if-ne p1, v2, :cond_3

    .line 56
    .line 57
    move v3, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    if-ne p1, v4, :cond_4

    .line 60
    .line 61
    const/4 v3, 0x7

    .line 62
    :cond_4
    :goto_1
    add-int/2addr v0, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_5
    iget p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 65
    .line 66
    div-int/lit8 v1, p1, 0x2

    .line 67
    .line 68
    mul-int/lit8 v1, v1, 0xb

    .line 69
    .line 70
    add-int/2addr v0, v1

    .line 71
    rem-int/2addr p1, v4

    .line 72
    if-ne p1, v2, :cond_4

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    goto :goto_1

    .line 76
    :cond_6
    iget p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 77
    .line 78
    mul-int/lit8 p1, p1, 0xd

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_2
    return v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-lt v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x7e

    .line 26
    .line 27
    if-le v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    const/16 v2, 0x2e

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x28

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 17
    .line 18
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lkd/g;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lkd/g;->d(I)Ljava/nio/charset/Charset;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    .line 53
    .line 54
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    .line 55
    .line 56
    add-int/2addr v3, v2

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {p0, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :goto_0
    const/16 v1, 0x29

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method
