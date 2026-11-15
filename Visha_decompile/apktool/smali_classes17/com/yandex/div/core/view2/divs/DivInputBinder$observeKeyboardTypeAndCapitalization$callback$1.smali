.class final Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->I(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div2/DivInput;Loj3;)V
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
.field final synthetic $div:Lcom/yandex/div2/DivInput;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeKeyboardTypeAndCapitalization:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivInput;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/view2/divs/DivInputBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$this_observeKeyboardTypeAndCapitalization:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iget-object p1, p1, Lcom/yandex/div2/DivInput;->C:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivInput$KeyboardType;

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$this_observeKeyboardTypeAndCapitalization:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    invoke-static {v1, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->n(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div2/DivInput$KeyboardType;)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$resolver:Loj3;

    invoke-static {v2, v3, v4}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->k(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div2/DivInput;Loj3;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 4
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeKeyboardTypeAndCapitalization$callback$1;->$this_observeKeyboardTypeAndCapitalization:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    sget-object v0, Lcom/yandex/div2/DivInput$KeyboardType;->MULTI_LINE_TEXT:Lcom/yandex/div2/DivInput$KeyboardType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/SuperLineHeightEditText;->setHorizontallyScrolling(Z)V

    return-void
.end method
