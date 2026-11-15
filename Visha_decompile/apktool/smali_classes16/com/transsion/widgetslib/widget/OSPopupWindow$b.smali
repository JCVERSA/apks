.class public final Lcom/transsion/widgetslib/widget/OSPopupWindow$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/OSPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/widgetslib/widget/OSPopupWindow$b;Landroid/view/View;Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;->c(Landroid/view/View;Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(II)I
    .locals 0

    if-lez p2, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public final c(Landroid/view/View;Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)Landroid/view/View;
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_liquid_popup_window_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$id;->liquid_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    sget-object v4, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->POPUP_WINDOW:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    invoke-virtual {v3, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnUnionRenderFrameAvailableListener()V

    instance-of p2, v2, Landroid/view/ViewGroup;

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    move-object p0, v2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of p0, v2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-eqz p0, :cond_a

    check-cast v2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {v2, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v4, p2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ltz v5, :cond_8

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_8
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_9
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    return-object v0
.end method
