.class public Lg00/d;
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

.method public static a([CI)I
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    :goto_0
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    aget-char v1, p0, p1

    .line 5
    .line 6
    const/16 v2, 0x28

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    const/16 v2, 0x3b

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v2, 0x5b

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x7b

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/16 v2, 0x7d

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    return p1

    .line 28
    :cond_1
    invoke-static {p0, p1, v1}, Lorg/mvel2/util/m;->c([CIC)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return p1
.end method
