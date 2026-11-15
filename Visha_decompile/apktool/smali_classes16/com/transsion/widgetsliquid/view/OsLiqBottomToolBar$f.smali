.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->k(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method
