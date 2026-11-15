.class final Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;
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
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "currentNightMode",
        "Lzfb;",
        "invoke",
        "(Z)V",
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
.field final synthetic $lightIconColor:I

.field final synthetic $lightSubtitleColor:I

.field final synthetic $lightTitleColor:I

.field final synthetic $nightIconColor:I

.field final synthetic $targets:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;


# direct methods
.method public constructor <init>(IIIILcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$nightIconColor:I

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$lightIconColor:I

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$lightTitleColor:I

    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$lightSubtitleColor:I

    iput-object p5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    iput-object p6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$targets:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->invoke(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 7

    .line 2
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$nightIconColor:I

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$lightIconColor:I

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$lightTitleColor:I

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$lightSubtitleColor:I

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$startBgModeTransition$2;->$targets:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->access$startBgModeTransition$applyForegroundForMode(IIIILcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;Z)V

    return-void
.end method
