.class public final synthetic Ls67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls67;->b:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Ls67;->b:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->a(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
