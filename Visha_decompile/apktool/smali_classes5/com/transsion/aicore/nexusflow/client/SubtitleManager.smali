.class public Lcom/transsion/aicore/nexusflow/client/SubtitleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/api/ISubtitle;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/transsion/aicore/nexusflow/constant/State;

.field public c:Lcom/google/gson/Gson;

.field public d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

.field public final e:Landroid/os/IBinder$DeathRecipient;

.field public f:Lcom/transsion/aicore/nexusflow/IAapService;

.field public final g:Landroid/content/ServiceConnection;

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/aicore/nexusflow/constant/State;->NONE:Lcom/transsion/aicore/nexusflow/constant/State;

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    new-instance v0, Lg5a;

    invoke-direct {v0, p0}, Lg5a;-><init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;

    invoke-direct {v0, p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$a;-><init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->g:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$3;

    invoke-direct {v0, p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$3;-><init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->a:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->setCallback(Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;)V

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->m()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->e:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)Lcom/transsion/aicore/nexusflow/constant/State;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Lcom/transsion/aicore/nexusflow/constant/State;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Landroid/os/RemoteException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;Ljava/lang/SecurityException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->l(Ljava/lang/SecurityException;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->n()V

    return-void
.end method


# virtual methods
.method public getState()Lcom/transsion/aicore/nexusflow/constant/State;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    return-object p0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->i()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->c:Lcom/google/gson/Gson;

    const-string p0, "NexusFlow.SubtitleManager"

    const-string v0, "client version:1758093675945"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.transsion.aicore.nexusflow"

    const-string v3, "com.transsion.aicore.nexusflow.service.SubtitleService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "client_version"

    const-string v2, "1758093675945"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client bind service:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NexusFlow.SubtitleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/aicore/nexusflow/constant/State;->BOUND:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    const-string v0, "NexusFlow.SubtitleManager"

    const-string v1, "state from "

    :try_start_0
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client unbind service:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/aicore/nexusflow/constant/State;->RELEASED:Lcom/transsion/aicore/nexusflow/constant/State;

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    :try_start_1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    const-string v0, "service dead."

    const/16 v1, 0x3f7

    invoke-interface {p0, v1, v0}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public final k(Landroid/os/RemoteException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NexusFlow.SubtitleManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz p1, :cond_0

    const/16 v1, 0x3f7

    :try_start_0
    invoke-interface {p1, v1}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "state from "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    return-void
.end method

.method public final l(Ljava/lang/SecurityException;)V
    .locals 4

    const-string v0, "Service interface mismatch. Please check AIDL compatibility: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interface mismatch detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NexusFlow.SubtitleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f7

    invoke-interface {v1, v0, p1}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to notify callback about interface mismatch"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p1, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->j()V

    return-void
.end method

.method public final synthetic m()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NexusFlow.SubtitleManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    sget-object v3, Lcom/transsion/aicore/nexusflow/constant/State;->RELEASED:Lcom/transsion/aicore/nexusflow/constant/State;

    const/16 v4, 0x3f7

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    const-string v3, "service dead."

    invoke-interface {v0, v4, v3}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    invoke-interface {v0, v4}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onEvent(I)V

    :goto_1
    iput-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "service disconnected."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public final n()V
    .locals 5

    const-string v0, "NexusFlow.SubtitleManager"

    :try_start_0
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz v1, :cond_0

    const-string v2, "aapService is null."

    const/16 v3, 0x3e9

    invoke-interface {v1, v3, v2}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-nez v1, :cond_2

    const-string v1, "subtitleCallback is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->j()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;

    invoke-direct {v2, p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager$2;-><init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in onConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnected error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :goto_2
    return-void
.end method

.method public final o(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;I)V
    .locals 5

    const-string v0, "state from "

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "set params."

    const-string v2, "NexusFlow.SubtitleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mPkgName:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DATA_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "DATA_CODE"

    invoke-virtual {v1, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "DATA_MESSAGE"

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->c:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    invoke-interface {p1, v1}, Lcom/transsion/aicore/nexusflow/IAapService;->sendCommand(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/transsion/aicore/nexusflow/constant/State;->STARTED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz p0, :cond_0

    :try_start_1
    const-string p1, "service is disconnected,new manager again if need ."

    const/16 p2, 0x3f7

    invoke-interface {p0, p2, p1}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :catch_2
    :cond_0
    :goto_1
    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "follow release:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NexusFlow.SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->RELEASED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DATA_CODE"

    const/16 v3, 0x3f6

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    invoke-interface {v2, v0}, Lcom/transsion/aicore/nexusflow/IAapService;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client stop service:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :catch_1
    :goto_0
    sget-object v0, Lcom/transsion/aicore/nexusflow/constant/State;->RELEASED:Lcom/transsion/aicore/nexusflow/constant/State;

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->j()V

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    return-void
.end method

.method public start(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "follow start subtitle with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mInputType:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NexusFlow.SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-nez v0, :cond_0

    const-string p0, "start subtitleCallback is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->CONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->STOPPED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_1

    const-string p1, "call start after receive event ICode.BUSINESSES.EVENT_CODE_AAP_SERVICE_CONNECTED."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    const/16 v0, 0x2712

    invoke-interface {p1, v0}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1393

    invoke-virtual {p0, p1, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->o(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;I)V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "follow stop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NexusFlow.SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->STOPPED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-ne v0, v2, :cond_0

    .line 6
    const-string p0, "stopped, return."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    const-string v0, "stop subtitle."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    const-string v2, "DATA_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    const-string v2, "DATA_CODE"

    const/16 v3, 0x3f5

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    invoke-interface {v2, v0}, Lcom/transsion/aicore/nexusflow/IAapService;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client stop service:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    .line 15
    :catch_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "state from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->STOPPED:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-object v2, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    :cond_1
    return-void
.end method

.method public stop(I)V
    .locals 5

    if-gez p1, :cond_0

    .line 1
    const-string p0, "NexusFlow.SubtitleManager"

    const-string p1, "stop:timeout < 0"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->h:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->i:Ljava/lang/Runnable;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public translate(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATA_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DATA_CODE"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DATA_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->f:Lcom/transsion/aicore/nexusflow/IAapService;

    invoke-interface {p1, v0}, Lcom/transsion/aicore/nexusflow/IAapService;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-eqz p0, :cond_0

    :try_start_1
    const-string p1, "service is disconnected,new manager again if need ."

    const/16 v0, 0x3f7

    invoke-interface {p0, v0, p1}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :catch_2
    :cond_0
    :goto_1
    return-void
.end method

.method public update(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "follow update params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NexusFlow.SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    if-nez v0, :cond_0

    const-string p0, "update subtitleCallback is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->b:Lcom/transsion/aicore/nexusflow/constant/State;

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->STARTED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/transsion/aicore/nexusflow/constant/State;->STOPPED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-eq v0, v2, :cond_1

    const-string p1, "call update after start or stop."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->d:Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;

    const/16 v0, 0x2713

    invoke-interface {p1, v0}, Lcom/transsion/aicore/nexusflow/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->k(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1394

    invoke-virtual {p0, p1, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->o(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;I)V

    return-void
.end method
