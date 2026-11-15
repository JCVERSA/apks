.class final Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivBaseBinder;->r(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Lqj3;)V
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
        "Lcom/yandex/div2/DivAccessibility$Mode;",
        "mode",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div2/DivAccessibility$Mode;)V",
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

.field final synthetic $this_bindAccessibilityMode:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$this_bindAccessibilityMode:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$newDiv:Log2;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/DivAccessibility$Mode;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->invoke(Lcom/yandex/div2/DivAccessibility$Mode;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div2/DivAccessibility$Mode;)V
    .locals 4

    const-string v0, "mode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$this_bindAccessibilityMode:Landroid/view/View;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$newDiv:Log2;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Lcom/yandex/div2/DivAccessibility$Mode;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$newDiv:Log2;

    invoke-interface {p1}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    .line 4
    :cond_1
    sget-object v0, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    if-ne p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->this$0:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->g(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$this_bindAccessibilityMode:Landroid/view/View;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$newDiv:Log2;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;->$resolver:Loj3;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->d(Landroid/view/View;Log2;Lcom/yandex/div2/DivAccessibility$Type;Loj3;)V

    :cond_2
    return-void
.end method
