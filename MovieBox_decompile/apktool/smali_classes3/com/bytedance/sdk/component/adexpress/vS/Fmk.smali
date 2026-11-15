.class public Lcom/bytedance/sdk/component/adexpress/vS/Fmk;
.super Landroid/widget/ImageView;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private Dq:F

.field private EjP:Landroid/graphics/drawable/AnimatedImageDrawable;

.field private Fmk:Z

.field private HiB:Z

.field private Jcg:F

.field private Sj:Landroid/graphics/Movie;

.field private TEQ:I

.field private TKC:I

.field private Ym:I

.field private volatile aa:Z

.field private sP:J

.field private sef:Z

.field private uA:F

.field private vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1c

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    move p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v1

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->HiB:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->vS:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Fmk:Z

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sef:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TKC:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->uA:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Jcg:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->uA:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Dq:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private TKC()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP:J

    .line 19
    .line 20
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0x3e8

    .line 29
    .line 30
    :cond_2
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sef:Z

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TKC:I

    .line 35
    .line 36
    sub-int v3, v2, v3

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/16 v4, 0x3c

    .line 43
    .line 44
    if-ge v3, v4, :cond_3

    .line 45
    .line 46
    iput v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TKC:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->aa:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-wide v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP:J

    .line 53
    .line 54
    sub-long/2addr v0, v3

    .line 55
    int-to-long v2, v2

    .line 56
    rem-long/2addr v0, v2

    .line 57
    long-to-int v0, v0

    .line 58
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TKC:I

    .line 59
    .line 60
    return-void
.end method

.method private sP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->HiB:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Fmk:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    if-lt v0, v1, :cond_2

    .line 12
    .line 13
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/drawable/b;->a(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/drawable/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->EjP:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->aa:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/a;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sef:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/a;->a(Landroid/graphics/drawable/AnimatedImageDrawable;I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP()V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method Sj()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->HiB:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->HiB:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->aa:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TKC()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    return-void

    .line 27
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->HiB:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TEQ:I

    .line 17
    .line 18
    sub-int/2addr p1, p2

    .line 19
    int-to-float p1, p1

    .line 20
    const/high16 p2, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr p1, p2

    .line 23
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Jcg:F

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Ym:I

    .line 30
    .line 31
    sub-int/2addr p1, p3

    .line 32
    int-to-float p1, p1

    .line 33
    div-float/2addr p1, p2

    .line 34
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Dq:F

    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Fmk:Z

    .line 46
    .line 47
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->HiB:Z

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-le v0, p1, :cond_0

    .line 35
    .line 36
    int-to-float v2, v0

    .line 37
    int-to-float p1, p1

    .line 38
    div-float/2addr v2, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v3

    .line 41
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-le v1, p1, :cond_1

    .line 52
    .line 53
    int-to-float p2, v1

    .line 54
    int-to-float p1, p1

    .line 55
    div-float/2addr p2, p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move p2, v3

    .line 58
    :goto_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    div-float/2addr v3, p1

    .line 63
    iput v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->uA:F

    .line 64
    .line 65
    int-to-float p1, v0

    .line 66
    mul-float/2addr p1, v3

    .line 67
    float-to-int p1, p1

    .line 68
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->TEQ:I

    .line 69
    .line 70
    int-to-float p2, v1

    .line 71
    mul-float/2addr p2, v3

    .line 72
    float-to-int p2, p2

    .line 73
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Ym:I

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Fmk:Z

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Fmk:Z

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Sj:Landroid/graphics/Movie;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->Fmk:Z

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sP()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public setRepeatConfig(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->sef:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v0, 0x1c

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Fmk;->EjP:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/a;->a(Landroid/graphics/drawable/AnimatedImageDrawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method
