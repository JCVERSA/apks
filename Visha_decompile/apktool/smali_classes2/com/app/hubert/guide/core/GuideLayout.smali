.class public Lcom/app/hubert/guide/core/GuideLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/hubert/guide/core/GuideLayout$e;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKGROUND_COLOR:I = -0x4e000000


# instance fields
.field public b:Lcom/app/hubert/guide/core/Controller;

.field public c:Landroid/graphics/Paint;

.field public d:Lcom/app/hubert/guide/core/GuideLayout$e;

.field public e:F

.field public f:F

.field public g:I

.field public guidePage:Lcom/app/hubert/guide/model/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/app/hubert/guide/model/a;Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->e()V

    invoke-direct {p0, p2}, Lcom/app/hubert/guide/core/GuideLayout;->setGuidePage(Lcom/app/hubert/guide/model/a;)V

    iput-object p3, p0, Lcom/app/hubert/guide/core/GuideLayout;->b:Lcom/app/hubert/guide/core/Controller;

    return-void
.end method

.method public static synthetic a(Lcom/app/hubert/guide/core/GuideLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->c()V

    return-void
.end method

.method private setGuidePage(Lcom/app/hubert/guide/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    new-instance p1, Lcom/app/hubert/guide/core/GuideLayout$a;

    invoke-direct {p1, p0}, Lcom/app/hubert/guide/core/GuideLayout$a;-><init>(Lcom/app/hubert/guide/core/GuideLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/app/hubert/guide/model/a;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/app/hubert/guide/model/a;->h()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/app/hubert/guide/model/a;->d()[I

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v5, Lcom/app/hubert/guide/core/GuideLayout$b;

    invoke-direct {v5, p0}, Lcom/app/hubert/guide/core/GuideLayout$b;-><init>(Lcom/app/hubert/guide/core/GuideLayout;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find the view by id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " which used to remove guide page"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NewbieGuide"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/app/hubert/guide/model/a;->i()Ldf7;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->b:Lcom/app/hubert/guide/core/Controller;

    invoke-interface {v2, v0, v3}, Ldf7;->a(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p1}, Lcom/app/hubert/guide/model/a;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsr8;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/app/hubert/guide/core/GuideLayout;->b:Lcom/app/hubert/guide/core/Controller;

    invoke-virtual {v0, v1, v2}, Lsr8;->getGuideLayout(Landroid/view/ViewGroup;Lcom/app/hubert/guide/core/Controller;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->d:Lcom/app/hubert/guide/core/GuideLayout$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/app/hubert/guide/core/GuideLayout$e;->a(Lcom/app/hubert/guide/core/GuideLayout;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/a;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/hubert/guide/model/HighLight;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/app/hubert/guide/model/HighLight;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    sget-object v3, Lcom/app/hubert/guide/core/GuideLayout$d;->a:[I

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->a()Lcom/app/hubert/guide/model/HighLight$Shape;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->c()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->getRadius()F

    move-result v5

    iget-object v6, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p0, p1, v1, v2}, Lcom/app/hubert/guide/core/GuideLayout;->g(Landroid/graphics/Canvas;Lcom/app/hubert/guide/model/HighLight;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->g:I

    return-void
.end method

.method public final f(Lcom/app/hubert/guide/model/HighLight;)V
    .locals 0

    invoke-interface {p1}, Lcom/app/hubert/guide/model/HighLight;->getOptions()Lcom/app/hubert/guide/model/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/app/hubert/guide/model/b;->a:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Lcom/app/hubert/guide/model/HighLight;Landroid/graphics/RectF;)V
    .locals 0

    invoke-interface {p2}, Lcom/app/hubert/guide/model/HighLight;->getOptions()Lcom/app/hubert/guide/model/b;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/app/hubert/guide/model/b;->c:Lte7;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p3}, Lte7;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/GuideLayout;->b(Lcom/app/hubert/guide/model/a;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/a;->e()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x4e000000

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0, p1}, Lcom/app/hubert/guide/core/GuideLayout;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->e:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/app/hubert/guide/core/GuideLayout;->g:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->f:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/app/hubert/guide/core/GuideLayout;->g:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {v3}, Lcom/app/hubert/guide/model/a;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/app/hubert/guide/model/HighLight;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Lcom/app/hubert/guide/model/HighLight;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/app/hubert/guide/core/GuideLayout;->f(Lcom/app/hubert/guide/model/HighLight;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->performClick()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->f:F

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/a;->f()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/app/hubert/guide/core/GuideLayout$c;

    invoke-direct {v1, p0}, Lcom/app/hubert/guide/core/GuideLayout$c;-><init>(Lcom/app/hubert/guide/core/GuideLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->c()V

    :goto_0
    return-void
.end method

.method public setOnGuideLayoutDismissListener(Lcom/app/hubert/guide/core/GuideLayout$e;)V
    .locals 0

    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout;->d:Lcom/app/hubert/guide/core/GuideLayout$e;

    return-void
.end method
