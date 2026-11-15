.class public Lcom/transsion/widgets/MarqueTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private volatile firstVisibleOver:Z

.field private handler:Landroid/os/Handler;

.field private marqueDelay:I

.field private final startMarqueeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/widgets/MarqueTextView;->firstVisibleOver:Z

    .line 3
    new-instance v0, Lv16;

    invoke-direct {v0, p0}, Lv16;-><init>(Lcom/transsion/widgets/MarqueTextView;)V

    iput-object v0, p0, Lcom/transsion/widgets/MarqueTextView;->startMarqueeRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/MarqueTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/transsion/widgets/MarqueTextView;->firstVisibleOver:Z

    .line 7
    new-instance v0, Lv16;

    invoke-direct {v0, p0}, Lv16;-><init>(Lcom/transsion/widgets/MarqueTextView;)V

    iput-object v0, p0, Lcom/transsion/widgets/MarqueTextView;->startMarqueeRunnable:Ljava/lang/Runnable;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/MarqueTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 10
    iput-boolean p3, p0, Lcom/transsion/widgets/MarqueTextView;->firstVisibleOver:Z

    .line 11
    new-instance p3, Lv16;

    invoke-direct {p3, p0}, Lv16;-><init>(Lcom/transsion/widgets/MarqueTextView;)V

    iput-object p3, p0, Lcom/transsion/widgets/MarqueTextView;->startMarqueeRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/MarqueTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/MarqueTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->lambda$new$0()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/common/R$styleable;->MarqueTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/common/R$styleable;->MarqueTextView_marqueDelay:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/MarqueTextView;->marqueDelay:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->needDelay()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/widgets/MarqueTextView;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->stopMarquee()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private needDelay()Z
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/MarqueTextView;->marqueDelay:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startMarque()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/MarqueTextView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgets/MarqueTextView;->firstVisibleOver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/MarqueTextView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/widgets/MarqueTextView;->startMarqueeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/widgets/MarqueTextView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/widgets/MarqueTextView;->startMarqueeRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/transsion/widgets/MarqueTextView;->marqueDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopMarquee()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/MarqueTextView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/MarqueTextView;->startMarqueeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->needDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->stopMarquee()V

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->needDelay()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/MarqueTextView;->firstVisibleOver:Z

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->startMarque()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public resetMarque()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->needDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgets/MarqueTextView;->firstVisibleOver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->stopMarquee()V

    invoke-direct {p0}, Lcom/transsion/widgets/MarqueTextView;->startMarque()V

    :cond_0
    return-void
.end method
