.class public final Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->C(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;


# direct methods
.method public constructor <init>(FLcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->a:F

    iput-object p2, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnl5;->a:Lnl5;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->a:F

    invoke-virtual {v0, v1, v2, v3}, Lnl5;->c(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float v3, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float v4, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->a:F

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getSmoothCapsule(FFFFF)Landroid/graphics/Path;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    invoke-static {p2, p0}, Lq23;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$c;->a:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_1
    :goto_0
    return-void
.end method
