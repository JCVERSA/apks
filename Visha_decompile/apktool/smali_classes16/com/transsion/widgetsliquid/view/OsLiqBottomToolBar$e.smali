.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->A()V
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

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$e;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$e;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->k(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$e;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setVisibility(I)V

    return-void
.end method
