.class public abstract Lzg/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroid/graphics/Bitmap;II)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "bitmap"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/high16 v3, -0x1000000

    .line 13
    .line 14
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-lez v4, :cond_8

    .line 25
    .line 26
    if-lez v5, :cond_8

    .line 27
    .line 28
    if-lt v1, v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    invoke-static {v1, v6}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->s(II)Lkotlin/ranges/IntRange;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/16 v2, 0xa

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->r(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->i()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->l()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lez v1, :cond_1

    .line 64
    .line 65
    if-le v5, v7, :cond_2

    .line 66
    .line 67
    :cond_1
    if-gez v1, :cond_7

    .line 68
    .line 69
    if-gt v7, v5, :cond_7

    .line 70
    .line 71
    :cond_2
    move v8, v6

    .line 72
    move v9, v8

    .line 73
    move v10, v9

    .line 74
    move v11, v10

    .line 75
    :goto_0
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->s(II)Lkotlin/ranges/IntRange;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    invoke-static {v12, v2}, Lkotlin/ranges/RangesKt;->r(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->f()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->i()I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->l()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-lez v12, :cond_3

    .line 96
    .line 97
    if-le v13, v14, :cond_4

    .line 98
    .line 99
    :cond_3
    if-gez v12, :cond_5

    .line 100
    .line 101
    if-gt v14, v13, :cond_5

    .line 102
    .line 103
    :cond_4
    :goto_1
    invoke-virtual {v0, v13, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    add-int v8, v8, v16

    .line 112
    .line 113
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    add-int v9, v9, v16

    .line 118
    .line 119
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    add-int/2addr v10, v15

    .line 124
    add-int/lit8 v11, v11, 0x1

    .line 125
    .line 126
    if-eq v13, v14, :cond_5

    .line 127
    .line 128
    add-int/2addr v13, v12

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    if-eq v5, v7, :cond_6

    .line 133
    .line 134
    add-int/2addr v5, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    move v6, v11

    .line 137
    goto :goto_2

    .line 138
    :cond_7
    move v8, v6

    .line 139
    move v9, v8

    .line 140
    move v10, v9

    .line 141
    :goto_2
    if-nez v6, :cond_9

    .line 142
    .line 143
    :cond_8
    :goto_3
    move v0, v3

    .line 144
    goto :goto_4

    .line 145
    :cond_9
    div-int/2addr v8, v6

    .line 146
    div-int/2addr v9, v6

    .line 147
    div-int/2addr v10, v6

    .line 148
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    goto :goto_6

    .line 161
    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 162
    .line 163
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v1, :cond_a

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_7
    check-cast v0, Ljava/lang/Number;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    return v0
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;IIILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :cond_1
    invoke-static {p0, p1, p2}, Lzg/a;->a(Landroid/graphics/Bitmap;II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method
