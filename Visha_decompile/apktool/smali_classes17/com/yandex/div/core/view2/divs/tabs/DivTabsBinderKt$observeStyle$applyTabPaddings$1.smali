.class final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->g(Lcom/yandex/div/internal/widget/tabs/TabView;Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Lqj3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $metrics:Landroid/util/DisplayMetrics;

.field final synthetic $paddings:Lcom/yandex/div2/DivEdgeInsets;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/internal/widget/tabs/TabView;Loj3;Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v0, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "metrics"

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    .line 4
    iget-object p1, p1, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {p1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v2, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v3, v3, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v3, v4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v4, v4, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v4, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    .line 8
    invoke-virtual {v0, p1, v2, v3, p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTabPadding(IIII)V

    goto :goto_2

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 10
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 11
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v3, v3, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v3, v4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v4, v4, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_3
    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v2

    .line 13
    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$paddings:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v4, v4, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$resolver:Loj3;

    invoke-virtual {v4, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    .line 14
    invoke-virtual {p1, v0, v3, v2, p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTabPadding(IIII)V

    :goto_2
    return-void
.end method
