.class public Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$a;,
        Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$b;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String; = "OSSmartScrollbar"


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:F

.field public d:F

.field public e:Landroid/graphics/PathMeasure;

.field public f:Landroid/graphics/Path;

.field public g:Landroid/graphics/Path;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroid/animation/ObjectAnimator;

.field public q:Landroid/view/View;

.field public r:Landroidx/core/view/ScrollingView;

.field public s:Z

.field public t:Landroid/view/ViewGroup;

.field public u:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public v:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    .line 3
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    .line 7
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    .line 11
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->j:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->m:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->i:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g:Landroid/graphics/Path;

    return-object p0
.end method

.method private getScrollExtent()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    const-string v1, "computeVerticalScrollExtent"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getScrollOffset()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    const-string v1, "computeVerticalScrollOffset"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    const-string v1, "computeVerticalScrollRange"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollRange()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k:F

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h:F

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->l:F

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k:F

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollExtent()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollRange()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->x:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public associateScrollableView(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "associateScrollView, scrollingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->unregisterScrollChangedListener()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    instance-of v0, p1, Landroidx/core/view/ScrollingView;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/core/view/ScrollingView;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->r:Landroidx/core/view/ScrollingView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->registerScrollChangedListener()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->s()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->c:F

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d:F

    add-float/2addr v0, v4

    add-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    if-ne v1, v3, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v2, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->refreshArc()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->registerScrollChangedListener()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->s()V

    :goto_0
    return-void
.end method

.method public final q(Landroid/util/AttributeSet;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->m:I

    const-string v1, "#33FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->n:I

    const-string v1, "#99FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->o:I

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d:F

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_arc_color:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->n:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setArcColor(I)V

    goto :goto_1

    :cond_0
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_bar_color:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->o:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setBarColor(I)V

    goto :goto_1

    :cond_1
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_bar_margin:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setBarMargin(F)V

    :cond_2
    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 p1, 0x40200000    # 2.5f

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->c:F

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e:Landroid/graphics/PathMeasure;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->f:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g:Landroid/graphics/Path;

    const/high16 p1, 0x41100000    # 9.0f

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->i:F

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$a;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->u:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$b;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$b;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->v:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final r(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/view/View;

    invoke-virtual {v0, p2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->x:Ljava/lang/String;

    const-string v1, "get declared method error !"

    invoke-static {v0, v1, p2}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, p0

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->x:Ljava/lang/String;

    const-string p2, "invoke method error !"

    invoke-static {p1, p2, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public refreshArc()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->t:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->c:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->f:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->f:Landroid/graphics/Path;

    neg-float v6, v2

    const/high16 v9, -0x3cdc0000    # -164.0f

    const/high16 v10, -0x3e000000    # -32.0f

    move v5, v6

    move v7, v2

    move v8, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->addArc(FFFFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_2

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {p0, v3}, Landroid/view/View;->setRotation(F)V

    :cond_2
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->f:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k:F

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->i:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->j:F

    sget-object v4, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->x:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshArc, arcLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mBarLen: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mMinBarLen: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->i:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxBarLen: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->j:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mStopD: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", w: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", radius: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->l:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h:F

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-void
.end method

.method public registerScrollChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->s:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->s:Z

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->u:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->v:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->unregisterScrollChangedListener()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setArcColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->n:I

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->o:I

    return-void
.end method

.method public setBarMargin(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d:F

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->w:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public unregisterScrollChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->s:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->s:Z

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->u:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->v:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method
