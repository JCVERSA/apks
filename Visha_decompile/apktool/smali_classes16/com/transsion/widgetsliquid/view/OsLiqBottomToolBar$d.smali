.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->s(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

.field public final synthetic c:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->c:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->b:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->b:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->c:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->n(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->b:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->c:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->n(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->b:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->showWithFadeAnimation()V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;->c:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->m(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V

    :goto_0
    return v0
.end method
