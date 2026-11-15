.class public final synthetic Ln87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    iput p2, p0, Ln87;->c:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Ln87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;

    iget p0, p0, Ln87;->c:I

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->b(Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
