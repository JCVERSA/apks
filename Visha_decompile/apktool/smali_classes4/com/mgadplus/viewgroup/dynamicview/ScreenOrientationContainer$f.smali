.class public Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;->a:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;->a:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmpd;->l(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->b(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Z)Z

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;->a:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->c(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V

    return-void
.end method
