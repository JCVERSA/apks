.class public Lcom/transsion/playercommon/activities/BaseFoldActivity;
.super Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "BaseFoldActivity"


# instance fields
.field private mAngleSensor:Landroid/hardware/Sensor;

.field protected mCurrentConfiguration:Landroid/content/res/Configuration;

.field protected mCurrentHingeAngle:I

.field private final mHalfOpenRange:Lu15;

.field private mIsFirstAngleReception:Z

.field protected mIsInMultiWindowMode:Z

.field protected mIsLargeScreen:Z

.field private mIsPCMode:Z

.field protected mIsScreenLandscape:Z

.field private mIsTabletDevice:Z

.field protected mLastHingeAngle:I

.field protected mScreenHeightDp:I

.field protected mScreenLayout:I

.field protected mScreenRealType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field protected mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field protected mScreenWidthDp:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field public mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

.field private final mWindowSize:[I

.field private final screenTypeChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "La39;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;-><init>()V

    sget-object v0, Lcom/transsion/utils/BaseConstant;->l:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenRealType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/16 v0, 0xb4

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mLastHingeAngle:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowSize:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsFirstAngleReception:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    new-instance v0, Lu15;

    const/4 v1, 0x5

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lu15;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mHalfOpenRange:Lu15;

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/playercommon/activities/BaseFoldActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsFirstAngleReception:Z

    return-void
.end method


# virtual methods
.method public final D()Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;-><init>(Lcom/transsion/playercommon/activities/BaseFoldActivity;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public final E()Z
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->isThunderbackWindow(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public final F()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyScreenType isInMultiWindowMode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFoldActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenType isInThunderBackWindowMode():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->E()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    :cond_1
    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenType mIsLargeScreen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->getScreenType()Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v2, v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyScreenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La39;

    if-eqz v2, :cond_5

    invoke-interface {v2, v0}, La39;->a(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final G()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isNeedAngelSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mAngleSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->D()Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mAngleSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isNeedAngelSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public addOnScreenTypeListener(Ljava/lang/Object;La39;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->addOnScreenTypeListener(Ljava/lang/Object;ZLa39;)V

    return-void
.end method

.method public addOnScreenTypeListener(Ljava/lang/Object;ZLa39;)V
    .locals 1

    .line 2
    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-interface {p3, p0}, La39;->a(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    :cond_1
    return-void
.end method

.method public changeThemeWindowBackground()V
    .locals 0

    return-void
.end method

.method public getScreenType()Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object p0

    :cond_1
    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsScreenLandscape:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    :goto_0
    return-object p0

    :cond_3
    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object p0
.end method

.method public getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public initWindowOptions(ILandroid/content/res/Configuration;)V
    .locals 7

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->D:Z

    if-nez v0, :cond_0

    const/16 p1, 0xb4

    :cond_0
    new-instance v0, Lwoc;

    invoke-direct {v0}, Lwoc;-><init>()V

    :try_start_0
    new-instance v1, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;-><init>()V

    invoke-virtual {v1, p2}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->isThunderbackWindow(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, v0, Lwoc;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranWindowConfiguration exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseFoldActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p1, v0, Lwoc;->k:I

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    iput-boolean v1, v0, Lwoc;->h:Z

    iget-boolean v1, v0, Lwoc;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lwoc;->c:Z

    iget-boolean v1, v0, Lwoc;->f:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isSmallSplitScreen(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lwoc;->d:Z

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Lwoc;->i:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Lwoc;->j:I

    iget-boolean v1, v0, Lwoc;->f:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lwoc;->g:Z

    goto :goto_5

    :cond_4
    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v5

    if-ge v1, v5, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lwoc;->g:Z

    :goto_5
    invoke-static {}, Lcom/transsion/utils/a;->j()Landroid/graphics/Point;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v5, v0, Lwoc;->n:I

    iput v1, v0, Lwoc;->o:I

    iget-boolean v6, v0, Lwoc;->c:Z

    if-eqz v6, :cond_8

    iget-boolean v6, v0, Lwoc;->g:Z

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    move v5, v1

    :goto_6
    if-eqz v6, :cond_7

    iget v1, v0, Lwoc;->i:I

    goto :goto_7

    :cond_7
    iget v1, v0, Lwoc;->j:I

    :goto_7
    int-to-float v1, v1

    invoke-static {}, Lf39;->b()F

    move-result v6

    mul-float/2addr v1, v6

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, v0, Lwoc;->e:F

    goto :goto_8

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lwoc;->e:F

    :goto_8
    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v5, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v6, 0x5

    if-ne v1, v5, :cond_9

    invoke-static {}, Lpp3;->l()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lwoc;->c:Z

    if-nez v1, :cond_f

    :cond_9
    const/16 v1, 0x96

    if-gt p1, v1, :cond_f

    if-lt p1, v6, :cond_f

    iget-boolean p1, v0, Lwoc;->c:Z

    const/4 v1, 0x3

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lwoc;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    iput v3, v0, Lwoc;->a:I

    goto :goto_b

    :cond_a
    invoke-static {p2}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p2}, Lcom/transsion/utils/a;->x(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    iput v3, v0, Lwoc;->a:I

    goto :goto_b

    :cond_c
    :goto_9
    iput v1, v0, Lwoc;->a:I

    goto :goto_b

    :cond_d
    invoke-static {p2}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_e

    iput v1, v0, Lwoc;->a:I

    goto :goto_b

    :cond_e
    iput v3, v0, Lwoc;->a:I

    goto :goto_b

    :cond_f
    if-ge p1, v6, :cond_10

    iput v2, v0, Lwoc;->a:I

    goto :goto_b

    :cond_10
    iget-boolean p1, v0, Lwoc;->c:Z

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Lwoc;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    iput v2, v0, Lwoc;->a:I

    goto :goto_b

    :cond_11
    invoke-static {}, Lydc;->g()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {p2}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {p2}, Lcom/transsion/utils/a;->x(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_a

    :cond_12
    iput v2, v0, Lwoc;->a:I

    goto :goto_b

    :cond_13
    :goto_a
    iput v4, v0, Lwoc;->a:I

    goto :goto_b

    :cond_14
    invoke-static {p2}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_15

    iput v4, v0, Lwoc;->a:I

    goto :goto_b

    :cond_15
    iput v2, v0, Lwoc;->a:I

    :cond_16
    :goto_b
    iget-boolean p1, v0, Lwoc;->f:Z

    if-eqz p1, :cond_17

    iput v2, v0, Lwoc;->a:I

    :cond_17
    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwoc;

    if-eqz p1, :cond_18

    iget-object p2, p1, Lwoc;->m:Lwoc;

    if-eqz p2, :cond_18

    iget-boolean p2, p2, Lwoc;->h:Z

    iget-boolean v1, v0, Lwoc;->h:Z

    if-eq p2, v1, :cond_18

    if-eqz v1, :cond_18

    iput-boolean v3, v0, Lwoc;->c:Z

    :cond_18
    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/WindowInfoViewModel;->c(Lwoc;)V

    goto :goto_c

    :cond_19
    invoke-virtual {p1, v0}, Lwoc;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    iget p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1a
    iget p2, p1, Lwoc;->a:I

    iput p2, v0, Lwoc;->b:I

    iput-object p1, v0, Lwoc;->m:Lwoc;

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p2, p2, Lcom/transsion/WindowInfoViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/WindowInfoViewModel;->c(Lwoc;)V

    :goto_c
    return-void
.end method

.method public isExtendAngelMonitorTime()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInSameState()Z
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mLastHingeAngle:I

    if-lt v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mHalfOpenRange:Lu15;

    invoke-virtual {v1, v0}, Lu15;->m(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mHalfOpenRange:Lu15;

    iget v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mLastHingeAngle:I

    invoke-virtual {v0, v1}, Lu15;->m(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    const/16 v1, 0x96

    if-le v0, v1, :cond_3

    iget p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mLastHingeAngle:I

    if-le p0, v1, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInSplitScreen(Z)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p0, p0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwoc;

    iget-boolean p0, p0, Lwoc;->c:Z

    return p0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Loh1;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Lph1;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p1}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p0}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {p1}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p0}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-eq p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public isInitWindowOptions()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isIsFirstAngleReception()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsFirstAngleReception:Z

    return p0
.end method

.method public isNeedAngelSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSmallSplitScreen(Z)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p0, p0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwoc;

    iget-boolean p0, p0, Lwoc;->d:Z

    return p0

    :cond_0
    invoke-static {}, Lf39;->d()I

    move-result v0

    invoke-static {}, Lf39;->c()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/transsion/utils/BaseConstant;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->F()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFoldActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    iget v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    iput v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenLayout:I

    invoke-static {p1}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-boolean v5, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsScreenLandscape:Z

    if-eq v2, v5, :cond_3

    iput-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsScreenLandscape:Z

    move v0, v4

    :cond_3
    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenWidthDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v5, :cond_4

    iput v5, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenWidthDp:I

    move v0, v4

    :cond_4
    iget v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenHeightDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v5, :cond_5

    iput v5, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenHeightDp:I

    move v0, v4

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->F()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->changeThemeWindowBackground()V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged screenChange:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowSize:[I

    aget v1, v0, v3

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v1, v2, :cond_7

    aget v1, v0, v4

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v5, :cond_8

    :cond_7
    aput v2, v0, v3

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    aput p1, v0, v4

    iget p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->initWindowOptions(ILandroid/content/res/Configuration;)V

    :cond_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/transsion/utils/a;->b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lt81;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0}, Lcom/transsion/utils/a;->k(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenRealType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-static {p1}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsLargeScreen:Z

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    invoke-static {p0}, Lcom/transsion/utils/a;->u(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsScreenLandscape:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->F()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isNeedAngelSensor()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const-string p1, "android.sensor.hinge"

    const-string v0, "hinge"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->u(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mAngleSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mAngleSensor:Landroid/hardware/Sensor;

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowSize:[I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    aput v0, p1, v1

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowSize:[I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    aput v0, p1, v2

    const-class p1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/WindowInfoViewModel;

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInitWindowOptions()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwoc;

    iget p1, p1, Lwoc;->k:I

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    :cond_2
    iget p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->initWindowOptions(ILandroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isExtendAngelMonitorTime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->H()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isExtendAngelMonitorTime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->G()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/core/MainApp;->y(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    invoke-static {p0}, Lcom/transsion/utils/a;->u(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->F()V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/transsion/utils/a;->c(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTypeChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseFoldActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsTabletDevice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mIsPCMode:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/utils/a;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isExtendAngelMonitorTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->G()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isExtendAngelMonitorTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->H()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseFoldActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeScreenTypeListener(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->screenTypeChangeListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
