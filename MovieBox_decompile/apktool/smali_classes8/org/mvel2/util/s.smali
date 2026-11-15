.class public Lorg/mvel2/util/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:[B

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mvel2/util/s;->c:I

    const/16 v0, 0xf

    .line 3
    iput v0, p0, Lorg/mvel2/util/s;->b:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mvel2/util/s;->a:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/mvel2/util/s;->c:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/util/s;->a:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/util/s;->c:I

    iput p1, p0, Lorg/mvel2/util/s;->b:I

    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/s;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xf

    .line 6
    .line 7
    iput v0, p0, Lorg/mvel2/util/s;->b:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lorg/mvel2/util/s;->b:I

    .line 10
    .line 11
    mul-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lorg/mvel2/util/s;->b:I

    .line 15
    .line 16
    new-array p1, v0, [C

    .line 17
    .line 18
    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    .line 19
    .line 20
    iget v1, p0, Lorg/mvel2/util/s;->c:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/mvel2/util/s;->a:[C

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a(C)Lorg/mvel2/util/s;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/util/s;->b:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/mvel2/util/s;->f(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    .line 11
    .line 12
    iget v1, p0, Lorg/mvel2/util/s;->c:I

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    iput v2, p0, Lorg/mvel2/util/s;->c:I

    .line 17
    .line 18
    aput-char p1, v0, v1

    .line 19
    .line 20
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lorg/mvel2/util/s;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/mvel2/util/s;->b:I

    .line 6
    .line 7
    iget v2, p0, Lorg/mvel2/util/s;->c:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lorg/mvel2/util/s;->f(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    .line 27
    .line 28
    iget v2, p0, Lorg/mvel2/util/s;->c:I

    .line 29
    .line 30
    add-int/lit8 v3, v0, 0x1

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    aput-char v0, v1, v2

    .line 37
    .line 38
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Lorg/mvel2/util/s;->c:I

    .line 43
    .line 44
    move v0, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lorg/mvel2/util/s;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    .line 2
    .line 3
    aget-char p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public d(Ljava/lang/String;)Lorg/mvel2/util/s;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lorg/mvel2/util/s;->b:I

    .line 9
    .line 10
    iget v2, p0, Lorg/mvel2/util/s;->c:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/mvel2/util/s;->f(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    .line 19
    .line 20
    iget v2, p0, Lorg/mvel2/util/s;->c:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lorg/mvel2/util/s;->c:I

    .line 27
    .line 28
    add-int/2addr p1, v0

    .line 29
    iput p1, p0, Lorg/mvel2/util/s;->c:I

    .line 30
    .line 31
    return-object p0
.end method

.method public e([CII)Lorg/mvel2/util/s;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/s;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/util/s;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-le p3, v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p3}, Lorg/mvel2/util/s;->f(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    add-int/2addr p3, p2

    .line 12
    :goto_0
    if-ge p2, p3, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    .line 15
    .line 16
    iget v1, p0, Lorg/mvel2/util/s;->c:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lorg/mvel2/util/s;->c:I

    .line 21
    .line 22
    aget-char v2, p1, p2

    .line 23
    .line 24
    aput-char v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object p0
.end method

.method public g(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    .line 4
    .line 5
    sub-int/2addr p2, p1

    .line 6
    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public h()[C
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/s;->d:[B

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "file.encoding"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/mvel2/util/s;->d:[B

    .line 20
    .line 21
    iget-object v2, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    new-instance v0, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lorg/mvel2/util/s;->d:[B

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    .line 40
    .line 41
    new-array v1, v0, [C

    .line 42
    .line 43
    iget-object v2, p0, Lorg/mvel2/util/s;->a:[C

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/util/s;->g(II)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/s;->d:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "file.encoding"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/mvel2/util/s;->d:[B

    .line 21
    .line 22
    iget v3, p0, Lorg/mvel2/util/s;->c:I

    .line 23
    .line 24
    iget-object v4, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    new-instance v0, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/mvel2/util/s;->d:[B

    .line 33
    .line 34
    iget v3, p0, Lorg/mvel2/util/s;->c:I

    .line 35
    .line 36
    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object v0

    .line 40
    :cond_1
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    .line 41
    .line 42
    iget v2, p0, Lorg/mvel2/util/s;->b:I

    .line 43
    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Lorg/mvel2/util/s;->a:[C

    .line 57
    .line 58
    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .line 60
    .line 61
    return-object v2
.end method
