.class final Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$2;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/yandex/div2/Div;",
        "div",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div2/Div;)V",
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
.field final synthetic $selectors:Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhg;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhg;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$2;->$selectors:Lhg;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$2;->invoke(Lcom/yandex/div2/Div;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div2/Div;)V
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p1, p1, Lcom/yandex/div2/Div$n;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$2;->$selectors:Lhg;

    invoke-virtual {p0}, Lhg;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method
