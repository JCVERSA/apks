.class final Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivPager;Lcom/yandex/div/core/state/DivStatePath;)V
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
.field final synthetic $adapter:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

.field final synthetic $div:Lcom/yandex/div2/DivPager;

.field final synthetic $pageTranslations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;",
            "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;",
            "Lcom/yandex/div2/DivPager;",
            "Loj3;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->this$0:Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$div:Lcom/yandex/div2/DivPager;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$pageTranslations:Landroid/util/SparseArray;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$adapter:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->this$0:Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$div:Lcom/yandex/div2/DivPager;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$resolver:Loj3;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$pageTranslations:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;->$adapter:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->f(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    return-void
.end method
