.class final Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivActionBinder;->q(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lbk2;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
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
.field final synthetic $captureFocusOnAction:Lcom/yandex/div/json/expressions/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/json/expressions/Expression;"
        }
    .end annotation
.end field

.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic $menuAction:Lcom/yandex/div2/DivAction;

.field final synthetic $overflowMenuWrapper:Lzt7;

.field final synthetic $target:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/DivActionBinder;",
            "Lcom/yandex/div/core/view2/a;",
            "Landroid/view/View;",
            "Lcom/yandex/div2/DivAction;",
            "Lcom/yandex/div/json/expressions/Expression;",
            "Lzt7;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$target:Landroid/view/View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$menuAction:Lcom/yandex/div2/DivAction;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$captureFocusOnAction:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$overflowMenuWrapper:Lzt7;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$target:Landroid/view/View;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$menuAction:Lcom/yandex/div2/DivAction;

    invoke-interface {v0, v1, v2, v3, v4}, Lgd2;->j(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->i(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lce2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$menuAction:Lcom/yandex/div2/DivAction;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lce2;->c(Lcom/yandex/div2/DivAction;Loj3;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$target:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$captureFocusOnAction:Lcom/yandex/div/json/expressions/Expression;

    .line 6
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    .line 8
    invoke-static {v0, v1, v2, v3}, Lme2;->a(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$overflowMenuWrapper:Lzt7;

    invoke-virtual {v0}, Lzt7;->c()Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;->$target:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
