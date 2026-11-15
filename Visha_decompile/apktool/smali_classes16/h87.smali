.class public final synthetic Lh87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lh87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;->b(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
