.class final Lcom/yandex/div/core/Div2Context$globalVariableController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Lcom/yandex/div/core/dagger/Div2Component;Landroidx/lifecycle/LifecycleOwner;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lsi4;",
        "invoke",
        "()Lsi4;",
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
.field final synthetic this$0:Lcom/yandex/div/core/Div2Context;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/Div2Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/Div2Context$globalVariableController$2;->this$0:Lcom/yandex/div/core/Div2Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context$globalVariableController$2;->invoke()Lsi4;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lsi4;
    .locals 2

    .line 1
    new-instance v0, Lsi4;

    iget-object p0, p0, Lcom/yandex/div/core/Div2Context$globalVariableController$2;->this$0:Lcom/yandex/div/core/Div2Context;

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->y()Lcom/yandex/div/core/expression/variables/DivVariableController;

    move-result-object p0

    const-string v1, "div2Component.divVariableController"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lsi4;-><init>(Lcom/yandex/div/core/expression/variables/DivVariableController;)V

    return-object v0
.end method
