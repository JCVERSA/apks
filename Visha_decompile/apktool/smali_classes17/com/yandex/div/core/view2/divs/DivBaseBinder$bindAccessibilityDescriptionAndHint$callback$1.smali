.class final Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivBaseBinder;->q(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
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
.field final synthetic $newDiv:Log2;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bindAccessibilityDescriptionAndHint:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Log2;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$this_bindAccessibilityDescriptionAndHint:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$newDiv:Log2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$this_bindAccessibilityDescriptionAndHint:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$newDiv:Log2;

    invoke-interface {v1}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$resolver:Loj3;

    invoke-virtual {v1, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$newDiv:Log2;

    invoke-interface {v3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;->$resolver:Loj3;

    invoke-virtual {v3, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {p1, v0, v1, v2}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->c(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
