.class public Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAppWidgetManager"


# instance fields
.field private mAppWidgettListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/ITranAppWidget;",
            "Lcom/transsion/hubsdk/appwidget/ITranAppWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    const-string v0, "appwidget"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getInstalledProviders(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "getInstalledProviders: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public registerAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p1, "registerAppWidgetListener failed,has registered "

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start registerAppWidgetListener: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;-><init>(Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;Lcom/transsion/hubsdk/api/app/ITranAppWidget;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->registerAppWidgetListener(Lcom/transsion/hubsdk/appwidget/ITranAppWidget;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p2, "registerAppWidgetListener: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    return-void
.end method

.method public unregisterAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterAppWidgetListener failed,not registered "

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start unregisterAppWidgetListener: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/appwidget/ITranAppWidget;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->unregisterAppWidgetListener(Lcom/transsion/hubsdk/appwidget/ITranAppWidget;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p2, "unregisterAppWidgetListener: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
