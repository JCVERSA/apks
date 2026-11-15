.class public Lcom/warkiz/widget/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:I

.field private b:[I

.field private c:Lcom/warkiz/widget/ArrowView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/LinearLayout;

.field private g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Lcom/warkiz/widget/IndicatorSeekBar;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:F

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/warkiz/widget/d;->b:[I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 12
    .line 13
    iput p3, p0, Lcom/warkiz/widget/d;->h:I

    .line 14
    .line 15
    iput p4, p0, Lcom/warkiz/widget/d;->j:I

    .line 16
    .line 17
    iput-object p7, p0, Lcom/warkiz/widget/d;->m:Landroid/view/View;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/warkiz/widget/d;->n:Landroid/view/View;

    .line 20
    .line 21
    int-to-float p1, p5

    .line 22
    iput p1, p0, Lcom/warkiz/widget/d;->o:F

    .line 23
    .line 24
    iput p6, p0, Lcom/warkiz/widget/d;->p:I

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/warkiz/widget/d;->e()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/warkiz/widget/d;->a:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 33
    .line 34
    const/high16 p2, 0x40000000    # 2.0f

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/warkiz/widget/d;->g:I

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/warkiz/widget/d;->h()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private a(F)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/d;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v1, v0

    .line 15
    add-float/2addr v1, p1

    .line 16
    iget-object v2, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    div-int/lit8 v2, v2, 0x2

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    cmpg-float v1, v1, v2

    .line 30
    .line 31
    if-gez v1, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    div-int/lit8 v1, v1, 0x2

    .line 46
    .line 47
    sub-int/2addr v1, v0

    .line 48
    int-to-float v0, v1

    .line 49
    sub-float/2addr v0, p1

    .line 50
    float-to-int p1, v0

    .line 51
    neg-int v4, p1

    .line 52
    const/4 v6, -0x1

    .line 53
    const/4 v7, -0x1

    .line 54
    const/4 v5, -0x1

    .line 55
    move-object v2, p0

    .line 56
    invoke-direct/range {v2 .. v7}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget v1, p0, Lcom/warkiz/widget/d;->a:I

    .line 61
    .line 62
    sub-int/2addr v1, v0

    .line 63
    int-to-float v1, v1

    .line 64
    sub-float/2addr v1, p1

    .line 65
    iget-object v2, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    div-int/lit8 v2, v2, 0x2

    .line 76
    .line 77
    int-to-float v2, v2

    .line 78
    cmpg-float v1, v1, v2

    .line 79
    .line 80
    if-gez v1, :cond_2

    .line 81
    .line 82
    iget-object v3, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    div-int/lit8 v1, v1, 0x2

    .line 95
    .line 96
    int-to-float v1, v1

    .line 97
    iget v2, p0, Lcom/warkiz/widget/d;->a:I

    .line 98
    .line 99
    sub-int/2addr v2, v0

    .line 100
    int-to-float v0, v2

    .line 101
    sub-float/2addr v0, p1

    .line 102
    sub-float/2addr v1, v0

    .line 103
    float-to-int v4, v1

    .line 104
    const/4 v6, -0x1

    .line 105
    const/4 v7, -0x1

    .line 106
    const/4 v5, -0x1

    .line 107
    move-object v2, p0

    .line 108
    invoke-direct/range {v2 .. v7}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iget-object v9, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v11, 0x0

    .line 118
    move-object v8, p0

    .line 119
    invoke-direct/range {v8 .. v13}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_0
    return-void
.end method

.method private b()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/warkiz/widget/R$drawable;->isb_indicator_rounded_corners:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Lcom/warkiz/widget/R$drawable;->isb_indicator_square_corners:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    .line 35
    :goto_0
    iget v1, p0, Lcom/warkiz/widget/d;->h:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method private c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/warkiz/widget/d;->b:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/warkiz/widget/d;->b:[I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
.end method

.method private e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "window"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method private h()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "id"

    .line 5
    .line 6
    const-string v3, "isb_progress"

    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/warkiz/widget/d;->m:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_6

    .line 37
    .line 38
    iget-object v1, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    instance-of v1, v0, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 66
    .line 67
    iget v2, p0, Lcom/warkiz/widget/d;->o:F

    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/warkiz/widget/g;->b(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 78
    .line 79
    iget v1, p0, Lcom/warkiz/widget/d;->p:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    .line 87
    .line 88
    const-string v1, "the view identified by isb_progress in indicator custom layout can not be cast to TextView"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v1, "the attr\uff1aindicator_custom_layout must be set while you set the indicator type to CUSTOM."

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_2
    const/4 v1, 0x1

    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    .line 105
    new-instance v0, Lcom/warkiz/widget/CircleBubbleView;

    .line 106
    .line 107
    iget-object v5, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 108
    .line 109
    iget v6, p0, Lcom/warkiz/widget/d;->o:F

    .line 110
    .line 111
    iget v7, p0, Lcom/warkiz/widget/d;->p:I

    .line 112
    .line 113
    iget v8, p0, Lcom/warkiz/widget/d;->h:I

    .line 114
    .line 115
    const-string v9, "1000"

    .line 116
    .line 117
    move-object v4, v0

    .line 118
    invoke-direct/range {v4 .. v9}, Lcom/warkiz/widget/CircleBubbleView;-><init>(Landroid/content/Context;FIILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 135
    .line 136
    sget v1, Lcom/warkiz/widget/R$layout;->isb_indicator:I

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 144
    .line 145
    sget v1, Lcom/warkiz/widget/R$id;->indicator_container:I

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 156
    .line 157
    sget v1, Lcom/warkiz/widget/R$id;->indicator_arrow:I

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/warkiz/widget/ArrowView;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    .line 166
    .line 167
    iget v1, p0, Lcom/warkiz/widget/d;->h:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/ArrowView;->setColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 173
    .line 174
    sget v1, Lcom/warkiz/widget/R$id;->isb_progress:I

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroid/widget/TextView;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 196
    .line 197
    iget v4, p0, Lcom/warkiz/widget/d;->o:F

    .line 198
    .line 199
    invoke-static {v1, v4}, Lcom/warkiz/widget/g;->b(Landroid/content/Context;F)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    int-to-float v1, v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 208
    .line 209
    iget v1, p0, Lcom/warkiz/widget/d;->p:I

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/warkiz/widget/d;->b()Landroid/graphics/drawable/GradientDrawable;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/warkiz/widget/d;->n:Landroid/view/View;

    .line 224
    .line 225
    if-eqz v0, :cond_6

    .line 226
    .line 227
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    .line 234
    .line 235
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iget-object v1, p0, Lcom/warkiz/widget/d;->n:Landroid/view/View;

    .line 248
    .line 249
    if-lez v0, :cond_5

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    if-eqz v0, :cond_4

    .line 256
    .line 257
    instance-of v2, v0, Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v2, :cond_4

    .line 260
    .line 261
    check-cast v0, Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {p0, v1, v0}, Lcom/warkiz/widget/d;->n(Landroid/view/View;Landroid/widget/TextView;)V

    .line 264
    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/d;->m(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_5
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/d;->m(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    :cond_6
    :goto_0
    return-void
.end method

.method private k(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne p2, v1, :cond_1

    .line 20
    .line 21
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 22
    .line 23
    :cond_1
    if-ne p3, v1, :cond_2

    .line 24
    .line 25
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    .line 27
    :cond_2
    if-ne p4, v1, :cond_3

    .line 28
    .line 29
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    .line 31
    :cond_3
    if-ne p5, v1, :cond_4

    .line 32
    .line 33
    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 34
    .line 35
    :cond_4
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 39
    .line 40
    .line 41
    :cond_5
    return-void
.end method


# virtual methods
.method d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/widget/PopupWindow;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 21
    .line 22
    const/4 v3, -0x2

    .line 23
    invoke-direct {v0, v2, v3, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 8
    .line 9
    instance-of v2, v1, Lcom/warkiz/widget/CircleBubbleView;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Lcom/warkiz/widget/CircleBubbleView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/warkiz/widget/CircleBubbleView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/warkiz/widget/CircleBubbleView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/warkiz/widget/d;->n(Landroid/view/View;Landroid/widget/TextView;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public n(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/warkiz/widget/d;->b()Landroid/graphics/drawable/GradientDrawable;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method o(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/d;->j()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    const/high16 v3, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr v2, v3

    .line 49
    sub-float v2, p1, v2

    .line 50
    .line 51
    float-to-int v2, v2

    .line 52
    iget-object v3, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v4, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    add-int/2addr v3, v4

    .line 69
    iget-object v4, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    sub-int/2addr v3, v4

    .line 76
    iget v4, p0, Lcom/warkiz/widget/d;->g:I

    .line 77
    .line 78
    add-int/2addr v3, v4

    .line 79
    neg-int v3, v3

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/warkiz/widget/d;->a(F)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method p(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/d;->j()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    div-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    int-to-float v0, v0

    .line 48
    sub-float v0, p1, v0

    .line 49
    .line 50
    float-to-int v4, v0

    .line 51
    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    sub-int/2addr v0, v1

    .line 75
    iget v1, p0, Lcom/warkiz/widget/d;->g:I

    .line 76
    .line 77
    add-int/2addr v0, v1

    .line 78
    neg-int v5, v0

    .line 79
    const/4 v6, -0x1

    .line 80
    const/4 v7, -0x1

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/warkiz/widget/d;->a(F)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method q(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    const/4 v5, -0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    move-object v0, p0

    .line 7
    move v2, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method r(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    const/4 v5, -0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    move-object v0, p0

    .line 7
    move v2, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
