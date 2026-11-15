.class final Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;->startBgModeTransition(Z)V
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
        "it",
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
.field final synthetic $endIconColor:I

.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;->$endIconColor:I

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

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;->invoke(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;->access$isCustomIconColor$p(Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;->access$getMIconTv(Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton$startBgModeTransition$3;->$endIconColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
