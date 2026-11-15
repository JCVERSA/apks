.class public abstract Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;",
        ">",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;"
    }
.end annotation


# instance fields
.field public OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

.field public OooO0Oo:Landroid/widget/TextView;

.field public OooO0o:Landroid/widget/ImageView;

.field public OooO0o0:Landroid/widget/ImageView;

.field public OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

.field public OooOO0:Z

.field public OooOO0O:Z

.field public OooOO0o:I

.field public OooOOO:I

.field public OooOOO0:I

.field public OooOOOO:I

.field public OooOOOo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x1f4

    .line 5
    .line 6
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    .line 7
    .line 8
    const/16 p1, 0x14

    .line 9
    .line 10
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 11
    .line 12
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOO:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOo:I

    .line 16
    .line 17
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    return p1
.end method

.method public OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0:Z

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p0
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 2
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0o:I

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    return-void
.end method

.method public OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0O:Z

    .line 9
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0o:I

    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v0, :cond_0

    .line 11
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_0
    return-object p0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5
    instance-of p3, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p3, :cond_0

    .line 6
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x470ca000    # 36000.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/32 p2, 0x186a0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 33
    .line 34
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOo:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOO:I

    .line 17
    .line 18
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 33
    .line 34
    const/high16 v4, 0x41a00000    # 20.0f

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-static {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    :cond_1
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 43
    .line 44
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOO:I

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    invoke-static {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :cond_2
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOO:I

    .line 53
    .line 54
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 55
    .line 56
    invoke-virtual {p0, v0, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/high16 v2, 0x40000000    # 2.0f

    .line 67
    .line 68
    if-ne v0, v2, :cond_6

    .line 69
    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOo:I

    .line 75
    .line 76
    if-ge v0, v2, :cond_5

    .line 77
    .line 78
    sub-int/2addr v0, v2

    .line 79
    div-int/lit8 v0, v0, 0x2

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO:I

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOO:I

    .line 116
    .line 117
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 121
    .line 122
    .line 123
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOo:I

    .line 124
    .line 125
    if-nez p1, :cond_8

    .line 126
    .line 127
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-ge v1, p1, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOo:I

    .line 142
    .line 143
    if-ge p2, p1, :cond_7

    .line 144
    .line 145
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOOo:I

    .line 146
    .line 147
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0O:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    aget v0, p1, v1

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0O:Z

    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0:Z

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    array-length v0, p1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-le v0, v2, :cond_1

    .line 31
    .line 32
    aget p1, p1, v2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    aget p1, p1, v1

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    const v0, -0x99999a

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 47
    .line 48
    .line 49
    :goto_0
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOO0:Z

    .line 50
    .line 51
    :cond_3
    return-void
.end method
