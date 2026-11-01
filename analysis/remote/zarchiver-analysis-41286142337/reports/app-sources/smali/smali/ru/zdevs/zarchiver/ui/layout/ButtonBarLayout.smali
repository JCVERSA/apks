.class public Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->a:Z

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->b:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->c:I

    .line 12
    .line 13
    return-void
.end method

.method private setStacked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const v0, 0x800005

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x50

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0700a6

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x8

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x4

    .line 30
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/lit8 p1, p1, -0x2

    .line 38
    .line 39
    :goto_2
    if-ltz p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->c:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->b:I

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v3}, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->setStacked(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput v0, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->b:I

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 v1, 0x0

    .line 40
    :goto_1
    if-nez v1, :cond_4

    .line 41
    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/high16 v4, 0x40000000    # 2.0f

    .line 47
    .line 48
    if-ne v1, v4, :cond_4

    .line 49
    .line 50
    const/high16 v1, -0x80000000

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move v0, p1

    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_2
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->a:Z

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v2, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_5
    const/4 v0, 0x0

    .line 76
    :goto_3
    if-nez v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/high16 v4, -0x1000000

    .line 83
    .line 84
    and-int/2addr v0, v4

    .line 85
    const/high16 v4, 0x1000000

    .line 86
    .line 87
    if-ne v0, v4, :cond_6

    .line 88
    .line 89
    invoke-direct {p0, v2}, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->setStacked(Z)V

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    :cond_6
    if-eqz v1, :cond_7

    .line 94
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/4 p2, 0x0

    .line 103
    :goto_4
    const/4 v0, -0x1

    .line 104
    if-ge p2, p1, :cond_9

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_8

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_9
    const/4 p2, -0x1

    .line 121
    :goto_5
    if-ltz p2, :cond_f

    .line 122
    .line 123
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    add-int/2addr p1, v4

    .line 142
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 143
    .line 144
    add-int/2addr p1, v4

    .line 145
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 146
    .line 147
    add-int/2addr p1, v1

    .line 148
    add-int/2addr p1, v3

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-ne v1, v2, :cond_a

    .line 154
    .line 155
    const/4 v3, 0x1

    .line 156
    :cond_a
    if-eqz v3, :cond_e

    .line 157
    .line 158
    add-int/2addr p2, v2

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    :goto_6
    if-ge p2, v1, :cond_c

    .line 164
    .line 165
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_b

    .line 174
    .line 175
    move v0, p2

    .line 176
    goto :goto_7

    .line 177
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_c
    :goto_7
    if-ltz v0, :cond_d

    .line 181
    .line 182
    int-to-float p1, p1

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    int-to-float p2, p2

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 201
    .line 202
    const/high16 v1, 0x41800000    # 16.0f

    .line 203
    .line 204
    mul-float v0, v0, v1

    .line 205
    .line 206
    add-float/2addr v0, p2

    .line 207
    add-float/2addr v0, p1

    .line 208
    float-to-int v3, v0

    .line 209
    goto :goto_8

    .line 210
    :cond_d
    move v3, p1

    .line 211
    goto :goto_8

    .line 212
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    add-int v3, p2, p1

    .line 217
    .line 218
    :cond_f
    :goto_8
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->getMinimumHeight()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eq p1, v3, :cond_10

    .line 223
    .line 224
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->setMinimumHeight(I)V

    .line 225
    .line 226
    .line 227
    :cond_10
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->a:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->a:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->setStacked(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lru/zdevs/zarchiver/ui/layout/ButtonBarLayout;->c:I

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
