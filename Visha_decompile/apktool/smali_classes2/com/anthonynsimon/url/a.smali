.class public abstract Lcom/anthonynsimon/url/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/anthonynsimon/url/a;->a:[C

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/anthonynsimon/url/a;->b:[C

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lcom/anthonynsimon/url/a;->c:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x21s
        0x24s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x3bs
        0x3ds
        0x3as
        0x5bs
        0x5ds
        0x3cs
        0x3es
        0x22s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2ds
        0x5fs
        0x2es
        0x7es
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0xc0s
        0xe0s
        0xf0s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    invoke-static {p0}, Lcom/anthonynsimon/url/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v2

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_8

    aget-char v5, v0, v4

    const/16 v6, 0x25

    if-eq v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v4, 0x2

    if-ge v5, v1, :cond_7

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v4, 0x3

    :try_start_0
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/anthonynsimon/url/a;->g([C)B

    move-result v5
    :try_end_0
    .catch Lcom/anthonynsimon/url/exceptions/InvalidHexException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v7, Lcom/anthonynsimon/url/a;->c:[S

    array-length v8, v7

    move v9, v2

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_2

    aget-short v11, v7, v9

    and-int v12, v5, v11

    if-ne v12, v11, :cond_2

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-array v5, v10, [B

    move v7, v2

    :goto_2
    if-ge v7, v10, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_4

    new-array v6, v7, [B

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_3

    aget-byte v9, v5, v8

    aput-byte v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move-object v5, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v4, 0x3

    if-le v8, v1, :cond_5

    const-string/jumbo v5, "\ufffd"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :try_start_1
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v4}, Lcom/anthonynsimon/url/a;->g([C)B

    move-result v4

    aput-byte v4, v5, v7
    :try_end_1
    .catch Lcom/anthonynsimon/url/exceptions/InvalidHexException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    const-string v0, "invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object v3
.end method

.method public static b(Ljava/lang/String;Lcom/anthonynsimon/url/URLPart;)Ljava/lang/String;
    .locals 9

    invoke-static {p0, p1}, Lcom/anthonynsimon/url/a;->c(Ljava/lang/String;Lcom/anthonynsimon/url/URLPart;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    :cond_1
    array-length v3, p0

    if-ge v2, v3, :cond_4

    sget-object v3, Lcom/anthonynsimon/url/a;->c:[S

    array-length v4, v3

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-short v7, v3, v5

    aget-byte v8, p0, v2

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-byte v4, p0, v2

    int-to-char v4, v4

    invoke-static {v4, p1}, Lcom/anthonynsimon/url/a;->f(CLcom/anthonynsimon/url/URLPart;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static c(Ljava/lang/String;Lcom/anthonynsimon/url/URLPart;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    invoke-static {v3, p1}, Lcom/anthonynsimon/url/a;->f(CLcom/anthonynsimon/url/URLPart;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(II)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-lez p1, :cond_0

    mul-int/2addr v0, p0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static f(CLcom/anthonynsimon/url/URLPart;)Z
    .locals 11

    const/16 v0, 0xa

    const/16 v1, 0x3a

    const/16 v2, 0x2f

    const/16 v3, 0x40

    const/16 v4, 0x3f

    const/4 v5, 0x1

    const/16 v6, 0x41

    const/4 v7, 0x0

    if-gt v6, p0, :cond_0

    const/16 v6, 0x5a

    if-le p0, v6, :cond_2

    :cond_0
    const/16 v6, 0x61

    if-gt v6, p0, :cond_1

    const/16 v6, 0x7a

    if-le p0, v6, :cond_2

    :cond_1
    const/16 v6, 0x30

    if-gt v6, p0, :cond_3

    const/16 v6, 0x39

    if-gt p0, v6, :cond_3

    :cond_2
    return v7

    :cond_3
    sget-object v6, Lcom/anthonynsimon/url/URLPart;->HOST:Lcom/anthonynsimon/url/URLPart;

    if-eq p1, v6, :cond_4

    sget-object v6, Lcom/anthonynsimon/url/URLPart;->PATH:Lcom/anthonynsimon/url/URLPart;

    if-ne p1, v6, :cond_7

    :cond_4
    const/16 v6, 0x25

    if-ne p0, v6, :cond_5

    return v5

    :cond_5
    sget-object v6, Lcom/anthonynsimon/url/a;->a:[C

    array-length v8, v6

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_7

    aget-char v10, v6, v9

    if-ne v10, p0, :cond_6

    return v7

    :cond_6
    add-int/2addr v9, v5

    goto :goto_0

    :cond_7
    sget-object v6, Lcom/anthonynsimon/url/a;->b:[C

    array-length v8, v6

    move v9, v7

    :goto_1
    if-ge v9, v8, :cond_9

    aget-char v10, v6, v9

    if-ne v10, p0, :cond_8

    return v7

    :cond_8
    add-int/2addr v9, v5

    goto :goto_1

    :cond_9
    new-array v6, v0, [C

    fill-array-data v6, :array_0

    move v8, v7

    :goto_2
    if-ge v8, v0, :cond_11

    aget-char v9, v6, v8

    if-ne v9, p0, :cond_10

    sget-object v0, Lcom/anthonynsimon/url/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 p0, 0x4

    if-eq p1, p0, :cond_a

    return v5

    :cond_a
    return v7

    :cond_b
    if-eq p0, v3, :cond_d

    if-eq p0, v2, :cond_d

    if-eq p0, v4, :cond_d

    if-ne p0, v1, :cond_c

    goto :goto_3

    :cond_c
    move v5, v7

    :cond_d
    :goto_3
    return v5

    :cond_e
    if-ne p0, v4, :cond_f

    goto :goto_4

    :cond_f
    move v5, v7

    :goto_4
    return v5

    :cond_10
    add-int/2addr v8, v5

    goto :goto_2

    :cond_11
    return v5

    nop

    :array_0
    .array-data 2
        0x24s
        0x26s
        0x2bs
        0x2cs
        0x2fs
        0x3as
        0x3bs
        0x3ds
        0x3fs
        0x40s
    .end array-data
.end method

.method public static g([C)B
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-char v2, p0, v2

    const/16 v3, 0x30

    if-gt v3, v2, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x30

    goto :goto_1

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x66

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x57

    goto :goto_1

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_2

    const/16 v3, 0x46

    if-gt v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x37

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    invoke-static {v4, v0}, Lcom/anthonynsimon/url/a;->e(II)I

    move-result v2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/anthonynsimon/url/exceptions/InvalidHexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not a valid hex char: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/exceptions/InvalidHexException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-byte p0, v1

    return p0
.end method
