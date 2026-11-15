.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->d()V
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
        "androidx/core/view/ViewKt$doOnPreDraw$1",
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
.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic $transition$inlined:Landroid/animation/LayoutTransition;

.field final synthetic this$0:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;Landroid/animation/LayoutTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->$transition$inlined:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->a(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getMFixedHeight()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper$reset$$inlined$doOnPreDraw$1;->$transition$inlined:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_3
    :goto_1
    return-void
.end method
