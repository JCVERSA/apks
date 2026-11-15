.class final Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSelectBinder;->n(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
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
.field final synthetic $div:Lcom/yandex/div2/DivSelect;

.field final synthetic $lineHeightExpr:Lcom/yandex/div/json/expressions/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/json/expressions/Expression;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeLineHeight:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Loj3;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/json/expressions/Expression;",
            "Loj3;",
            "Lcom/yandex/div2/DivSelect;",
            "Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$lineHeightExpr:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$div:Lcom/yandex/div2/DivSelect;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$this_observeLineHeight:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$lineHeightExpr:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$div:Lcom/yandex/div2/DivSelect;

    iget-object p1, p1, Lcom/yandex/div2/DivSelect;->n:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$resolver:Loj3;

    invoke-virtual {p1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivSizeUnit;

    .line 4
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$this_observeLineHeight:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$this_observeLineHeight:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const-string v5, "resources.displayMetrics"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    .line 5
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;->$this_observeLineHeight:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->q(Landroid/widget/TextView;Ljava/lang/Long;Lcom/yandex/div2/DivSizeUnit;)V

    return-void
.end method
