.class public Leb/a;
.super Lcb/i;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/internal/y$b;


# static fields
.field private static final R:I

.field private static final S:I


# instance fields
.field private final A:Landroid/content/Context;

.field private final B:Landroid/graphics/Paint$FontMetrics;

.field private final C:Lcom/google/android/material/internal/y;

.field private final D:Landroid/view/View$OnLayoutChangeListener;

.field private final E:Landroid/graphics/Rect;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:I

.field private L:I

.field private M:F

.field private N:F

.field private final O:F

.field private P:F

.field private Q:F

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 2
    .line 3
    sput v0, Leb/a;->R:I

    .line 4
    .line 5
    sget v0, Lcom/google/android/material/R$attr;->tooltipStyle:I

    .line 6
    .line 7
    sput v0, Leb/a;->S:I

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcb/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Leb/a;->B:Landroid/graphics/Paint$FontMetrics;

    .line 10
    .line 11
    new-instance p2, Lcom/google/android/material/internal/y;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/y;-><init>(Lcom/google/android/material/internal/y$b;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 17
    .line 18
    new-instance p3, Leb/a$a;

    .line 19
    .line 20
    invoke-direct {p3, p0}, Leb/a$a;-><init>(Leb/a;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Leb/a;->D:Landroid/view/View$OnLayoutChangeListener;

    .line 24
    .line 25
    new-instance p3, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Leb/a;->E:Landroid/graphics/Rect;

    .line 31
    .line 32
    const/high16 p3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    iput p3, p0, Leb/a;->M:F

    .line 35
    .line 36
    iput p3, p0, Leb/a;->N:F

    .line 37
    .line 38
    const/high16 p4, 0x3f000000    # 0.5f

    .line 39
    .line 40
    iput p4, p0, Leb/a;->O:F

    .line 41
    .line 42
    iput p4, p0, Leb/a;->P:F

    .line 43
    .line 44
    iput p3, p0, Leb/a;->Q:F

    .line 45
    .line 46
    iput-object p1, p0, Leb/a;->A:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 61
    .line 62
    iput p1, p3, Landroid/text/TextPaint;->density:F

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private A0()F
    .locals 2

    .line 1
    iget-object v0, p0, Leb/a;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/y;->h(Ljava/lang/String;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private B0(Landroid/util/AttributeSet;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Leb/a;->A:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v2, Lcom/google/android/material/R$styleable;->Tooltip:[I

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    new-array v5, v6, [I

    .line 7
    .line 8
    move-object v1, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/b0;->i(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Leb/a;->A:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget p3, Lcom/google/android/material/R$dimen;->mtrl_tooltip_arrowSize:I

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Leb/a;->K:I

    .line 28
    .line 29
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_showMarker:I

    .line 30
    .line 31
    const/4 p3, 0x1

    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput-boolean p2, p0, Leb/a;->J:Z

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcb/i;->G()Lcb/n;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcb/n;->v()Lcb/n$b;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p0}, Leb/a;->x0()Lcb/g;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Lcb/n$b;->s(Lcb/g;)Lcb/n$b;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcb/n$b;->m()Lcb/n;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p0, p2}, Lcb/i;->setShapeAppearanceModel(Lcb/n;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iput v6, p0, Leb/a;->K:I

    .line 65
    .line 66
    :goto_0
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_text:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p0, p2}, Leb/a;->E0(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Leb/a;->A:Landroid/content/Context;

    .line 76
    .line 77
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textAppearance:I

    .line 78
    .line 79
    invoke-static {p2, p1, p3}, Lza/c;->h(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lza/d;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    iget-object p3, p0, Leb/a;->A:Landroid/content/Context;

    .line 94
    .line 95
    sget v0, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    .line 96
    .line 97
    invoke-static {p3, p1, v0}, Lza/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p2, p3}, Lza/d;->k(Landroid/content/res/ColorStateList;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {p0, p2}, Leb/a;->F0(Lza/d;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Leb/a;->A:Landroid/content/Context;

    .line 108
    .line 109
    sget p3, Lcom/google/android/material/R$attr;->colorOnBackground:I

    .line 110
    .line 111
    const-class v0, Leb/a;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {p2, p3, v1}, Lcom/google/android/material/color/b;->c(Landroid/content/Context;ILjava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    iget-object p3, p0, Leb/a;->A:Landroid/content/Context;

    .line 122
    .line 123
    const v1, 0x1010031

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {p3, v1, v2}, Lcom/google/android/material/color/b;->c(Landroid/content/Context;ILjava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    const/16 v1, 0xe5

    .line 135
    .line 136
    invoke-static {p3, v1}, Lz0/b;->p(II)I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    const/16 v1, 0x99

    .line 141
    .line 142
    invoke-static {p2, v1}, Lz0/b;->p(II)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-static {p3, p2}, Lcom/google/android/material/color/b;->i(II)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_backgroundTint:I

    .line 151
    .line 152
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p0, p2}, Lcb/i;->d0(Landroid/content/res/ColorStateList;)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p0, Leb/a;->A:Landroid/content/Context;

    .line 164
    .line 165
    sget p3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p2, p3, v0}, Lcom/google/android/material/color/b;->c(Landroid/content/Context;ILjava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p0, p2}, Lcb/i;->n0(Landroid/content/res/ColorStateList;)V

    .line 180
    .line 181
    .line 182
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_padding:I

    .line 183
    .line 184
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    iput p2, p0, Leb/a;->F:I

    .line 189
    .line 190
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minWidth:I

    .line 191
    .line 192
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    iput p2, p0, Leb/a;->G:I

    .line 197
    .line 198
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minHeight:I

    .line 199
    .line 200
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    iput p2, p0, Leb/a;->H:I

    .line 205
    .line 206
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_layout_margin:I

    .line 207
    .line 208
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    iput p2, p0, Leb/a;->I:I

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method private G0(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    iput v0, p0, Leb/a;->L:I

    .line 11
    .line 12
    iget-object v0, p0, Leb/a;->E:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static synthetic s0(Leb/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leb/a;->G0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t0()F
    .locals 2

    .line 1
    iget-object v0, p0, Leb/a;->E:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iget v1, p0, Leb/a;->L:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget v1, p0, Leb/a;->I:I

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Leb/a;->E:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    sub-int/2addr v0, v1

    .line 31
    iget v1, p0, Leb/a;->L:I

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    iget v1, p0, Leb/a;->I:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    :goto_0
    int-to-float v0, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Leb/a;->E:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    sub-int/2addr v0, v1

    .line 50
    iget v1, p0, Leb/a;->L:I

    .line 51
    .line 52
    sub-int/2addr v0, v1

    .line 53
    iget v1, p0, Leb/a;->I:I

    .line 54
    .line 55
    add-int/2addr v0, v1

    .line 56
    if-lez v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Leb/a;->E:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    sub-int/2addr v0, v1

    .line 69
    iget v1, p0, Leb/a;->L:I

    .line 70
    .line 71
    sub-int/2addr v0, v1

    .line 72
    iget v1, p0, Leb/a;->I:I

    .line 73
    .line 74
    add-int/2addr v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    .line 77
    :goto_1
    return v0
.end method

.method private u0()F
    .locals 2

    .line 1
    iget-object v0, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Leb/a;->B:Landroid/graphics/Paint$FontMetrics;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Leb/a;->B:Landroid/graphics/Paint$FontMetrics;

    .line 13
    .line 14
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 15
    .line 16
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 17
    .line 18
    add-float/2addr v1, v0

    .line 19
    const/high16 v0, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v1, v0

    .line 22
    return v1
.end method

.method private v0(Landroid/graphics/Rect;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-direct {p0}, Leb/a;->u0()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sub-float/2addr p1, v0

    .line 11
    return p1
.end method

.method public static w0(Landroid/content/Context;Landroid/util/AttributeSet;II)Leb/a;
    .locals 1

    .line 1
    new-instance v0, Leb/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Leb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Leb/a;->B0(Landroid/util/AttributeSet;II)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private x0()Lcb/g;
    .locals 7

    .line 1
    invoke-direct {p0}, Leb/a;->t0()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-double v1, v1

    .line 15
    iget v3, p0, Leb/a;->K:I

    .line 16
    .line 17
    int-to-double v3, v3

    .line 18
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 19
    .line 20
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    mul-double/2addr v3, v5

    .line 25
    sub-double/2addr v1, v3

    .line 26
    double-to-float v1, v1

    .line 27
    const/high16 v2, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v1, v2

    .line 30
    neg-float v2, v1

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    new-instance v1, Lcb/k;

    .line 40
    .line 41
    new-instance v2, Lcb/h;

    .line 42
    .line 43
    iget v3, p0, Leb/a;->K:I

    .line 44
    .line 45
    int-to-float v3, v3

    .line 46
    invoke-direct {v2, v3}, Lcb/h;-><init>(F)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2, v0}, Lcb/k;-><init>(Lcb/g;F)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method private z0(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Leb/a;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Leb/a;->v0(Landroid/graphics/Rect;)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    iget-object v2, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/internal/y;->e()Lza/d;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 34
    .line 35
    iget-object v2, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 36
    .line 37
    iget-object v3, p0, Leb/a;->A:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/y;->n(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget v3, p0, Leb/a;->Q:F

    .line 49
    .line 50
    const/high16 v4, 0x437f0000    # 255.0f

    .line 51
    .line 52
    mul-float/2addr v3, v4

    .line 53
    float-to-int v3, v3

    .line 54
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v5, p0, Leb/a;->z:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-float v8, v0

    .line 68
    int-to-float v9, v1

    .line 69
    iget-object v0, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v4, p1

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public C0(Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Leb/a;->G0(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Leb/a;->D:Landroid/view/View$OnLayoutChangeListener;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public D0(F)V
    .locals 3

    .line 1
    const v0, 0x3f99999a    # 1.2f

    .line 2
    .line 3
    .line 4
    iput v0, p0, Leb/a;->P:F

    .line 5
    .line 6
    iput p1, p0, Leb/a;->M:F

    .line 7
    .line 8
    iput p1, p0, Leb/a;->N:F

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const v1, 0x3e428f5c    # 0.19f

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2, v0, v1, v0, p1}, Lqa/a;->b(FFFFF)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Leb/a;->Q:F

    .line 21
    .line 22
    invoke-virtual {p0}, Lcb/i;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public E0(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leb/a;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Leb/a;->z:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object p1, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/y;->m(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcb/i;->invalidateSelf()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public F0(Lza/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 2
    .line 3
    iget-object v1, p0, Leb/a;->A:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/y;->k(Lza/d;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcb/i;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Leb/a;->t0()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Leb/a;->K:I

    .line 9
    .line 10
    int-to-double v1, v1

    .line 11
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    mul-double/2addr v1, v3

    .line 18
    iget v3, p0, Leb/a;->K:I

    .line 19
    .line 20
    int-to-double v3, v3

    .line 21
    sub-double/2addr v1, v3

    .line 22
    neg-double v1, v1

    .line 23
    double-to-float v1, v1

    .line 24
    iget v2, p0, Leb/a;->M:F

    .line 25
    .line 26
    iget v3, p0, Leb/a;->N:F

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    int-to-float v4, v4

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    const/high16 v6, 0x3f000000    # 0.5f

    .line 45
    .line 46
    mul-float/2addr v5, v6

    .line 47
    add-float/2addr v4, v5

    .line 48
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    int-to-float v5, v5

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-float v6, v6

    .line 64
    iget v7, p0, Leb/a;->P:F

    .line 65
    .line 66
    mul-float/2addr v6, v7

    .line 67
    add-float/2addr v5, v6

    .line 68
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    .line 73
    .line 74
    invoke-super {p0, p1}, Lcb/i;->draw(Landroid/graphics/Canvas;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Leb/a;->z0(Landroid/graphics/Canvas;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Leb/a;->C:Lcom/google/android/material/internal/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Leb/a;->H:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget v0, p0, Leb/a;->F:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    invoke-direct {p0}, Leb/a;->A0()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-float/2addr v0, v1

    .line 11
    iget v1, p0, Leb/a;->G:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcb/i;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Leb/a;->J:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcb/i;->G()Lcb/n;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcb/n;->v()Lcb/n$b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0}, Leb/a;->x0()Lcb/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lcb/n$b;->s(Lcb/g;)Lcb/n$b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcb/n$b;->m()Lcb/n;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcb/i;->setShapeAppearanceModel(Lcb/n;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcb/i;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public y0(Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Leb/a;->D:Landroid/view/View$OnLayoutChangeListener;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
