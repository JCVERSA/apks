.class final Lcom/yandex/div/core/view2/Div2View$renderConfig$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IJ)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lfs8;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Lfs8;",
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
.field final synthetic this$0:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$renderConfig$1;->this$0:Lcom/yandex/div/core/view2/Div2View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lfs8;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/div/core/b;->b:Lcom/yandex/div/core/b$a;

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View$renderConfig$1;->this$0:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/div/core/b$a;->a(Landroid/content/Context;)Lcom/yandex/div/core/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/b;->e()Lcom/yandex/div/core/dagger/DivKitComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/DivKitComponent;->a()Loq4;

    move-result-object p0

    invoke-interface {p0}, Loq4;->f()Loj8;

    move-result-object p0

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfs8;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View$renderConfig$1;->invoke()Lfs8;

    move-result-object p0

    return-object p0
.end method
