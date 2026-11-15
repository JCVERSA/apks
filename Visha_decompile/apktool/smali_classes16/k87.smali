.class public final synthetic Lk87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lk87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->f(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
