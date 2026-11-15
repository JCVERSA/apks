.class public Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWallpaperManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wallpaper"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->lambda$setWallpaperComponent$0(Landroid/content/ComponentName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->lambda$setWallpaperComponentWithFlags$1(Landroid/content/ComponentName;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setWallpaperComponent$0(Landroid/content/ComponentName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setWallpaperComponentWithFlags$1(Landroid/content/ComponentName;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public animateWallpaperToDim(F)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->animateWallpaperToDim(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "animateWallpaperToDim: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->getBitmapAsUser(IZI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "getBitmapAsUser: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "getWallpaperInfo: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setService(Lcom/transsion/hubsdk/app/ITranWallpaperManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    return-void
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, La5b;

    invoke-direct {v1, p0, p1}, La5b;-><init>(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;)V

    const-string p0, "wallpaper"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWallpaperComponent name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lz4b;

    invoke-direct {v1, p0, p1, p2}, Lz4b;-><init>(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;I)V

    const-string p0, "wallpaper"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWallpaperComponentWithFlags name:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
