.class final Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->b(Le74;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/text/Editable;",
        "it",
        "Lzfb;",
        "invoke",
        "(Landroid/text/Editable;)V",
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
.field final synthetic $valueUpdater:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;->$valueUpdater:Le74;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;->invoke(Landroid/text/Editable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1$setViewStateChangeListener$1;->$valueUpdater:Le74;

    invoke-static {v0, p1, p0}, Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;->c(Lcom/yandex/div/core/view2/divs/DivInputBinder$createCallbacks$1;Landroid/text/Editable;Le74;)V

    return-void
.end method
