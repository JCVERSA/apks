.class final Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$titleTextView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$titleTextView$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$titleTextView$2;->this$0:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    sget v0, Lcom/transsion/widgetsliquid/R$id;->toolbar_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$titleTextView$2;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method
