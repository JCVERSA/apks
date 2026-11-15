.class final Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivBaseBinder;->O(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V
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
        "Lcom/yandex/div2/DivVisibility;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div2/DivVisibility;)V",
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

.field final synthetic $newDiv:Log2;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bindVisibility:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$this_bindVisibility:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$newDiv:Log2;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/DivVisibility;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->invoke(Lcom/yandex/div2/DivVisibility;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div2/DivVisibility;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$this_bindVisibility:Landroid/view/View;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$newDiv:Log2;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;->$resolver:Loj3;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->f(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Z)V

    return-void
.end method
