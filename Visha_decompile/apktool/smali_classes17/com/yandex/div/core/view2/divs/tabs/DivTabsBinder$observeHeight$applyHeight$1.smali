.class final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->F(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Lcom/yandex/div2/DivTabs;Loj3;)V
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
.field final synthetic $div:Lcom/yandex/div2/DivTabs;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeHeight:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivTabs;Loj3;Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div2/DivTabs;",
            "Loj3;",
            "Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$div:Lcom/yandex/div2/DivTabs;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$this_observeHeight:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$div:Lcom/yandex/div2/DivTabs;

    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->D:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->n()Lcom/yandex/div2/DivTabs$TabTitleStyle;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    .line 4
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$div:Lcom/yandex/div2/DivTabs;

    iget-object v1, v1, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    .line 5
    iget-object v2, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    invoke-virtual {v2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    invoke-virtual {p1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr p1, v2

    float-to-long v2, p1

    .line 7
    :goto_0
    iget-object p1, v0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    invoke-virtual {p1, v4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object p1, v0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object p1, v1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object p1, v1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 8
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$this_observeHeight:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;->$this_observeHeight:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "metrics"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
