.class abstract Lhy/e$c;
.super Lhy/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method c(Lhy/a;)Lhy/b;
    .locals 10

    .line 1
    iget-object v0, p1, Lhy/a;->e:[B

    .line 2
    .line 3
    iget v1, p1, Lhy/a;->f:I

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x4

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v3}, Lhy/e$c;->f([BI)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const v5, 0xfeff

    .line 19
    .line 20
    .line 21
    if-ne v4, v5, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v4, v3

    .line 26
    :goto_0
    move v5, v3

    .line 27
    move v6, v5

    .line 28
    move v7, v6

    .line 29
    :goto_1
    if-ge v5, v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0, v0, v5}, Lhy/e$c;->f([BI)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-ltz v8, :cond_3

    .line 36
    .line 37
    const v9, 0x10ffff

    .line 38
    .line 39
    .line 40
    if-ge v8, v9, :cond_3

    .line 41
    .line 42
    const v9, 0xd800

    .line 43
    .line 44
    .line 45
    if-lt v8, v9, :cond_2

    .line 46
    .line 47
    const v9, 0xdfff

    .line 48
    .line 49
    .line 50
    if-gt v8, v9, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    :goto_3
    add-int/lit8 v5, v5, 0x4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    const/16 v0, 0x64

    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    if-nez v6, :cond_5

    .line 66
    .line 67
    :goto_4
    move v3, v0

    .line 68
    goto :goto_6

    .line 69
    :cond_5
    const/16 v1, 0x50

    .line 70
    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    mul-int/lit8 v4, v6, 0xa

    .line 74
    .line 75
    if-le v7, v4, :cond_6

    .line 76
    .line 77
    :goto_5
    move v3, v1

    .line 78
    goto :goto_6

    .line 79
    :cond_6
    const/4 v4, 0x3

    .line 80
    if-le v7, v4, :cond_7

    .line 81
    .line 82
    if-nez v6, :cond_7

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    if-lez v7, :cond_8

    .line 86
    .line 87
    if-nez v6, :cond_8

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_8
    mul-int/lit8 v6, v6, 0xa

    .line 91
    .line 92
    if-le v7, v6, :cond_9

    .line 93
    .line 94
    const/16 v3, 0x19

    .line 95
    .line 96
    :cond_9
    :goto_6
    if-nez v3, :cond_a

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_a
    new-instance v2, Lhy/b;

    .line 100
    .line 101
    invoke-direct {v2, p1, p0, v3}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 102
    .line 103
    .line 104
    :goto_7
    return-object v2
.end method

.method abstract f([BI)I
.end method
