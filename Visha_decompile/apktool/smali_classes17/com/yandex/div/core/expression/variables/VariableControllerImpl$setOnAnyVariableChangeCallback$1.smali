.class final Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->j(Loj3;Le74;)V
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
        "Lqnb;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lqnb;)V",
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
.field final synthetic $callback:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/expression/variables/VariableControllerImpl;",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;->this$0:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    iput-object p2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;->$callback:Le74;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqnb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;->invoke(Lqnb;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lqnb;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;->this$0:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    invoke-static {v0}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->n(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;->$callback:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
