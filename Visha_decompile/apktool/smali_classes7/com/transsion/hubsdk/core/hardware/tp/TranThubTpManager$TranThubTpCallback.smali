.class Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;
.super Lcom/transsion/hubsdk/hardware/tp/ITranTpCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubTpCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/tp/ITranTpCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;->mCallback:Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;->mCallback:Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;->onEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
