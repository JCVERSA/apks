.class public Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;
.super Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
.source "source.java"


# instance fields
.field private final Dq:Landroid/graphics/Paint;

.field private final Jcg:Landroid/graphics/RectF;

.field private final TEQ:Landroid/graphics/Path;

.field private final Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

.field private aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final uA:[F


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Jcg:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/Sj;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Dq:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->uvD()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Jcg:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->TzV()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->dNu()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Jcg:Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Jcg:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->uvD()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x64

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_0
    int-to-float p3, p3

    .line 45
    const/high16 v2, 0x437f0000    # 255.0f

    .line 46
    .line 47
    div-float/2addr p3, v2

    .line 48
    int-to-float v0, v0

    .line 49
    div-float/2addr v0, v2

    .line 50
    int-to-float v1, v1

    .line 51
    mul-float/2addr v0, v1

    .line 52
    const/high16 v1, 0x42c80000    # 100.0f

    .line 53
    .line 54
    div-float/2addr v0, v1

    .line 55
    mul-float/2addr p3, v0

    .line 56
    mul-float/2addr p3, v2

    .line 57
    float-to-int p3, p3

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Dq:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Dq:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/graphics/ColorFilter;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 76
    .line 77
    .line 78
    :cond_2
    if-lez p3, :cond_3

    .line 79
    .line 80
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    const/4 v1, 0x0

    .line 84
    aput v1, p3, v0

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    aput v1, p3, v2

    .line 88
    .line 89
    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->TzV()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    int-to-float v3, v3

    .line 96
    const/4 v4, 0x2

    .line 97
    aput v3, p3, v4

    .line 98
    .line 99
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 100
    .line 101
    const/4 v3, 0x3

    .line 102
    aput v1, p3, v3

    .line 103
    .line 104
    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->TzV()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    int-to-float v5, v5

    .line 111
    const/4 v6, 0x4

    .line 112
    aput v5, p3, v6

    .line 113
    .line 114
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 115
    .line 116
    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->dNu()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    int-to-float v5, v5

    .line 123
    const/4 v7, 0x5

    .line 124
    aput v5, p3, v7

    .line 125
    .line 126
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 127
    .line 128
    const/4 v5, 0x6

    .line 129
    aput v1, p3, v5

    .line 130
    .line 131
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Ym:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->dNu()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    int-to-float v1, v1

    .line 138
    const/4 v8, 0x7

    .line 139
    aput v1, p3, v8

    .line 140
    .line 141
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 152
    .line 153
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 154
    .line 155
    aget v1, p3, v0

    .line 156
    .line 157
    aget p3, p3, v2

    .line 158
    .line 159
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 163
    .line 164
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 165
    .line 166
    aget v1, p3, v4

    .line 167
    .line 168
    aget p3, p3, v3

    .line 169
    .line 170
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 174
    .line 175
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 176
    .line 177
    aget v1, p3, v6

    .line 178
    .line 179
    aget p3, p3, v7

    .line 180
    .line 181
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 185
    .line 186
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 187
    .line 188
    aget v1, p3, v5

    .line 189
    .line 190
    aget p3, p3, v8

    .line 191
    .line 192
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 193
    .line 194
    .line 195
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 196
    .line 197
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->uA:[F

    .line 198
    .line 199
    aget v0, p3, v0

    .line 200
    .line 201
    aget p3, p3, v2

    .line 202
    .line 203
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->TEQ:Landroid/graphics/Path;

    .line 212
    .line 213
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;->Dq:Landroid/graphics/Paint;

    .line 214
    .line 215
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    :cond_3
    return-void
.end method
