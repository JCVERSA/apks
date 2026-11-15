.class final Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lqnb;",
        "variable",
        "invoke",
        "(Lqnb;)Lqnb;",
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
.field final synthetic $this_updateVariable:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $valueMutation:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/Div2View;",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;->$this_updateVariable:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;->$valueMutation:Le74;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqnb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;->invoke(Lqnb;)Lqnb;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lqnb;)Lqnb;
    .locals 2

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lqnb$a;

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;->$this_updateVariable:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action requires array variable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lqnb;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;->$this_updateVariable:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getView()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid variable value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-object p1

    .line 8
    :cond_2
    move-object v1, p1

    check-cast v1, Lqnb$a;

    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;->$valueMutation:Le74;

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {v1, p0}, Lqnb$a;->t(Lorg/json/JSONArray;)V

    return-object p1
.end method
