.class public Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLocalePickerManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "locale_picker"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranThubLocalePickerManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->lambda$updateLocale$0(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateLocale$0(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/internal/app/TranLocale;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/internal/app/TranLocale;-><init>(Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->updateLocale(Lcom/transsion/hubsdk/internal/app/TranLocale;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->getAllAssetLocales(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllAssetLocales fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;

    new-instance v1, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public setService(Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    return-void
.end method

.method public updateLocale(Ljava/util/Locale;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ls3b;

    invoke-direct {v1, p0, p1}, Ls3b;-><init>(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)V

    const-string p0, "locale_picker"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    const-string p1, "updateLocale"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLocales(Landroid/os/LocaleList;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->updateLocales(Landroid/os/LocaleList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLocales fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
