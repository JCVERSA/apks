.class final Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->B(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div2/DivInput;Lcom/yandex/div/core/view2/a;Loj3;)V
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

.field final synthetic $div:Lcom/yandex/div2/DivInput;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeEnterTypeAndActions:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivInput;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$this_observeEnterTypeAndActions:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/util/List;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->b(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/util/List;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final b(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/util/List;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$bindingContext"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$this_observeEnterTypeAndActions"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit16 p4, p5, 0xff

    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->j(Lcom/yandex/div/core/view2/divs/DivInputBinder;)Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object p0

    const-string p4, "enter"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iget-object p1, p1, Lcom/yandex/div2/DivInput;->l:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivInput$EnterKeyType;

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$this_observeEnterTypeAndActions:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    invoke-static {v2, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->m(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div2/DivInput$EnterKeyType;)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 4
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$div:Lcom/yandex/div2/DivInput;

    iget-object p1, p1, Lcom/yandex/div2/DivInput;->k:Ljava/util/List;

    .line 5
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$this_observeEnterTypeAndActions:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    new-instance v2, Lcom/yandex/div/core/view2/divs/a;

    invoke-direct {v2, v1, p0, v0, p1}, Lcom/yandex/div/core/view2/divs/a;-><init>(Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeEnterTypeAndActions$callback$1;->$this_observeEnterTypeAndActions:Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_1
    return-void
.end method
