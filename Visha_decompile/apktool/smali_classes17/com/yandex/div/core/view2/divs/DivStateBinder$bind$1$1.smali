.class final Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivStateBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div/core/state/DivStatePath;)V
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
.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Loj3;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/DivStateBinder;",
            "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;",
            "Lcom/yandex/div/core/view2/a;",
            "Loj3;",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$it:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$resolver:Loj3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;->$it:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->k(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;)V

    return-void
.end method
