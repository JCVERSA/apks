.class Lhy/g$w;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation


# instance fields
.field protected a:I

.field private b:I

.field private c:[I

.field protected d:[B

.field private e:I

.field private f:I

.field protected g:B


# direct methods
.method public constructor <init>([I[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lhy/g$w;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Lhy/g$w;->c:[I

    .line 8
    .line 9
    iput-object p2, p0, Lhy/g$w;->d:[B

    .line 10
    .line 11
    iput v0, p0, Lhy/g$w;->b:I

    .line 12
    .line 13
    iput v0, p0, Lhy/g$w;->f:I

    .line 14
    .line 15
    iput v0, p0, Lhy/g$w;->e:I

    .line 16
    .line 17
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lhy/g$w;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lhy/g$w;->e:I

    .line 6
    .line 7
    iget-object v0, p0, Lhy/g$w;->c:[I

    .line 8
    .line 9
    invoke-static {v0, p1}, Lhy/g$w;->f([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lhy/g$w;->f:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Lhy/g$w;->f:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private c(Lhy/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lhy/g$w;->a:I

    .line 2
    .line 3
    iget v1, p1, Lhy/a;->b:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p1, p1, Lhy/a;->a:[B

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iput v1, p0, Lhy/g$w;->a:I

    .line 14
    .line 15
    aget-byte p1, p1, v0

    .line 16
    .line 17
    and-int/lit16 p1, p1, 0xff

    .line 18
    .line 19
    return p1
.end method

.method private static f([II)I
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    aget v1, p0, v0

    .line 4
    .line 5
    if-gt v1, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    add-int/lit8 v1, v0, 0x10

    .line 10
    .line 11
    aget v2, p0, v1

    .line 12
    .line 13
    if-gt v2, p1, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    :cond_1
    add-int/lit8 v1, v0, 0x8

    .line 17
    .line 18
    aget v2, p0, v1

    .line 19
    .line 20
    if-gt v2, p1, :cond_2

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_2
    add-int/lit8 v1, v0, 0x4

    .line 24
    .line 25
    aget v2, p0, v1

    .line 26
    .line 27
    if-gt v2, p1, :cond_3

    .line 28
    .line 29
    move v0, v1

    .line 30
    :cond_3
    add-int/lit8 v1, v0, 0x2

    .line 31
    .line 32
    aget v2, p0, v1

    .line 33
    .line 34
    if-gt v2, p1, :cond_4

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 38
    .line 39
    aget v2, p0, v1

    .line 40
    .line 41
    if-gt v2, p1, :cond_5

    .line 42
    .line 43
    move v0, v1

    .line 44
    :cond_5
    aget v1, p0, v0

    .line 45
    .line 46
    if-le v1, p1, :cond_6

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    :cond_6
    if-ltz v0, :cond_8

    .line 51
    .line 52
    aget p0, p0, v0

    .line 53
    .line 54
    if-eq p0, p1, :cond_7

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    return v0

    .line 58
    :cond_8
    :goto_1
    const/4 p0, -0x1

    .line 59
    return p0
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lhy/g$w;->b:I

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    and-int/lit16 p1, p1, 0xff

    .line 6
    .line 7
    add-int/2addr v0, p1

    .line 8
    const p1, 0xffffff

    .line 9
    .line 10
    .line 11
    and-int/2addr p1, v0

    .line 12
    iput p1, p0, Lhy/g$w;->b:I

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lhy/g$w;->b(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d(Lhy/a;B)I
    .locals 2

    .line 1
    iput-byte p2, p0, Lhy/g$w;->g:B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhy/g$w;->e(Lhy/a;)V

    .line 4
    .line 5
    .line 6
    iget-byte p1, p0, Lhy/g$w;->g:B

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lhy/g$w;->a(I)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lhy/g$w;->f:I

    .line 12
    .line 13
    int-to-double p1, p1

    .line 14
    iget v0, p0, Lhy/g$w;->e:I

    .line 15
    .line 16
    int-to-double v0, v0

    .line 17
    div-double/2addr p1, v0

    .line 18
    const-wide v0, 0x3fd51eb851eb851fL    # 0.33

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmpl-double v0, p1, v0

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    const/16 p1, 0x62

    .line 28
    .line 29
    return p1

    .line 30
    :cond_0
    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr p1, v0

    .line 36
    double-to-int p1, p1

    .line 37
    return p1
.end method

.method protected e(Lhy/a;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    move v1, v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lhy/g$w;->c(Lhy/a;)I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ltz v2, :cond_4

    .line 8
    .line 9
    iget-object v3, p0, Lhy/g$w;->d:[B

    .line 10
    .line 11
    aget-byte v2, v3, v2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-byte v3, p0, Lhy/g$w;->g:B

    .line 16
    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    :cond_2
    invoke-virtual {p0, v2}, Lhy/g$w;->a(I)V

    .line 22
    .line 23
    .line 24
    :cond_3
    iget-byte v1, p0, Lhy/g$w;->g:B

    .line 25
    .line 26
    if-ne v2, v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_4
    return-void
.end method
