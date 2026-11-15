.class public Lorg/mvel2/util/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(CII[C)I
    .locals 1

    .line 1
    add-int/2addr p2, p1

    .line 2
    :goto_0
    if-ge p1, p2, :cond_1

    .line 3
    .line 4
    aget-char v0, p3, p1

    .line 5
    .line 6
    if-ne v0, p0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static b(CII[C)I
    .locals 0

    .line 1
    add-int/2addr p1, p2

    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    .line 4
    :goto_0
    if-ltz p1, :cond_1

    .line 5
    .line 6
    aget-char p2, p3, p1

    .line 7
    .line 8
    if-ne p2, p0, :cond_0

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, -0x1

    .line 15
    return p0
.end method
