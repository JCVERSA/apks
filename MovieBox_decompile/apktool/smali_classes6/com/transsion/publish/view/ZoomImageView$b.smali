.class Lcom/transsion/publish/view/ZoomImageView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v0, v1, p1}, Lcom/transsion/publish/view/ZoomImageView;->l(Lcom/transsion/publish/view/ZoomImageView;FF)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 3
    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    float-to-int v2, v2

    .line 9
    invoke-static {v1, v2}, Lcom/transsion/publish/view/ZoomImageView;->g(Lcom/transsion/publish/view/ZoomImageView;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    float-to-int v2, v2

    .line 19
    invoke-static {v1, v2}, Lcom/transsion/publish/view/ZoomImageView;->h(Lcom/transsion/publish/view/ZoomImageView;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->j(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    return v1

    .line 32
    :cond_0
    iget-object v2, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/transsion/publish/view/ZoomImageView;->a(Lcom/transsion/publish/view/ZoomImageView;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget-object v2, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/transsion/publish/view/ZoomImageView;->b(Lcom/transsion/publish/view/ZoomImageView;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-ne v4, v12, :cond_1

    .line 69
    .line 70
    if-eq v5, v13, :cond_2

    .line 71
    .line 72
    :cond_1
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    move v9, v12

    .line 81
    move v11, v13

    .line 82
    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 115
    .line 116
    const/4 v2, 0x2

    .line 117
    new-array v2, v2, [F

    .line 118
    .line 119
    fill-array-data v2, :array_0

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcom/transsion/publish/view/ZoomImageView;->i(Lcom/transsion/publish/view/ZoomImageView;Landroid/animation/ValueAnimator;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-wide/16 v2, 0x1f4

    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v2, Lcom/transsion/publish/view/ZoomImageView$b$a;

    .line 147
    .line 148
    invoke-direct {v2, p0}, Lcom/transsion/publish/view/ZoomImageView$b$a;-><init>(Lcom/transsion/publish/view/ZoomImageView$b;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 161
    .line 162
    .line 163
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    return v1

    .line 168
    nop

    .line 169
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    neg-float p2, p3

    .line 4
    neg-float p3, p4

    .line 5
    invoke-static {p1, p2, p3}, Lcom/transsion/publish/view/ZoomImageView;->m(Lcom/transsion/publish/view/ZoomImageView;FF)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->d(Lcom/transsion/publish/view/ZoomImageView;)Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->d(Lcom/transsion/publish/view/ZoomImageView;)Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method
