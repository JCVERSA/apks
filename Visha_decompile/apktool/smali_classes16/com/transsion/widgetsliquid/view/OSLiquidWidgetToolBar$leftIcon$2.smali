.class final Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$leftIcon$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/transsion/widgetsliquid/view/OSLiquidButton;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$leftIcon$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$leftIcon$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    sget v1, Lcom/transsion/widgetsliquid/R$id;->toolbar_left_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$leftIcon$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    .line 3
    sget-object v1, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->FOB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    .line 4
    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->access$getMLightTypeConfig$p(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;)Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$leftIcon$2;->invoke()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    return-object p0
.end method
