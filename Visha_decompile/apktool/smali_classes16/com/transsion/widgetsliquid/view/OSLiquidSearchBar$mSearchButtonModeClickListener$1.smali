.class final Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/view/View;",
        "it",
        "Lzfb;",
        "invoke",
        "(Landroid/view/View;)V",
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

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;->invoke(Landroid/view/View;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getMCurrentSearchState$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->access$getMCurrentSearchState$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)I

    move-result v2

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IIZLjava/lang/Boolean;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
