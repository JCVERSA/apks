.class public final Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivContainerBinder;->v(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\n\u001a\u00020\u0006\"\u0012\u0008\u0000\u0010\u0003*\u00020\u0000*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroid/view/ViewGroup;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$b;",
        "T",
        "",
        "<anonymous parameter 0>",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
        "com/yandex/div/core/view2/divs/DivContainerBinder$bindContentAlignment$callback$1",
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
.field final synthetic $newDiv:Lcom/yandex/div2/DivContainer;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bindProperties$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$newDiv:Lcom/yandex/div2/DivContainer;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$this_bindProperties$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$newDiv:Lcom/yandex/div2/DivContainer;

    iget-object p1, p1, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$newDiv:Lcom/yandex/div2/DivContainer;

    iget-object v0, v0, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$resolver:Loj3;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/yandex/div2/DivContentAlignmentVertical;

    check-cast p1, Lcom/yandex/div2/DivContentAlignmentHorizontal;

    .line 5
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;->$this_bindProperties$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    invoke-static {p1, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->P(Lcom/yandex/div2/DivContentAlignmentHorizontal;Lcom/yandex/div2/DivContentAlignmentVertical;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/DivViewGroup;->setGravity(I)V

    return-void
.end method
