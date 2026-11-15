.class final Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->invoke()V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/yandex/div2/DivAction;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div2/DivAction;)V",
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
.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_swipeOut:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$this_swipeOut:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/DivAction;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->invoke(Lcom/yandex/div2/DivAction;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div2/DivAction;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->f(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lgd2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$resolver:Loj3;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$this_swipeOut:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-interface {v0, v1, v2, v3, p1}, Lgd2;->z(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->g(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lce2;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;->$resolver:Loj3;

    invoke-virtual {v0, p1, p0}, Lce2;->b(Lcom/yandex/div2/DivAction;Loj3;)V

    return-void
.end method
