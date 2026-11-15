.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setVisibility(I)V

    invoke-static {v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->d(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->j(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->openFootOperationBar()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
