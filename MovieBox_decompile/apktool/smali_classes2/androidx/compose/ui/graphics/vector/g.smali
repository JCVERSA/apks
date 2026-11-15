.class public final Landroidx/compose/ui/graphics/vector/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/g;->a:[F

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b(Landroidx/compose/ui/graphics/vector/g;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/16 v3, 0x20

    .line 8
    .line 9
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-gtz v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :goto_1
    if-le v0, v2, :cond_1

    .line 25
    .line 26
    add-int/lit8 v4, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-gtz v4, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v1

    .line 42
    :goto_2
    if-ge v2, v0, :cond_c

    .line 43
    .line 44
    :goto_3
    add-int/lit8 v5, v2, 0x1

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    or-int/lit8 v6, v2, 0x20

    .line 51
    .line 52
    add-int/lit8 v7, v6, -0x61

    .line 53
    .line 54
    add-int/lit8 v8, v6, -0x7a

    .line 55
    .line 56
    mul-int/2addr v7, v8

    .line 57
    if-gtz v7, :cond_2

    .line 58
    .line 59
    const/16 v7, 0x65

    .line 60
    .line 61
    if-eq v6, v7, :cond_2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    if-lt v5, v0, :cond_b

    .line 65
    .line 66
    move v2, v1

    .line 67
    :goto_4
    if-eqz v2, :cond_a

    .line 68
    .line 69
    or-int/lit8 v6, v2, 0x20

    .line 70
    .line 71
    const/16 v7, 0x7a

    .line 72
    .line 73
    if-eq v6, v7, :cond_9

    .line 74
    .line 75
    move v4, v1

    .line 76
    :goto_5
    if-ge v5, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-gtz v6, :cond_3

    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_3
    invoke-static {p1, v5, v0}, Landroidx/compose/ui/graphics/vector/b;->a(Ljava/lang/String;II)J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    ushr-long v7, v5, v3

    .line 96
    .line 97
    long-to-int v7, v7

    .line 98
    const-wide v8, 0xffffffffL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    and-long/2addr v5, v8

    .line 104
    long-to-int v5, v5

    .line 105
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_5

    .line 114
    .line 115
    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/g;->a:[F

    .line 116
    .line 117
    add-int/lit8 v8, v4, 0x1

    .line 118
    .line 119
    aput v5, v6, v4

    .line 120
    .line 121
    array-length v4, v6

    .line 122
    if-lt v8, v4, :cond_4

    .line 123
    .line 124
    mul-int/lit8 v4, v8, 0x2

    .line 125
    .line 126
    new-array v4, v4, [F

    .line 127
    .line 128
    iput-object v4, p0, Landroidx/compose/ui/graphics/vector/g;->a:[F

    .line 129
    .line 130
    array-length v9, v6

    .line 131
    invoke-static {v6, v4, v1, v1, v9}, Lkotlin/collections/ArraysKt;->i([F[FIII)[F

    .line 132
    .line 133
    .line 134
    :cond_4
    move v4, v8

    .line 135
    :cond_5
    :goto_6
    if-ge v7, v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    const/16 v8, 0x2c

    .line 142
    .line 143
    if-ne v6, v8, :cond_6

    .line 144
    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_6
    if-ge v7, v0, :cond_8

    .line 149
    .line 150
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_7

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_7
    move v5, v7

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    :goto_7
    move v5, v7

    .line 160
    :cond_9
    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/g;->a:[F

    .line 161
    .line 162
    invoke-static {v2, p2, v6, v4}, Landroidx/compose/ui/graphics/vector/f;->a(CLjava/util/ArrayList;[FI)V

    .line 163
    .line 164
    .line 165
    :cond_a
    move v2, v5

    .line 166
    goto :goto_2

    .line 167
    :cond_b
    move v2, v5

    .line 168
    goto :goto_3

    .line 169
    :cond_c
    return-object p2
.end method
