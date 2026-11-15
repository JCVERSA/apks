.class public Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;,
        Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;,
        Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;,
        Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;
    }
.end annotation


# static fields
.field public static final MSG_CHANGE_TO_SENSOR:I = 0x1

.field public static w:Ljava/lang/ref/WeakReference;


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

.field public j:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;

.field public k:Landroid/hardware/SensorManager;

.field public l:Landroid/hardware/Sensor;

.field public m:Z

.field public mFromUser:Z

.field public mScreenLocked:Z

.field public n:Z

.field public o:I

.field public p:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;

.field public q:Z

.field public r:I

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->o:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->q:Z

    .line 4
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->r:I

    .line 5
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->u:I

    .line 6
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->o:I

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->q:Z

    .line 10
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->r:I

    .line 11
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->u:I

    .line 12
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->o:I

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->q:Z

    .line 16
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->r:I

    .line 17
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->u:I

    .line 18
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->i:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->n:Z

    return p1
.end method

.method public static synthetic c(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->j()V

    return-void
.end method

.method public static synthetic d(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->b:Z

    return p1
.end method


# virtual methods
.method public clickFullScreenView()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->i:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mFromUser:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setPortrait()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setLandScape()V

    :goto_0
    return-void
.end method

.method public contain(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->v:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->unRegisterSensor()V

    return-void
.end method

.method public getCurentActivity()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayRotation()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x10e

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0

    :cond_3
    const/16 p0, 0x5a

    return p0

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->getDisplayRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->getDisplayRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public isFullScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->m:Z

    return p0
.end method

.method public isOritationLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->q:Z

    return p0
.end method

.method public isScreenLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mScreenLocked:Z

    return p0
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mFromUser:Z

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->n:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->registerSensor()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->i()V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->unRegisterSensor()V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    invoke-direct {v0, p0, p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->i:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->j:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->l:Landroid/hardware/Sensor;

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->i:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$d;

    invoke-direct {v0, p0, v1}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$f;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->v:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public lockToLandScape()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$b;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mFromUser:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mScreenLocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->n:Z

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setLandScape()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setPortrait()V

    :cond_2
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->r:I

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->isFullScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->s:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->t:Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->unRegisterSensor()V

    :cond_1
    return-void
.end method

.method public registerSensor()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->s:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->j:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->l:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->contain(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->r:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->t:Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->registerSensor()V

    :cond_0
    return-void
.end method

.method public setCurentActivity(Landroid/app/Activity;)V
    .locals 0

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->w:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setLandScape()V
    .locals 4

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->m:Z

    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->e:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->f:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->g:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->h:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->l()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->p:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;->onScreenOrientationChange(I)V

    :cond_4
    return-void
.end method

.method public setOnScreenOrientationChangeListener(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->p:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;

    return-void
.end method

.method public setPortrait()V
    .locals 4

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->mScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->m:Z

    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->n:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->c:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->d:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->e:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->f:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->g:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->h:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->m()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->p:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;->onScreenOrientationChange(I)V

    :cond_4
    return-void
.end method

.method public unRegisterSensor()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->s:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->k:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->j:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$e;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
