.class public Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/client/SubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "Service interface descriptor: "

    const-string v1, "Client bind Service successful"

    const-string v2, "NexusFlow.SubtitleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Service component: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Service IBinder: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/IAapService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/aicore/nexusflow/IAapService;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    iget-object p1, p1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    if-nez p1, :cond_0

    const-string p1, "Failed to create IAapService interface from binder"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    new-instance p2, Landroid/os/RemoteException;

    const-string v0, "Interface creation failed"

    invoke-direct {p2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const-string p1, "IAapService interface created successfully"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->c(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)Lcom/transsion/aicore/nexusflow/constant/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/transsion/aicore/nexusflow/constant/State;->CONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0, p2}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Lcom/transsion/aicore/nexusflow/constant/State;)V

    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->g(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected error during service connection: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    new-instance p2, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V

    return-void

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SecurityException during interface setup: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Ljava/lang/SecurityException;)V

    return-void

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "service disconnected during interface setup: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->release()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Client unbind Service , state from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->c(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)Lcom/transsion/aicore/nexusflow/constant/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NexusFlow.SubtitleManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Lcom/transsion/aicore/nexusflow/constant/State;)V

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz p0, :cond_0

    :try_start_0
    const-string p1, "service disconnected."

    const/16 v0, 0x3f7

    invoke-interface {p0, v0, p1}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
