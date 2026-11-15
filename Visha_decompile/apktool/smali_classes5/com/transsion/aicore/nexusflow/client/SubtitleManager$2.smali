.class Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NexusFlow.SubtitleManager"

    :try_start_0
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    iget-object v2, v1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz v1, :cond_0

    const-string v1, "Setting callback after delay..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    iget-object v2, v1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    iget-object v1, v1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    invoke-interface {v2, v1}, Lcom/transsion/aicore/nexusflow/IAapService;->setCallback(Lcom/transsion/aicore/nexusflow/IAapCallback;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DATA_CODE"

    const/16 v3, 0x1392

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    iget-object v2, v2, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    invoke-interface {v2, v1}, Lcom/transsion/aicore/nexusflow/IAapService;->sendCommand(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    iget-object v1, v1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz v1, :cond_1

    const/16 v2, 0x3f3

    invoke-interface {v1, v2}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onEvent(I)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_0
    const-string v1, "Service or callback is null after delay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Service became null"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error in delayed callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    new-instance v0, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V

    goto :goto_3

    :goto_1
    const-string v2, "service disconnected in delayed callback."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0, v1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V

    goto :goto_3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException in delayed callback setup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;->this$0:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0, v1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Ljava/lang/SecurityException;)V

    :cond_1
    :goto_3
    return-void
.end method
