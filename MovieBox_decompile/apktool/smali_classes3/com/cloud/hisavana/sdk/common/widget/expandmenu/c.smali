.class public abstract Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->h(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->g(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->d(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static d(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 9

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->arrow_up:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->arrow_down:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v3, v2, [I

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aget v5, v3, v4

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 23
    .line 24
    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    const/high16 v6, 0x43520000    # 210.0f

    .line 28
    .line 29
    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/high16 v7, 0x41300000    # 11.0f

    .line 34
    .line 35
    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/high16 v8, 0x41000000    # 8.0f

    .line 40
    .line 41
    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    sub-int/2addr v3, v5

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    div-int/2addr p1, v2

    .line 51
    add-int/2addr v3, p1

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    div-int/2addr p1, v2

    .line 57
    sub-int/2addr v3, p1

    .line 58
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    sub-int/2addr v6, v7

    .line 63
    sub-int/2addr v6, v8

    .line 64
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .line 74
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    .line 83
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 84
    .line 85
    .line 86
    const/16 p1, 0x8

    .line 87
    .line 88
    if-eqz p2, :cond_0

    .line 89
    .line 90
    move v2, p1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move v2, v4

    .line 93
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    move v4, p1

    .line 100
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private static e(Landroid/view/View;Landroid/view/View;)[I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aget v4, v0, v3

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    add-int/2addr v4, v5

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    sub-int/2addr v4, v5

    .line 28
    const/high16 v5, 0x41000000    # 8.0f

    .line 29
    .line 30
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v4, v5

    .line 35
    const/high16 v5, 0x40800000    # 4.0f

    .line 36
    .line 37
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    sub-int/2addr v1, v6

    .line 50
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    sub-int/2addr v1, v5

    .line 55
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v4, 0x1

    .line 60
    aget v5, v0, v4

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    add-int/2addr v5, p0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    add-int/2addr p0, v5

    .line 72
    const/high16 v6, 0x41a00000    # 20.0f

    .line 73
    .line 74
    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    add-int/2addr p0, v6

    .line 79
    if-le p0, v2, :cond_0

    .line 80
    .line 81
    aget p0, v0, v4

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    sub-int v5, p0, p1

    .line 88
    .line 89
    move v3, v4

    .line 90
    :cond_0
    filled-new-array {v1, v5, v3}, [I

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method private static f(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static synthetic g(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->f(Landroid/widget/PopupWindow;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic h(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->f(Landroid/widget/PopupWindow;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;->a(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "#33000000"

    .line 15
    .line 16
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    .line 24
    .line 25
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->setAdvertiserName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/high16 p1, 0x43520000    # 210.0f

    .line 36
    .line 37
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/high16 v3, 0x40000000    # 2.0f

    .line 42
    .line 43
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-direct {p1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/widget/PopupWindow;

    .line 72
    .line 73
    const/4 v4, -0x1

    .line 74
    invoke-direct {p1, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 75
    .line 76
    .line 77
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 78
    .line 79
    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    sget v4, Landroidx/appcompat/R$style;->Animation_AppCompat_Dialog:I

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 88
    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 101
    .line 102
    .line 103
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 v6, 0x1d

    .line 106
    .line 107
    if-lt v5, v6, :cond_1

    .line 108
    .line 109
    invoke-static {p1, v4}, Lh7/a;->a(Landroid/widget/PopupWindow;Z)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->e(Landroid/view/View;Landroid/view/View;)[I

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const/4 v6, 0x2

    .line 120
    aget v6, v5, v6

    .line 121
    .line 122
    if-ne v6, v4, :cond_2

    .line 123
    .line 124
    move v6, v4

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    move v6, v3

    .line 127
    :goto_0
    new-instance v7, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;

    .line 128
    .line 129
    invoke-direct {v7, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;-><init>(Landroid/widget/PopupWindow;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v7, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;

    .line 140
    .line 141
    invoke-direct {v7, v2, p0, v6}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;

    .line 148
    .line 149
    invoke-direct {v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;-><init>(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->setListener(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    .line 153
    .line 154
    .line 155
    aget p2, v5, v3

    .line 156
    .line 157
    aget v1, v5, v4

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    .line 165
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 166
    .line 167
    .line 168
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 169
    .line 170
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p0, v3, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    return-object p1

    .line 177
    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    const-string p1, "AdExpandMenu"

    .line 182
    .line 183
    const-string p2, "Failed to show adexpandmenu."

    .line 184
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object v0
.end method
