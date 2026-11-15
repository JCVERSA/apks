.class public final synthetic Lf87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lf87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;->c(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
