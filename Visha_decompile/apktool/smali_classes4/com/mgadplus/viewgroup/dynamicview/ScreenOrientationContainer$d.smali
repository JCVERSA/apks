.class public Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;->b:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mFromUser:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method
