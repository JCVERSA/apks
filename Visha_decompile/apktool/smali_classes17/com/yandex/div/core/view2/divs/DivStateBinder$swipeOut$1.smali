.class final Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivStateBinder;->x(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;)V
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
.field final synthetic $actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_swipeOut:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/DivStateBinder;",
            "Lcom/yandex/div/core/view2/Div2View;",
            "Loj3;",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;",
            "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$actions:Ljava/util/List;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$this_swipeOut:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->h(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$resolver:Loj3;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$actions:Ljava/util/List;

    new-instance v6, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;->$this_swipeOut:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-direct {v6, v0, v2, v3, p0}, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1$1;-><init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V

    const-string v5, "state_swipe_out"

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->H(Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;)V

    return-void
.end method
