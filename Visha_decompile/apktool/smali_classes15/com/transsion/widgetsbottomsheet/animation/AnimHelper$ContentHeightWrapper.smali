.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentHeightWrapper"
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public b:Landroid/animation/LayoutTransition;

.field public c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/view/View;)V
    .locals 1

    const-string v0, "panel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->b:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->b:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setMFixedHeight(Z)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    new-instance v2, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;Landroid/animation/LayoutTransition;)V

    invoke-static {v1, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object p0

    const-string v0, "View.doOnPreDraw(\n    cr\u2026dd(this) { action(this) }"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->b:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
