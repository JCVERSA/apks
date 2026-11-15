.class final Lcom/google/zxing/aztec/encoder/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final f:Lcom/google/zxing/aztec/encoder/e;


# instance fields
.field private final a:I

.field private final b:Lcom/google/zxing/aztec/encoder/f;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/aztec/encoder/f;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/zxing/aztec/encoder/e;->f:Lcom/google/zxing/aztec/encoder/e;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/f;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 11
    .line 12
    invoke-static {p3}, Lcom/google/zxing/aztec/encoder/e;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    .line 17
    .line 18
    return-void
.end method

.method private static c(I)I
    .locals 1

    .line 1
    const/16 v0, 0x3e

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x15

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/16 v0, 0x1f

    .line 9
    .line 10
    if-le p0, v0, :cond_1

    .line 11
    .line 12
    const/16 p0, 0x14

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    if-lez p0, :cond_2

    .line 16
    .line 17
    const/16 p0, 0xa

    .line 18
    .line 19
    return p0

    .line 20
    :cond_2
    const/4 p0, 0x0

    .line 21
    return p0
.end method


# virtual methods
.method a(I)Lcom/google/zxing/aztec/encoder/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq v1, v3, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne v1, v3, :cond_1

    .line 12
    .line 13
    :cond_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    .line 14
    .line 15
    aget-object v1, v3, v1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aget v1, v1, v3

    .line 19
    .line 20
    const v4, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v4, v1

    .line 24
    shr-int/lit8 v1, v1, 0x10

    .line 25
    .line 26
    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/2addr v2, v1

    .line 31
    move v1, v3

    .line 32
    :cond_1
    iget v3, p0, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    const/16 v4, 0x1f

    .line 37
    .line 38
    if-ne v3, v4, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/16 v4, 0x3e

    .line 42
    .line 43
    if-ne v3, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x9

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/16 v4, 0x8

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    :goto_0
    const/16 v4, 0x12

    .line 52
    .line 53
    :goto_1
    new-instance v5, Lcom/google/zxing/aztec/encoder/e;

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    add-int/2addr v2, v4

    .line 58
    invoke-direct {v5, v0, v1, v3, v2}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    .line 59
    .line 60
    .line 61
    iget v0, v5, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 62
    .line 63
    const/16 v1, 0x81e

    .line 64
    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    invoke-virtual {v5, p1}, Lcom/google/zxing/aztec/encoder/e;->d(I)Lcom/google/zxing/aztec/encoder/e;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :cond_5
    return-object v5
.end method

.method b(I)Lcom/google/zxing/aztec/encoder/e;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/e;->j(II)Lcom/google/zxing/aztec/encoder/e;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const v4, 0xf423f

    .line 18
    .line 19
    .line 20
    if-gt p1, v4, :cond_2

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length v4, p1

    .line 33
    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    array-length v4, p1

    .line 38
    move v5, v1

    .line 39
    :goto_0
    if-ge v5, v4, :cond_1

    .line 40
    .line 41
    aget-byte v6, p1, v5

    .line 42
    .line 43
    add-int/lit8 v6, v6, -0x2e

    .line 44
    .line 45
    invoke-virtual {v2, v6, v0}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    array-length p1, p1

    .line 53
    mul-int/2addr p1, v0

    .line 54
    add-int/2addr v3, p1

    .line 55
    move-object p1, v2

    .line 56
    :goto_1
    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    .line 57
    .line 58
    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 59
    .line 60
    iget v4, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 61
    .line 62
    add-int/2addr v4, v3

    .line 63
    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v0, "ECI code must be between 0 and 999999"

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method d(I)Lcom/google/zxing/aztec/encoder/e;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/aztec/encoder/f;->b(II)Lcom/google/zxing/aztec/encoder/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    .line 14
    .line 15
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 2
    .line 3
    return v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 2
    .line 3
    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 2
    .line 3
    return v0
.end method

.method h(Lcom/google/zxing/aztec/encoder/e;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget v2, p1, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 10
    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    shr-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 17
    .line 18
    iget v2, p1, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 19
    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget v1, p1, Lcom/google/zxing/aztec/encoder/e;->e:I

    .line 23
    .line 24
    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    add-int/2addr v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-le v1, v2, :cond_1

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0xa

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget p1, p1, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 36
    .line 37
    if-gt v0, p1, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    :goto_1
    return p1
.end method

.method i(II)Lcom/google/zxing/aztec/encoder/e;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 6
    .line 7
    if-eq p1, v2, :cond_0

    .line 8
    .line 9
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    .line 10
    .line 11
    aget-object v2, v3, v2

    .line 12
    .line 13
    aget v2, v2, p1

    .line 14
    .line 15
    const v3, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v3, v2

    .line 19
    shr-int/lit8 v2, v2, 0x10

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    add-int/2addr v0, v2

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x5

    .line 32
    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v1, Lcom/google/zxing/aztec/encoder/e;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    add-int/2addr v0, v2

    .line 40
    invoke-direct {v1, p2, p1, v3, v0}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method j(II)Lcom/google/zxing/aztec/encoder/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x5

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v3

    .line 12
    :goto_0
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->f:[[I

    .line 13
    .line 14
    aget-object v1, v4, v1

    .line 15
    .line 16
    aget p1, v1, p1

    .line 17
    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2, v3}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lcom/google/zxing/aztec/encoder/e;

    .line 27
    .line 28
    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 29
    .line 30
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 31
    .line 32
    add-int/2addr v1, v2

    .line 33
    add-int/2addr v1, v3

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p2, p1, v0, v2, v1}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    .line 36
    .line 37
    .line 38
    return-object p2
.end method

.method k([B)Lkd/a;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/encoder/e;->d(I)Lcom/google/zxing/aztec/encoder/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/f;

    .line 12
    .line 13
    :goto_0
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/f;->d()Lcom/google/zxing/aztec/encoder/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lkd/a;

    .line 24
    .line 25
    invoke-direct {v1}, Lkd/a;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    :goto_1
    if-ltz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/google/zxing/aztec/encoder/f;

    .line 41
    .line 42
    invoke-virtual {v3, v1, p1}, Lcom/google/zxing/aztec/encoder/f;->c(Lkd/a;[B)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->a:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->c:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v2, v3, v0

    .line 30
    .line 31
    const-string v0, "%s bits=%d bytes=%d"

    .line 32
    .line 33
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
