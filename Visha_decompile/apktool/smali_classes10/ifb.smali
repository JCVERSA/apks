.class public abstract Lifb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[S

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x80

    new-array v1, v0, [S

    sput-object v1, Lifb;->a:[S

    const/16 v1, 0x70

    new-array v2, v1, [B

    sput-object v2, Lifb;->b:[B

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lifb;->a([BIIB)V

    const/16 v5, 0x1f

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-static {v3, v8, v5, v7}, Lifb;->a([BIIB)V

    const/16 v5, 0x3f

    const/4 v7, 0x3

    const/16 v9, 0x20

    invoke-static {v3, v9, v5, v7}, Lifb;->a([BIIB)V

    const/16 v5, 0x40

    const/16 v7, 0x41

    invoke-static {v3, v5, v7, v4}, Lifb;->a([BIIB)V

    const/16 v5, 0x5f

    const/4 v7, 0x4

    const/16 v9, 0x42

    invoke-static {v3, v9, v5, v7}, Lifb;->a([BIIB)V

    const/16 v5, 0x60

    const/4 v7, 0x5

    invoke-static {v3, v5, v5, v7}, Lifb;->a([BIIB)V

    const/16 v5, 0x61

    const/16 v7, 0x6c

    const/4 v9, 0x6

    invoke-static {v3, v5, v7, v9}, Lifb;->a([BIIB)V

    const/16 v5, 0x6d

    const/4 v7, 0x7

    invoke-static {v3, v5, v5, v7}, Lifb;->a([BIIB)V

    const/16 v5, 0x6e

    const/16 v7, 0x6f

    invoke-static {v3, v5, v7, v9}, Lifb;->a([BIIB)V

    const/16 v5, 0x8

    invoke-static {v3, v1, v1, v5}, Lifb;->a([BIIB)V

    const/16 v1, 0x73

    const/16 v7, 0x9

    const/16 v9, 0x71

    invoke-static {v3, v9, v1, v7}, Lifb;->a([BIIB)V

    const/16 v1, 0x74

    const/16 v7, 0xa

    invoke-static {v3, v1, v1, v7}, Lifb;->a([BIIB)V

    const/16 v1, 0x75

    const/16 v7, 0x7f

    invoke-static {v3, v1, v7, v4}, Lifb;->a([BIIB)V

    array-length v1, v2

    sub-int/2addr v1, v6

    const/4 v7, -0x2

    invoke-static {v2, v4, v1, v7}, Lifb;->a([BIIB)V

    const/16 v1, 0xb

    const/4 v7, -0x1

    invoke-static {v2, v5, v1, v7}, Lifb;->a([BIIB)V

    const/16 v7, 0x18

    const/16 v9, 0x1b

    invoke-static {v2, v7, v9, v4}, Lifb;->a([BIIB)V

    const/16 v7, 0x28

    const/16 v9, 0x2b

    invoke-static {v2, v7, v9, v8}, Lifb;->a([BIIB)V

    const/16 v7, 0x3a

    const/16 v9, 0x3b

    invoke-static {v2, v7, v9, v4}, Lifb;->a([BIIB)V

    const/16 v7, 0x48

    const/16 v9, 0x49

    invoke-static {v2, v7, v9, v4}, Lifb;->a([BIIB)V

    const/16 v7, 0x59

    const/16 v9, 0x5b

    invoke-static {v2, v7, v9, v8}, Lifb;->a([BIIB)V

    const/16 v7, 0x68

    invoke-static {v2, v7, v7, v8}, Lifb;->a([BIIB)V

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    :goto_0
    if-ge v4, v0, :cond_0

    aget-byte v7, v3, v4

    aget-byte v8, v2, v7

    and-int/2addr v8, v4

    aget-byte v7, v1, v7

    sget-object v9, Lifb;->a:[S

    shl-int/2addr v8, v5

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v9, v4

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method public static a([BIIB)V
    .locals 0

    :goto_0
    if-gt p1, p2, :cond_0

    aput-byte p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b([BII[C)I
    .locals 6

    add-int/2addr p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_8

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    const/4 v2, -0x1

    if-ltz p1, :cond_1

    array-length v3, p3

    if-lt v0, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-char p1, p1

    aput-char p1, p3, v0

    move p1, v1

    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v3, Lifb;->a:[S

    and-int/lit8 p1, p1, 0x7f

    aget-short p1, v3, p1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte p1, p1

    :goto_1
    if-ltz p1, :cond_3

    if-lt v1, p2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v5, v1, 0x3f

    or-int/2addr v3, v5

    sget-object v5, Lifb;->b:[B

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    aget-byte p1, v5, p1

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_4

    return v2

    :cond_4
    const p1, 0xffff

    if-gt v3, p1, :cond_6

    array-length p1, p3

    if-lt v0, p1, :cond_5

    return v2

    :cond_5
    add-int/lit8 p1, v0, 0x1

    int-to-char v2, v3

    aput-char v2, p3, v0

    move v0, p1

    goto :goto_2

    :cond_6
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-lt v0, p1, :cond_7

    return v2

    :cond_7
    add-int/lit8 p1, v0, 0x1

    ushr-int/lit8 v2, v3, 0xa

    const v4, 0xd7c0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p3, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p3, p1

    :goto_2
    move p1, v1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public static c([B[C)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lifb;->b([BII[C)I

    move-result p0

    return p0
.end method
