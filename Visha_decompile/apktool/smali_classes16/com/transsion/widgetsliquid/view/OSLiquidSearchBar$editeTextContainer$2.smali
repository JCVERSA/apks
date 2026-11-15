.class final Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    sget v1, Lcom/transsion/widgetsliquid/R$id;->edite_text_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;->$context:Landroid/content/Context;

    check-cast v0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    .line 3
    sget-object v2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->SEARCH_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    .line 4
    sget-object v2, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->SEARCH_BAR_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->enabledPressView(Z)V

    .line 6
    invoke-static {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$isUseUnionBlur$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->enableUnionBlur(Z)V

    .line 7
    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_search_bar_out_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    const-string v1, "#14FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    const-string v1, "#CCFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;->invoke()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    return-object p0
.end method
