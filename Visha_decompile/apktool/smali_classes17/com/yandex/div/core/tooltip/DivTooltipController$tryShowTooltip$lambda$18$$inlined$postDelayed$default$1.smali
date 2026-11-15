.class public final Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/tooltip/DivTooltipController;->u(Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "androidx/core/os/HandlerKt$postDelayed$runnable$1",
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
.field final synthetic $div2View$inlined:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $divTooltip$inlined:Lcom/yandex/div2/DivTooltip;

.field final synthetic this$0:Lcom/yandex/div/core/tooltip/DivTooltipController;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;->this$0:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iput-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;->$divTooltip$inlined:Lcom/yandex/div2/DivTooltip;

    iput-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;->$div2View$inlined:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;->this$0:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iget-object v1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;->$divTooltip$inlined:Lcom/yandex/div2/DivTooltip;

    iget-object v1, v1, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;->$div2View$inlined:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->n(Ljava/lang/String;Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method
