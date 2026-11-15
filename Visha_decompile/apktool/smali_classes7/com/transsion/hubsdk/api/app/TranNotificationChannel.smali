.class public Lcom/transsion/hubsdk/api/app/TranNotificationChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNotificationChannel"

.field public static final USER_LOCKED_IMPORTANCE:I = 0x4


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationChannel;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;


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
.method public getOriginalImportance(Landroid/app/NotificationChannel;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationChannelAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationChannelAdapter;->getOriginalImportance(Landroid/app/NotificationChannel;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationChannelAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNotificationChannel"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationChannel;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNotificationChannel"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationChannel;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospNotificationChannel;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospNotificationChannel;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationChannel;

    :cond_2
    return-object p1
.end method

.method public lockFields(Landroid/app/NotificationChannel;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationChannel;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationChannelAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationChannelAdapter;->lockFields(Landroid/app/NotificationChannel;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "channel cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
