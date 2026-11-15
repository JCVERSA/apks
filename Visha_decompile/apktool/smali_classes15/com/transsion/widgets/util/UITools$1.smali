.class Lcom/transsion/widgets/util/UITools$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/util/UITools;->elasticPadding(Landroid/content/Context;Landroid/widget/HorizontalScrollView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final checkStopped:Ljava/lang/Runnable;

.field private inTouch:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$oldLeft:I

.field final synthetic val$oldRight:I

.field final synthetic val$padding:I

.field final synthetic val$scrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;IIILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    iput p2, p0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    iput p3, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldLeft:I

    iput p4, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldRight:I

    iput-object p5, p0, Lcom/transsion/widgets/util/UITools$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgets/util/UITools$1;->inTouch:Z

    new-instance p1, Lcom/transsion/widgets/util/UITools$1$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgets/util/UITools$1$1;-><init>(Lcom/transsion/widgets/util/UITools$1;)V

    iput-object p1, p0, Lcom/transsion/widgets/util/UITools$1;->checkStopped:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/util/UITools$1;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1;->checkStopped:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/util/UITools$1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/util/UITools$1;->inTouch:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/util/UITools$1;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/util/UITools$1;->inTouch:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/util/UITools$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/util/UITools$1;->scrollToLeft()V

    return-void
.end method

.method private disableOverScroll()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/util/UITools$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/util/UITools$1;->scrollToRight()V

    return-void
.end method

.method private scrollToLeft()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    iget p0, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldLeft:I

    sub-int/2addr v1, p0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private scrollToRight()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    iget p0, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldLeft:I

    sub-int/2addr v2, p0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldRight:I

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->getTotalTabMeasureWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {v2}, Lcom/transsion/widgets/util/UITools;->getScrollViewMargin(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/widgets/util/UITools$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_0

    iget v1, p0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    iget v2, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldLeft:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    iget v4, p0, Lcom/transsion/widgets/util/UITools$1;->val$oldRight:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/util/UITools$1;->disableOverScroll()V

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/transsion/widgets/util/UITools$1$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/util/UITools$1$2;-><init>(Lcom/transsion/widgets/util/UITools$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgets/util/UITools$1$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/util/UITools$1$3;-><init>(Lcom/transsion/widgets/util/UITools$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1;->checkStopped:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
