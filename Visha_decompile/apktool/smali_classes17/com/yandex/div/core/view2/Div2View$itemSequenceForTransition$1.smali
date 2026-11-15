.class final Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/Div2View;->E(Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Loj3;)Lpc9;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "div",
        "Lcom/yandex/div2/Div;",
        "invoke",
        "(Lcom/yandex/div2/Div;)Ljava/lang/Boolean;"
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
.field final synthetic $resolver:Loj3;

.field final synthetic $selectors:Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhg;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhg;Loj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhg;",
            "Loj3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;->$selectors:Lhg;

    iput-object p2, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/yandex/div2/Div;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;->$selectors:Lhg;

    check-cast p1, Lcom/yandex/div2/Div$n;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivState;->B:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;->$resolver:Loj3;

    invoke-virtual {p1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lhg;->addLast(Ljava/lang/Object;)V

    .line 3
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$1;->invoke(Lcom/yandex/div2/Div;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
