.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/IWindowContainerTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

.field final synthetic val$callback:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$2;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$2;->val$callback:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$2;->val$callback:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method
