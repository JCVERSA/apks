.class public Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;->b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;->b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->d(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Z)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;->b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->d:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;->b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->c:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;->b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
