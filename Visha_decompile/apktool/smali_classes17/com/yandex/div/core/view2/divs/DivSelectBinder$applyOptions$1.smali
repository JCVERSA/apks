.class final Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSelectBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;)V
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
.field final synthetic $bindingContext:Lcom/yandex/div/core/view2/a;

.field final synthetic $div:Lcom/yandex/div2/DivSelect;

.field final synthetic $itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_applyOptions:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Ljava/util/List;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/div2/DivSelect;",
            "Lcom/yandex/div/core/view2/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$this_applyOptions:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$itemList:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$div:Lcom/yandex/div2/DivSelect;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

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

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->invoke(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$this_applyOptions:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$itemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$this_applyOptions:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->getValueUpdater()Le74;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$div:Lcom/yandex/div2/DivSelect;

    iget-object v1, v1, Lcom/yandex/div2/DivSelect;->A:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivSelect$Option;

    iget-object p1, p1, Lcom/yandex/div2/DivSelect$Option;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
