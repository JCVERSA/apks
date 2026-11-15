.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerUnofficialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method


# virtual methods
.method public registerForegroundServiceObserver(Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerForegroundServiceObserver(Lcom/transsion/hubsdk/app/ITranForegroundServiceObserver;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForegroundServiceObserver error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
