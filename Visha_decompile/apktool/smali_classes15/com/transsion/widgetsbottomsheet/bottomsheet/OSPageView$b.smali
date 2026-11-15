.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$updateTitleSideReserveIfNeeded(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/widget/TextView;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getMAX_TITLE_LAYOUT_ITER_COUNT$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$setTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$adjustTitleForEllipsis(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lwn8;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleResizeAttempt$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v0

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lwn8;->c(FF)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleResizeAttempt$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$setTitleResizeAttempt$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$b;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$adjustTitleForEllipsis(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    :cond_5
    return-void
.end method
