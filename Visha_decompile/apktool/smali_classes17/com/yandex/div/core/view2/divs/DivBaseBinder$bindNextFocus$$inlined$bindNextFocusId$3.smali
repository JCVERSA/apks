.class public final Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivBaseBinder;->K(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V
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
        "\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "id",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/String;)V",
        "com/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocusId$1",
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
.field final synthetic $this_bindNextFocus$inlined:Landroid/view/View;

.field final synthetic $viewIdProvider$inlined:Ltv2;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;->$this_bindNextFocus$inlined:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;->$viewIdProvider$inlined:Ltv2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;->invoke(Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;->$this_bindNextFocus$inlined:Landroid/view/View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;->$viewIdProvider$inlined:Ltv2;

    invoke-virtual {p0, p1}, Ltv2;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setNextFocusRightId(I)V

    return-void
.end method
