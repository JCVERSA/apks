.class public Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/media/projection/ITranMediaProjectionManagerAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/media/projection/ITranMediaProjectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "media_projection"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/media/projection/ITranMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/media/projection/ITranMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;->mService:Lcom/transsion/hubsdk/media/projection/ITranMediaProjectionManager;

    return-void
.end method


# virtual methods
.method public getPutIBindIntent(ILjava/lang/String;IZ)Landroid/content/Intent;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;->mService:Lcom/transsion/hubsdk/media/projection/ITranMediaProjectionManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/media/projection/ITranMediaProjectionManager;->getPutIBindIntent(ILjava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-object p0
.end method
