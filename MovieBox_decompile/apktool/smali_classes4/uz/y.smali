.class public abstract Luz/y;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Luz/y;BB)B
    .locals 4

    .line 1
    invoke-virtual {p0}, Luz/y;->f()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Luz/y;->e()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/2addr v1, p2

    .line 10
    invoke-virtual {p0}, Luz/y;->a()[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    and-int/lit16 v3, p1, 0xff

    .line 15
    .line 16
    shr-int/lit8 v3, v3, 0x3

    .line 17
    .line 18
    aget v2, v2, v3

    .line 19
    .line 20
    and-int/lit8 p1, p1, 0x7

    .line 21
    .line 22
    shl-int/lit8 p1, p1, 0x2

    .line 23
    .line 24
    shr-int/2addr v2, p1

    .line 25
    and-int/lit8 v2, v2, 0xf

    .line 26
    .line 27
    add-int/2addr v1, v2

    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 29
    .line 30
    shr-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    aget v0, v0, v1

    .line 33
    .line 34
    invoke-virtual {p0}, Luz/y;->e()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    mul-int/2addr p2, v1

    .line 39
    invoke-virtual {p0}, Luz/y;->a()[I

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    aget p0, p0, v3

    .line 44
    .line 45
    shr-int/2addr p0, p1

    .line 46
    and-int/lit8 p0, p0, 0xf

    .line 47
    .line 48
    add-int/2addr p2, p0

    .line 49
    and-int/lit8 p0, p2, 0x7

    .line 50
    .line 51
    shl-int/lit8 p0, p0, 0x2

    .line 52
    .line 53
    shr-int p0, v0, p0

    .line 54
    .line 55
    and-int/lit8 p0, p0, 0xf

    .line 56
    .line 57
    int-to-byte p0, p0

    .line 58
    return p0
.end method


# virtual methods
.method public abstract a()[I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method

.method public abstract e()I
.end method

.method public abstract f()[I
.end method
