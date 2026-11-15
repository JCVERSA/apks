.class public Lcom/bytedance/sdk/component/adexpress/vS/EjP;
.super Landroid/view/View;
.source "source.java"


# instance fields
.field private Dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private EjP:I

.field private Fmk:F

.field private HiB:F

.field private Jcg:Z

.field private Sj:I

.field private TEQ:Landroid/graphics/Paint;

.field private TKC:F

.field private Ym:Landroid/graphics/Paint;

.field private aa:F

.field private sP:I

.field private sef:I

.field private uA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Sj:I

    const/high16 p1, -0x10000

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sP:I

    const/high16 p1, 0x41900000    # 18.0f

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC:F

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->EjP:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->HiB:F

    const/4 p1, 0x2

    .line 9
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->vS:I

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Jcg:Z

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    const/16 p1, 0x18

    .line 13
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sef:I

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC()V

    return-void
.end method

.method private TKC()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 13
    .line 14
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sef:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 21
    .line 22
    const/16 v2, 0xff

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Ym:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Ym:Landroid/graphics/Paint;

    .line 52
    .line 53
    const-string v1, "#0FFFFFFF"

    .line 54
    .line 55
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Ym:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Jcg:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 2
    .line 3
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 4
    .line 5
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->aa:F

    .line 6
    .line 7
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Fmk:F

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v5, v1

    .line 14
    const v7, 0xffffff

    .line 15
    .line 16
    .line 17
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v6, -0x1

    .line 21
    move-object v1, v9

    .line 22
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    move v1, v0

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x1

    .line 38
    if-ge v1, v2, :cond_3

    .line 39
    .line 40
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/Integer;

    .line 64
    .line 65
    iget v6, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC:F

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    int-to-float v7, v7

    .line 72
    add-float/2addr v6, v7

    .line 73
    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->HiB:F

    .line 74
    .line 75
    cmpg-float v6, v6, v7

    .line 76
    .line 77
    if-gez v6, :cond_0

    .line 78
    .line 79
    iget v6, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->aa:F

    .line 80
    .line 81
    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Fmk:F

    .line 82
    .line 83
    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC:F

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    int-to-float v9, v9

    .line 90
    add-float/2addr v8, v9

    .line 91
    iget-object v9, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-lez v6, :cond_2

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    int-to-float v6, v6

    .line 107
    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->HiB:F

    .line 108
    .line 109
    cmpg-float v6, v6, v7

    .line 110
    .line 111
    if-gez v6, :cond_2

    .line 112
    .line 113
    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->vS:I

    .line 120
    .line 121
    sub-int/2addr v7, v8

    .line 122
    if-lez v7, :cond_1

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->vS:I

    .line 129
    .line 130
    mul-int/2addr v4, v3

    .line 131
    sub-int v4, v2, v4

    .line 132
    .line 133
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v6, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->vS:I

    .line 147
    .line 148
    add-int/2addr v3, v4

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    sub-int/2addr v2, v4

    .line 167
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    int-to-float v1, v1

    .line 178
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->HiB:F

    .line 179
    .line 180
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->EjP:I

    .line 181
    .line 182
    int-to-float v4, v4

    .line 183
    div-float/2addr v2, v4

    .line 184
    cmpl-float v1, v1, v2

    .line 185
    .line 186
    const/16 v2, 0xff

    .line 187
    .line 188
    if-ltz v1, :cond_4

    .line 189
    .line 190
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 191
    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-lt v1, v3, :cond_5

    .line 215
    .line 216
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TEQ:Landroid/graphics/Paint;

    .line 232
    .line 233
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sP:I

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    .line 237
    .line 238
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->aa:F

    .line 239
    .line 240
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Fmk:F

    .line 241
    .line 242
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC:F

    .line 243
    .line 244
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Ym:Landroid/graphics/Paint;

    .line 245
    .line 246
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    .line 248
    .line 249
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Jcg:Z

    .line 250
    .line 251
    if-eqz p1, :cond_6

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->invalidate()V

    .line 254
    .line 255
    .line 256
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->aa:F

    .line 9
    .line 10
    int-to-float p2, p2

    .line 11
    div-float/2addr p2, p3

    .line 12
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Fmk:F

    .line 13
    .line 14
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sef:I

    .line 15
    .line 16
    int-to-float p2, p2

    .line 17
    div-float/2addr p2, p3

    .line 18
    sub-float/2addr p1, p2

    .line 19
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->HiB:F

    .line 20
    .line 21
    const/high16 p2, 0x40800000    # 4.0f

    .line 22
    .line 23
    div-float/2addr p1, p2

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC:F

    .line 25
    .line 26
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->invalidate()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public sP()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Jcg:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Dq:Ljava/util/List;

    .line 15
    .line 16
    const/16 v2, 0xff

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->uA:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Sj:I

    .line 2
    .line 3
    return-void
.end method

.method public setCoreColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sP:I

    .line 2
    .line 3
    return-void
.end method

.method public setCoreRadius(I)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->TKC:F

    .line 3
    .line 4
    return-void
.end method

.method public setDiffuseSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->vS:I

    .line 2
    .line 3
    return-void
.end method

.method public setDiffuseWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->EjP:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->HiB:F

    .line 3
    .line 4
    return-void
.end method
