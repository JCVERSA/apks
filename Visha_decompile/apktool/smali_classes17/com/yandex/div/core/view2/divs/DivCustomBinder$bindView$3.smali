.class final Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


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
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/view/View;",
        "it",
        "Lzfb;",
        "invoke",
        "(Landroid/view/View;)V",
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
.field final synthetic $divValue:Lcom/yandex/div2/DivCustom;

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;

.field final synthetic $resolver:Loj3;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivCustomBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivCustomBinder;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->this$0:Lcom/yandex/div/core/view2/divs/DivCustomBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$divValue:Lcom/yandex/div2/DivCustom;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$path:Lcom/yandex/div/core/state/DivStatePath;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->invoke(Landroid/view/View;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->this$0:Lcom/yandex/div/core/view2/divs/DivCustomBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->f(Lcom/yandex/div/core/view2/divs/DivCustomBinder;)Lcom/yandex/div/core/a;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$divValue:Lcom/yandex/div2/DivCustom;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$resolver:Loj3;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;->$path:Lcom/yandex/div/core/state/DivStatePath;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/yandex/div/core/a;->bindView(Landroid/view/View;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method
