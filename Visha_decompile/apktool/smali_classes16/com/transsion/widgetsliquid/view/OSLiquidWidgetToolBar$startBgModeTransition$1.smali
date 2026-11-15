.class final Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->startBgModeTransition(Z)V
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
.field final synthetic $argbEvaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic $endIconColor:I

.field final synthetic $endSubtitleColor:I

.field final synthetic $endTitleColor:I

.field final synthetic $startIconColor:I

.field final synthetic $startSubtitleColor:I

.field final synthetic $startTitleColor:I

.field final synthetic $targets:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;


# direct methods
.method public constructor <init>(Landroid/animation/ArgbEvaluator;IIIIIILcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$argbEvaluator:Landroid/animation/ArgbEvaluator;

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$startIconColor:I

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$endIconColor:I

    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$startTitleColor:I

    iput p5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$endTitleColor:I

    iput p6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$startSubtitleColor:I

    iput p7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$endSubtitleColor:I

    iput-object p8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    iput-object p9, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$targets:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

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

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->invoke(F)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(F)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$startIconColor:I

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$endIconColor:I

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$startTitleColor:I

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$endTitleColor:I

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$startSubtitleColor:I

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$endSubtitleColor:I

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    iget-object v8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$1;->$targets:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

    move v9, p1

    invoke-static/range {v0 .. v9}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->access$startBgModeTransition$applyForegroundProgress(Landroid/animation/ArgbEvaluator;IIIIIILcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;F)V

    return-void
.end method
