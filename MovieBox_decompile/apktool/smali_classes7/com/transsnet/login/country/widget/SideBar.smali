.class public Lcom/transsnet/login/country/widget/SideBar;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/login/country/widget/SideBar$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/text/TextPaint;

.field private c:I

.field private d:Lcom/transsnet/login/country/widget/SideBar$a;

.field private e:F

.field private f:I

.field private g:I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    .line 4
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 5
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    .line 6
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    .line 10
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 11
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    .line 12
    iput p2, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/transsnet/login/R$dimen;->side_bar_txt_size:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    .line 32
    .line 33
    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 37
    .line 38
    mul-float/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 61
    .line 62
    iget v4, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 63
    .line 64
    int-to-float v4, v4

    .line 65
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 75
    .line 76
    iget v5, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    .line 82
    .line 83
    if-ne v1, v3, :cond_1

    .line 84
    .line 85
    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    sget v6, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 92
    .line 93
    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 103
    .line 104
    .line 105
    :cond_1
    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    cmpg-float v3, v3, v4

    .line 109
    .line 110
    if-gez v3, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-float v3, v3

    .line 117
    const/high16 v4, 0x3f800000    # 1.0f

    .line 118
    .line 119
    mul-float/2addr v3, v4

    .line 120
    const/high16 v4, 0x40000000    # 2.0f

    .line 121
    .line 122
    div-float/2addr v3, v4

    .line 123
    iget-object v5, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 124
    .line 125
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    div-float/2addr v5, v4

    .line 130
    sub-float/2addr v3, v5

    .line 131
    iput v3, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    .line 132
    .line 133
    :cond_2
    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    .line 134
    .line 135
    add-int/lit8 v4, v1, 0x1

    .line 136
    .line 137
    int-to-float v1, v1

    .line 138
    mul-float/2addr v1, v3

    .line 139
    add-float/2addr v1, v3

    .line 140
    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    .line 141
    .line 142
    iget-object v5, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 143
    .line 144
    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 150
    .line 151
    .line 152
    move v1, v4

    .line 153
    goto :goto_0

    .line 154
    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    div-float/2addr p1, v2

    .line 29
    iget-object v2, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    mul-float/2addr p1, v2

    .line 37
    float-to-int p1, p1

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq v0, v3, :cond_2

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    if-eq v0, v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    .line 47
    .line 48
    if-eq v1, p1, :cond_3

    .line 49
    .line 50
    if-ltz p1, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ge p1, v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->d:Lcom/transsnet/login/country/widget/SideBar$a;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/transsnet/login/country/widget/SideBar$a;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/text/TextPaint;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/widget/SideBar;->a(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public setIndexs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/transsnet/login/R$dimen;->side_bar_txt_size:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    .line 34
    .line 35
    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 39
    .line 40
    mul-float/2addr v0, v1

    .line 41
    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    .line 42
    .line 43
    :cond_0
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-float p1, p1

    .line 56
    mul-float/2addr v1, p1

    .line 57
    float-to-int p1, v1

    .line 58
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setScrollerListener(Lcom/transsnet/login/country/widget/SideBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/country/widget/SideBar;->d:Lcom/transsnet/login/country/widget/SideBar$a;

    .line 2
    .line 3
    return-void
.end method

.method public updateIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
