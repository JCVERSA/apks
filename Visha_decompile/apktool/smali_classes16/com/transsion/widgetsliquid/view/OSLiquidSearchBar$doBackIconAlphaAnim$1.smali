.class public final Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->y(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J%\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1",
        "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;",
        "Landroidx/core/view/WindowInsetsCompat;",
        "insets",
        "",
        "Landroidx/core/view/WindowInsetsAnimationCompat;",
        "runningAnimations",
        "onProgress",
        "(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;",
        "animation",
        "Lzfb;",
        "onEnd",
        "(Landroidx/core/view/WindowInsetsAnimationCompat;)V",
        "widgetsliquid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getImeMaxHeight$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getImeMaxHeight$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)F

    move-result v0

    div-float v1, p1, v0

    :cond_1
    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->b:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getLeftIcon(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getLeftIcon(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    const-string v0, "insets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runningAnimations"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    const-string v0, "insets.getInsets(WindowInsetsCompat.Type.ime())"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p2, Landroidx/core/graphics/Insets;->left:I

    iget v2, p2, Landroidx/core/graphics/Insets;->top:I

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    const-string v1, "of(\n                    \u2026                        )"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p2, Landroidx/core/graphics/Insets;->top:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getImeMaxHeight$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    iget v0, v1, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getImeMaxHeight$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, v1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->b:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getLeftIcon(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getLeftIcon(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;->a:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getLeftIcon(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    :goto_1
    return-object p1
.end method
