.class final Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->c()V
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
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "position",
        "Lzfb;",
        "invoke",
        "(I)V",
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
.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;->this$0:Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;->invoke(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;->this$0:Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->b(Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;->this$0:Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->a(Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;)Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method
