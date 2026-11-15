.class final Lcom/yandex/div/core/widget/ViewPager2Wrapper$findMaxChildDimension$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/widget/ViewPager2Wrapper;->a(Ls74;)I
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lzfb;",
        "invoke",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
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
.field final synthetic $decoratedDimensionGetter:Ls74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls74;"
        }
    .end annotation
.end field

.field final synthetic $maxValue:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ls74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ls74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/widget/ViewPager2Wrapper$findMaxChildDimension$1;->$maxValue:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/yandex/div/core/widget/ViewPager2Wrapper$findMaxChildDimension$1;->$decoratedDimensionGetter:Ls74;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper$findMaxChildDimension$1;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    const-string v0, "$this$withRecyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/widget/ViewPager2Wrapper$findMaxChildDimension$1;->$maxValue:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lcom/yandex/div/core/widget/ViewPager2Wrapper$findMaxChildDimension$1;->$decoratedDimensionGetter:Ls74;

    .line 3
    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-string v5, "it"

    invoke-static {v3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v3, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_1
    return-void
.end method
