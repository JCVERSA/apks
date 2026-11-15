.class public Lcom/transsion/hubsdk/api/app/TranAlarmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAlarmManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAlarmManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAlarmManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranAlarmManagerAdapter;->cancelPoweroffAlarm(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAlarmManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubAlarmManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAlarmManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAlarmManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAlarmManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospAlarmManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospAlarmManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAlarmManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAlarmManager;

    :cond_2
    return-object p1
.end method
