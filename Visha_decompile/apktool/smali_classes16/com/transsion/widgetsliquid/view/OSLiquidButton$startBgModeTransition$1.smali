.class final Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidButton;->startBgModeTransition(Z)V
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
        "\u0000\u000e\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "progress",
        "Lzfb;",
        "invoke",
        "(F)V",
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
.field final synthetic $endTextColor:I

.field final synthetic $evaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic $startTextColor:I

.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidButton;Landroid/animation/ArgbEvaluator;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->$evaluator:Landroid/animation/ArgbEvaluator;

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->$startTextColor:I

    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->$endTextColor:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->invoke(F)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(F)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    invoke-static {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->access$isCustomIconColor$p(Lcom/transsion/widgetsliquid/view/OSLiquidButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->$evaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->$startTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->$endTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton$startBgModeTransition$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->getMIconText()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
