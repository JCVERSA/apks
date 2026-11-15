.class final Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivPager;)V
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
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
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
.field final synthetic $builder:Lcom/yandex/div2/DivCollectionItemBuilder;

.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic $this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$builder:Lcom/yandex/div2/DivCollectionItemBuilder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$context:Lcom/yandex/div/core/view2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$builder:Lcom/yandex/div2/DivCollectionItemBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-static {v0, v1}, Lbh2;->a(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->y(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getPagerOnItemsCountChange$div_release()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;->a()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    .line 6
    new-instance v0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1$a;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1$a;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
