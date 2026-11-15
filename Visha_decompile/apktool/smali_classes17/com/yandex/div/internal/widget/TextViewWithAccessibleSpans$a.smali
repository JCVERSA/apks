.class public final Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/div/core/view2/spannable/a;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->access$getAccessibleImageSpans$p(Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->access$getAccessibleImageSpans$p(Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->access$getAccessibleImageSpans$p(Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/yandex/div/core/view2/spannable/a;

    :goto_0
    return-object v1
.end method

.method public getVirtualViewAt(FF)I
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->access$getAccessibleImageSpans$p(Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v3, Lcom/yandex/div/core/view2/spannable/a;

    invoke-virtual {v3, v0}, Lcom/yandex/div/core/view2/spannable/a;->e(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3

    const-string v0, "virtualViewIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->access$getAccessibleImageSpans$p(Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v1, Lcom/yandex/div/core/view2/spannable/a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a(I)Lcom/yandex/div/core/view2/spannable/a;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/spannable/a;->c()Lcom/yandex/div/core/view2/spannable/a$a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/spannable/a$a;->c()Lcom/yandex/div/core/view2/spannable/a$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    invoke-interface {p0}, Lcom/yandex/div/core/view2/spannable/a$b;->a()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    const-string v0, "node"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a(I)Lcom/yandex/div/core/view2/spannable/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/spannable/a;->c()Lcom/yandex/div/core/view2/spannable/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/spannable/a$a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/spannable/a;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;->a:Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/spannable/a;->c()Lcom/yandex/div/core/view2/spannable/a$a;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/spannable/a$a;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/spannable/a;->c()Lcom/yandex/div/core/view2/spannable/a$a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/spannable/a$a;->c()Lcom/yandex/div/core/view2/spannable/a$b;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_2
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
