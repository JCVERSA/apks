.class public final synthetic Ly57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

.field public final synthetic c:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly57;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    iput-object p2, p0, Ly57;->c:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly57;->b:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;

    iget-object p0, p0, Ly57;->c:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->a(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;Landroid/view/View;)V

    return-void
.end method
