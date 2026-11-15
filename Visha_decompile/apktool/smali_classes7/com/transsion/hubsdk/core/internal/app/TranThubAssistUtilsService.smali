.class public Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranAssistUtilsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAssistUtilsService"


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "assistutils"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/internal/app/ITranAssistUtils$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->lambda$showSessionForActiveServiceExt$0(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showSessionForActiveServiceExt$0(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;

    invoke-direct {v1, p0, p3}, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;-><init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;)V

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;->showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/internal/app/ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public setService(Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAssistUtils;

    return-void
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 8

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lj0b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lj0b;-><init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)V

    const-string p0, "assistutils"

    invoke-virtual {v0, v7, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showSessionForActiveServiceExt result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
