.class final Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivCustomBinder;->h(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;Lcom/yandex/div2/Div$c;Lcom/yandex/div/core/state/DivStatePath;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $divValue:Lcom/yandex/div2/DivCustom;

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;

.field final synthetic $resolver:Loj3;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivCustomBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivCustomBinder;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->this$0:Lcom/yandex/div/core/view2/divs/DivCustomBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$divValue:Lcom/yandex/div2/DivCustom;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$path:Lcom/yandex/div/core/state/DivStatePath;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->this$0:Lcom/yandex/div/core/view2/divs/DivCustomBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->f(Lcom/yandex/div/core/view2/divs/DivCustomBinder;)Lcom/yandex/div/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$divValue:Lcom/yandex/div2/DivCustom;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$resolver:Loj3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->$path:Lcom/yandex/div/core/state/DivStatePath;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/yandex/div/core/a;->createView(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;->invoke()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
