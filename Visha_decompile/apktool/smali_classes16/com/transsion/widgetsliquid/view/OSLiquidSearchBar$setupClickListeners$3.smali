.class final Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->W()V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
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
.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$3;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$3;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$3;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getOnRightIcon2ClickListener$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lc74;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
