.class final Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivTextBinder;->d0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V
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
.field final synthetic $bindingContext:Lcom/yandex/div/core/view2/a;

.field final synthetic $newDiv:Lcom/yandex/div2/DivText;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bindPlainText:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivText;Loj3;Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$newDiv:Lcom/yandex/div2/DivText;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$this_bindPlainText:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$newDiv:Lcom/yandex/div2/DivText;

    iget-object p1, p1, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$this_bindPlainText:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$newDiv:Lcom/yandex/div2/DivText;

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->m(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;->$this_bindPlainText:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    invoke-static {v0, p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->i(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
