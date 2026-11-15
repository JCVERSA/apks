.class Lcom/transsion/livecaption/client/SubtitleManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/livecaption/client/SubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/livecaption/client/SubtitleManager;


# direct methods
.method public constructor <init>(Lcom/transsion/livecaption/client/SubtitleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "Client bind Service successful"

    const-string v0, "SubtitleManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p2}, Lcom/transsion/livecaption/IAapService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/livecaption/IAapService;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p1}, Lcom/transsion/livecaption/client/SubtitleManager;->c(Lcom/transsion/livecaption/client/SubtitleManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "service disconnected."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p2, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->e(Lcom/transsion/livecaption/client/SubtitleManager;Landroid/os/RemoteException;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p2}, Lcom/transsion/livecaption/client/SubtitleManager;->b(Lcom/transsion/livecaption/client/SubtitleManager;)Lcom/transsion/livecaption/constant/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/transsion/livecaption/constant/State;->CONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p1, p2}, Lcom/transsion/livecaption/client/SubtitleManager;->d(Lcom/transsion/livecaption/client/SubtitleManager;Lcom/transsion/livecaption/constant/State;)V

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->f(Lcom/transsion/livecaption/client/SubtitleManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    invoke-virtual {p1}, Lcom/transsion/livecaption/client/SubtitleManager;->release()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client unbind Service , state from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {v0}, Lcom/transsion/livecaption/client/SubtitleManager;->b(Lcom/transsion/livecaption/client/SubtitleManager;)Lcom/transsion/livecaption/constant/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SubtitleManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p1, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->d(Lcom/transsion/livecaption/client/SubtitleManager;Lcom/transsion/livecaption/constant/State;)V

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager$1;->this$0:Lcom/transsion/livecaption/client/SubtitleManager;

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz p0, :cond_0

    :try_start_0
    const-string p1, "service disconnected."

    const/16 v0, 0x3f7

    invoke-interface {p0, v0, p1}, Lcom/transsion/livecaption/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
