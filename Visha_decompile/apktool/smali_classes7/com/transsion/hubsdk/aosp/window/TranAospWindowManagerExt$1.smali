.class Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissCancelled()V

    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissError()V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissSucceeded()V

    :cond_0
    return-void
.end method
