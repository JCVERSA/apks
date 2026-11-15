.class public final Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Ljava/util/List;

.field public final c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public d:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;Lzl2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->g(Lzl2;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)Lcom/yandex/div/core/view2/divs/DivActionBinder;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)Lcom/yandex/div/core/view2/Div2View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->a:Lcom/yandex/div/core/view2/Div2View;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final e(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;-><init>(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iput-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->d:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public final f(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->d:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->d:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public final g(Lzl2;)V
    .locals 3

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->u()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance v2, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$dispatchSelectedActions$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$dispatchSelectedActions$1$1;-><init>(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;Lzl2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/yandex/div/core/view2/Div2View;->bulkActions$div_release(Lc74;)V

    :cond_0
    return-void
.end method
