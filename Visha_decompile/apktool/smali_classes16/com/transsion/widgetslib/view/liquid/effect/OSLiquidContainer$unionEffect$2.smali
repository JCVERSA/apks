.class final Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$unionEffect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;",
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
.field final synthetic this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$unionEffect$2;->this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$unionEffect$2;->this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;->getTranView()Lcom/transsion/hubsdk/api/view/TranView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$unionEffect$2;->this$0:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/view/TranView;->getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer$unionEffect$2;->invoke()Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    move-result-object p0

    return-object p0
.end method
