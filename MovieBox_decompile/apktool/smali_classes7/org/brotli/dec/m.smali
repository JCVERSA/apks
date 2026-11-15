.class abstract Lorg/brotli/dec/m;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static a(I)I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p0, p0, -0xb

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method static b(I)I
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method
