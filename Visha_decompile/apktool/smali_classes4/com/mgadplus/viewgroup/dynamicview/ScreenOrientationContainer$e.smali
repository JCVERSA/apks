.class public Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x8

    if-eqz v2, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v1, :cond_1

    if-ne v2, v3, :cond_9

    :cond_1
    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v7, p1, v6

    const/4 v8, 0x4

    const-wide/16 v9, 0x12c

    const/high16 v11, 0x40900000    # 4.5f

    if-lez v7, :cond_4

    sub-float v7, p1, v0

    cmpl-float v7, v7, v11

    if-lez v7, :cond_4

    if-eq v2, v1, :cond_2

    if-ne v2, v3, :cond_9

    :cond_2
    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mFromUser:Z

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->a(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    move-result-object p0

    invoke-virtual {p0, v1, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    cmpl-float v3, v0, v6

    if-lez v3, :cond_5

    sub-float v3, v0, p1

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_6

    :cond_5
    const/high16 v3, -0x3f600000    # -5.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_9

    sub-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    :cond_6
    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_7

    if-ne v2, v4, :cond_9

    :cond_7
    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mFromUser:Z

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->a(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    move-result-object p0

    invoke-virtual {p0, v1, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_9
    :goto_0
    return-void
.end method
