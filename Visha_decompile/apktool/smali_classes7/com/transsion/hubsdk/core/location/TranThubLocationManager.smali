.class public Lcom/transsion/hubsdk/core/location/TranThubLocationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/location/ITranLocationManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLocationManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/location/ITranLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/location/ITranLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/location/ITranLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;->mService:Lcom/transsion/hubsdk/location/ITranLocationManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/location/TranThubLocationManager;ZLandroid/os/UserHandle;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;->lambda$setLocationEnabledForUser$0(ZLandroid/os/UserHandle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setLocationEnabledForUser$0(ZLandroid/os/UserHandle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;->mService:Lcom/transsion/hubsdk/location/ITranLocationManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/location/ITranLocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lt3b;

    invoke-direct {v1, p0, p1, p2}, Lt3b;-><init>(Lcom/transsion/hubsdk/core/location/TranThubLocationManager;ZLandroid/os/UserHandle;)V

    const-string p0, "location"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;->TAG:Ljava/lang/String;

    const-string p1, "setLocationEnabledForUser sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/location/ITranLocationManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;->mService:Lcom/transsion/hubsdk/location/ITranLocationManager;

    return-void
.end method
