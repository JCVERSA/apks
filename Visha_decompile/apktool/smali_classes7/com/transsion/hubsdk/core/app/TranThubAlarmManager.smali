.class public Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranAlarmManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAlarmManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranAlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alarm"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;->mService:Lcom/transsion/hubsdk/app/ITranAlarmManager;

    return-void
.end method


# virtual methods
.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;->mService:Lcom/transsion/hubsdk/app/ITranAlarmManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranAlarmManager;->cancelPoweroffAlarm(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelPoweroffAlarm fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
