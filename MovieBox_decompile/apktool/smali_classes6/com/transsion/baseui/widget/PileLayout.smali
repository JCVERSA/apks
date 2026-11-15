.class public Lcom/transsion/baseui/widget/PileLayout;
.super Landroid/view/ViewGroup;
.source "source.java"


# instance fields
.field protected a:F

.field protected b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/baseui/widget/PileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/baseui/widget/PileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/transsion/baseui/R$styleable;->PileLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/transsion/baseui/R$styleable;->PileLayout_PileLayout_vertivalSpace:I

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p0, p3}, Lcom/transsion/baseui/widget/PileLayout;->dp2px(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/widget/PileLayout;->a:F

    .line 6
    sget p2, Lcom/transsion/baseui/R$styleable;->PileLayout_PileLayout_pileWidth:I

    const/high16 p3, 0x41200000    # 10.0f

    invoke-virtual {p0, p3}, Lcom/transsion/baseui/widget/PileLayout;->dp2px(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/widget/PileLayout;->b:F

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dp2px(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sub-int v1, p4, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    move v7, v6

    .line 20
    move v8, v7

    .line 21
    :goto_0
    if-ge v6, v4, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    const/16 v11, 0x8

    .line 32
    .line 33
    if-ne v10, v11, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    .line 44
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    add-int/2addr v11, v12

    .line 49
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 50
    .line 51
    add-int/2addr v11, v12

    .line 52
    add-int v12, v2, v11

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    add-int/2addr v12, v13

    .line 59
    if-le v12, v1, :cond_1

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    int-to-float v3, v3

    .line 66
    int-to-float v7, v7

    .line 67
    iget v8, v0, Lcom/transsion/baseui/widget/PileLayout;->a:F

    .line 68
    .line 69
    add-float/2addr v7, v8

    .line 70
    add-float/2addr v3, v7

    .line 71
    float-to-int v3, v3

    .line 72
    move v7, v5

    .line 73
    move v8, v7

    .line 74
    :cond_1
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 75
    .line 76
    add-int v13, v2, v12

    .line 77
    .line 78
    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 79
    .line 80
    add-int/2addr v14, v3

    .line 81
    add-int/2addr v12, v2

    .line 82
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    add-int/2addr v12, v15

    .line 87
    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 88
    .line 89
    add-int/2addr v15, v3

    .line 90
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    .line 92
    .line 93
    move-result v16

    .line 94
    add-int v15, v15, v16

    .line 95
    .line 96
    invoke-virtual {v9, v13, v14, v12, v15}, Landroid/view/View;->layout(IIII)V

    .line 97
    .line 98
    .line 99
    add-int/2addr v2, v11

    .line 100
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    .line 102
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    add-int/2addr v11, v9

    .line 107
    iget v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 108
    .line 109
    add-int/2addr v11, v9

    .line 110
    add-int/lit8 v9, v4, -0x1

    .line 111
    .line 112
    if-eq v8, v9, :cond_2

    .line 113
    .line 114
    int-to-float v2, v2

    .line 115
    iget v9, v0, Lcom/transsion/baseui/widget/PileLayout;->b:F

    .line 116
    .line 117
    sub-float/2addr v2, v9

    .line 118
    float-to-int v2, v2

    .line 119
    :cond_2
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    .line 125
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    .line 16
    .line 17
    move-result v9

    .line 18
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v14, 0x0

    .line 30
    const/4 v15, 0x0

    .line 31
    const/16 v16, 0x0

    .line 32
    .line 33
    :goto_0
    if-ge v13, v11, :cond_6

    .line 34
    .line 35
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v17

    .line 39
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    add-int/lit8 v0, v11, -0x1

    .line 48
    .line 49
    if-ne v13, v0, :cond_0

    .line 50
    .line 51
    add-int/2addr v5, v4

    .line 52
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    :cond_0
    move/from16 v19, v10

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    const/4 v3, 0x0

    .line 61
    const/16 v18, 0x0

    .line 62
    .line 63
    move-object/from16 v0, p0

    .line 64
    .line 65
    move-object/from16 v1, v17

    .line 66
    .line 67
    move/from16 v2, p1

    .line 68
    .line 69
    move v12, v4

    .line 70
    move/from16 v4, p2

    .line 71
    .line 72
    move/from16 v19, v10

    .line 73
    .line 74
    move v10, v5

    .line 75
    move/from16 v5, v18

    .line 76
    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    .line 86
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    .line 92
    add-int/2addr v1, v2

    .line 93
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 94
    .line 95
    add-int/2addr v1, v2

    .line 96
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    .line 102
    add-int/2addr v2, v3

    .line 103
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 104
    .line 105
    add-int/2addr v2, v0

    .line 106
    add-int v0, v15, v1

    .line 107
    .line 108
    int-to-float v3, v0

    .line 109
    if-lez v16, :cond_2

    .line 110
    .line 111
    iget v4, v6, Lcom/transsion/baseui/widget/PileLayout;->b:F

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const/4 v4, 0x0

    .line 115
    :goto_1
    sub-float v4, v3, v4

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sub-int v5, v8, v5

    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 124
    .line 125
    .line 126
    move-result v17

    .line 127
    sub-int v5, v5, v17

    .line 128
    .line 129
    int-to-float v5, v5

    .line 130
    cmpl-float v4, v4, v5

    .line 131
    .line 132
    if-lez v4, :cond_3

    .line 133
    .line 134
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    int-to-float v0, v10

    .line 139
    int-to-float v3, v12

    .line 140
    iget v4, v6, Lcom/transsion/baseui/widget/PileLayout;->a:F

    .line 141
    .line 142
    add-float/2addr v3, v4

    .line 143
    add-float/2addr v0, v3

    .line 144
    float-to-int v5, v0

    .line 145
    move v15, v1

    .line 146
    move v4, v2

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    if-lez v16, :cond_4

    .line 151
    .line 152
    iget v0, v6, Lcom/transsion/baseui/widget/PileLayout;->b:F

    .line 153
    .line 154
    sub-float/2addr v3, v0

    .line 155
    float-to-int v0, v3

    .line 156
    :cond_4
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    move v15, v0

    .line 161
    move v4, v1

    .line 162
    move v5, v10

    .line 163
    :goto_2
    add-int/lit8 v0, v11, -0x1

    .line 164
    .line 165
    if-ne v13, v0, :cond_5

    .line 166
    .line 167
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    add-int/2addr v5, v4

    .line 172
    move v14, v0

    .line 173
    :cond_5
    add-int/lit8 v16, v16, 0x1

    .line 174
    .line 175
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 176
    .line 177
    move/from16 v10, v19

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_6
    move/from16 v19, v10

    .line 182
    .line 183
    move v10, v5

    .line 184
    const/high16 v0, 0x40000000    # 2.0f

    .line 185
    .line 186
    if-ne v7, v0, :cond_7

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    add-int/2addr v14, v1

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    add-int v8, v14, v1

    .line 199
    .line 200
    :goto_4
    if-ne v9, v0, :cond_8

    .line 201
    .line 202
    move/from16 v10, v19

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    add-int v5, v10, v0

    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    add-int v10, v5, v0

    .line 216
    .line 217
    :goto_5
    invoke-virtual {v6, v8, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
