.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;
.super Lcom/transsion/hubsdk/app/ITranForegroundServiceObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubForegroundServiceObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranForegroundServiceObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;

    return-void
.end method


# virtual methods
.method public onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial$TranThubForegroundServiceObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
