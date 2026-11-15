.class abstract Lhy/c;
.super Lhy/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhy/c$a;,
        Lhy/c$c;,
        Lhy/c$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method d([BI[[B)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    :goto_0
    if-ge v1, p2, :cond_7

    .line 7
    .line 8
    aget-byte v5, p1, v1

    .line 9
    .line 10
    const/16 v6, 0x1b

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    if-ne v5, v6, :cond_4

    .line 14
    .line 15
    move v5, v0

    .line 16
    :goto_1
    array-length v6, p3

    .line 17
    if-ge v5, v6, :cond_3

    .line 18
    .line 19
    aget-object v6, p3, v5

    .line 20
    .line 21
    sub-int v8, p2, v1

    .line 22
    .line 23
    array-length v9, v6

    .line 24
    if-ge v8, v9, :cond_0

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_0
    move v8, v7

    .line 28
    :goto_2
    array-length v9, v6

    .line 29
    if-ge v8, v9, :cond_2

    .line 30
    .line 31
    aget-byte v9, v6, v8

    .line 32
    .line 33
    add-int v10, v1, v8

    .line 34
    .line 35
    aget-byte v10, p1, v10

    .line 36
    .line 37
    if-eq v9, v10, :cond_1

    .line 38
    .line 39
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    array-length v5, v6

    .line 48
    sub-int/2addr v5, v7

    .line 49
    add-int/2addr v1, v5

    .line 50
    goto :goto_4

    .line 51
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    :cond_4
    aget-byte v5, p1, v1

    .line 54
    .line 55
    const/16 v6, 0xe

    .line 56
    .line 57
    if-eq v5, v6, :cond_5

    .line 58
    .line 59
    const/16 v6, 0xf

    .line 60
    .line 61
    if-ne v5, v6, :cond_6

    .line 62
    .line 63
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    :cond_6
    :goto_4
    add-int/2addr v1, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_7
    if-nez v2, :cond_8

    .line 68
    .line 69
    return v0

    .line 70
    :cond_8
    mul-int/lit8 p1, v2, 0x64

    .line 71
    .line 72
    mul-int/lit8 p2, v3, 0x64

    .line 73
    .line 74
    sub-int/2addr p1, p2

    .line 75
    add-int/2addr v3, v2

    .line 76
    div-int/2addr p1, v3

    .line 77
    add-int/2addr v2, v4

    .line 78
    const/4 p2, 0x5

    .line 79
    if-ge v2, p2, :cond_9

    .line 80
    .line 81
    sub-int/2addr p2, v2

    .line 82
    mul-int/lit8 p2, p2, 0xa

    .line 83
    .line 84
    sub-int/2addr p1, p2

    .line 85
    :cond_9
    if-gez p1, :cond_a

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_a
    move v0, p1

    .line 89
    :goto_5
    return v0
.end method
