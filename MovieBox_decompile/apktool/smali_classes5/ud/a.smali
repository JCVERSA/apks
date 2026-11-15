.class abstract Lud/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static a(Ljava/util/List;)Lkd/a;
    .locals 9

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lud/b;

    .line 20
    .line 21
    invoke-virtual {v2}, Lud/b;->c()Ltd/b;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    add-int/lit8 v1, v0, -0x2

    .line 28
    .line 29
    :cond_0
    mul-int/lit8 v1, v1, 0xc

    .line 30
    .line 31
    new-instance v0, Lkd/a;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lkd/a;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lud/b;

    .line 42
    .line 43
    invoke-virtual {v2}, Lud/b;->c()Ltd/b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ltd/b;->b()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/16 v4, 0xb

    .line 52
    .line 53
    move v5, v4

    .line 54
    :goto_0
    if-ltz v5, :cond_2

    .line 55
    .line 56
    shl-int v6, v3, v5

    .line 57
    .line 58
    and-int/2addr v6, v2

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lkd/a;->r(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    add-int/lit8 v5, v5, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v2, v3

    .line 70
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-ge v2, v5, :cond_7

    .line 75
    .line 76
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lud/b;

    .line 81
    .line 82
    invoke-virtual {v5}, Lud/b;->b()Ltd/b;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ltd/b;->b()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    move v7, v4

    .line 91
    :goto_2
    if-ltz v7, :cond_4

    .line 92
    .line 93
    shl-int v8, v3, v7

    .line 94
    .line 95
    and-int/2addr v8, v6

    .line 96
    if-eqz v8, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lkd/a;->r(I)V

    .line 99
    .line 100
    .line 101
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    add-int/lit8 v7, v7, -0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {v5}, Lud/b;->c()Ltd/b;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_6

    .line 111
    .line 112
    invoke-virtual {v5}, Lud/b;->c()Ltd/b;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Ltd/b;->b()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    move v6, v4

    .line 121
    :goto_3
    if-ltz v6, :cond_6

    .line 122
    .line 123
    shl-int v7, v3, v6

    .line 124
    .line 125
    and-int/2addr v7, v5

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lkd/a;->r(I)V

    .line 129
    .line 130
    .line 131
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    add-int/lit8 v6, v6, -0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    return-object v0
.end method
