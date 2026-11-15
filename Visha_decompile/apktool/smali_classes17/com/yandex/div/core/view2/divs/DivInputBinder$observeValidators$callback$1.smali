.class final Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->S(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div2/DivInput;Loj3;Lcom/yandex/div/core/view2/Div2View;)V
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

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $errorCollector:Lwc3;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeValidators:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field final synthetic $validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfnb;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/div2/DivInput;Lcom/yandex/div/core/view2/divs/DivInputBinder;Loj3;Lwc3;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfnb;",
            ">;",
            "Lcom/yandex/div2/DivInput;",
            "Lcom/yandex/div/core/view2/divs/DivInputBinder;",
            "Loj3;",
            "Lwc3;",
            "Lcom/yandex/div/core/view2/divs/widgets/DivInputView;",
            "Lcom/yandex/div/core/view2/Div2View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$validators:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$errorCollector:Lwc3;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$this_observeValidators:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$validators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iget-object p1, p1, Lcom/yandex/div2/DivInput;->a0:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 4
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$resolver:Loj3;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$errorCollector:Lwc3;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$validators:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivInputValidator;

    .line 6
    invoke-static {v0, v4, v1, v2}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->o(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div2/DivInputValidator;Loj3;Lwc3;)Lfnb;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$validators:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$this_observeValidators:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iget-object v8, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeValidators$callback$1;->$resolver:Loj3;

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfnb;

    .line 10
    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->p(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lfnb;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_1

    :cond_2
    return-void
.end method
