.class final Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mAnimatorRunnable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;",
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
.field final synthetic this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mAnimatorRunnable$2;->this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;
    .locals 1

    .line 2
    new-instance v0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mAnimatorRunnable$2;->this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMLiquidEffectViewBgTransition()Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$mAnimatorRunnable$2;->invoke()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;

    move-result-object p0

    return-object p0
.end method
