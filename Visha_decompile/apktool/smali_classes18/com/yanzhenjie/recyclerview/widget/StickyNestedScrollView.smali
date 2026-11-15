.class public Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView$a;
    }
.end annotation


# static fields
.field public static final FLAG_HASTRANSPARENCY:Ljava/lang/String; = "-hastransparency"

.field public static final FLAG_NONCONSTANT:Ljava/lang/String; = "-nonconstant"

.field public static final STICKY_TAG:Ljava/lang/String; = "sticky"


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Landroid/view/View;

.field public d:F

.field public final e:Ljava/lang/Runnable;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Z

.field public m:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView$1;

    invoke-direct {p1, p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView$1;-><init>(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->e:Ljava/lang/Runnable;

    const/16 p1, 0xa

    .line 5
    iput p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l:Z

    .line 7
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->setup()V

    return-void
.end method

.method public static synthetic a(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->i(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->k(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;)F
    .locals 0

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    return p0
.end method


# virtual methods
.method public addOnViewStickyListener(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView$a;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public clearOnViewStickyListener()V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->f:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    neg-float v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->f:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    neg-float v0, v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-hastransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->p(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->n(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    :cond_0
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->k(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()V
    .locals 9

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    iget-boolean v7, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    if-gtz v6, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    :goto_2
    add-int/2addr v7, v5

    if-le v6, v7, :cond_0

    :cond_3
    move-object v2, v4

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    :goto_3
    add-int/2addr v7, v5

    if-ge v6, v7, :cond_0

    :cond_6
    move-object v3, v4

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_e

    if-nez v3, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    :goto_5
    iput v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-eq v2, v0, :cond_11

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v1

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->r()V

    :cond_c
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->f:I

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->q(Landroid/view/View;)V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v1

    :cond_e
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v1

    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->r()V

    :cond_11
    :goto_8
    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final j(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final k(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final l(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public notifyStickyAttributeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->o()V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->r()V

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->i:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->o()V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->d:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l:Z

    :cond_1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l:Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l:Z

    :cond_4
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final p(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-hastransparency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->n(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-nonconstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-hastransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->p(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeOnViewStickyListener(Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView$a;)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->m:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->h:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->i:Z

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->j:I

    return-void
.end method

.method public setup()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/StickyNestedScrollView;->b:Ljava/util/ArrayList;

    return-void
.end method
