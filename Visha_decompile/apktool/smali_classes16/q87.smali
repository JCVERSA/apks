.class public final synthetic Lq87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lq87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->c(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
