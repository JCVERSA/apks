.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranAospForegroundServiceObserver;,
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospActivityManagerExtUnofficial"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerForegroundServiceObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;)Z
    .locals 1

    new-instance p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranAospForegroundServiceObserver;

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranAospForegroundServiceObserver;-><init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficialExt$TranForegroundServiceObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "TranAospActivityManagerExtUnofficial"

    const-string v0, "registerForegroundServiceObserver: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
