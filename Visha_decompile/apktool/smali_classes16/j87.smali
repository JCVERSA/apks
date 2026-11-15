.class public final synthetic Lj87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    iput p2, p0, Lj87;->c:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lj87;->b:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    iget p0, p0, Lj87;->c:I

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;->d(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
