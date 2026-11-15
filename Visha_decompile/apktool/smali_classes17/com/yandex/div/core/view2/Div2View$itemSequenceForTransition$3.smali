.class final Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$3;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lzl2;",
        "item",
        "",
        "invoke",
        "(Lzl2;)Ljava/lang/Boolean;",
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

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$3;->$selectors:Lhg;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lzl2;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p1

    invoke-interface {p1}, Log2;->n()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lwt2;->c(Ljava/util/List;)Z

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$3;->$selectors:Lhg;

    invoke-virtual {p0}, Lhg;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTransitionSelector;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lwt2;->b(Lcom/yandex/div2/DivTransitionSelector;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzl2;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View$itemSequenceForTransition$3;->invoke(Lzl2;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
