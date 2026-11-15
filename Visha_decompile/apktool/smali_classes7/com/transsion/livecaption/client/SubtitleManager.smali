.class public Lcom/transsion/livecaption/client/SubtitleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/livecaption/api/ISubtitle;


# instance fields
.field private final CLASS:Ljava/lang/String;

.field private final ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field aapService:Lcom/transsion/livecaption/IAapService;

.field private final context:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;

.field private handler:Landroid/os/Handler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mState:Lcom/transsion/livecaption/constant/State;

.field private final recipient:Landroid/os/IBinder$DeathRecipient;

.field subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/livecaption/IAapCallback$Stub;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SubtitleManager"

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v0, "com.transsion.livecaption"

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->ID:Ljava/lang/String;

    const-string v0, "com.transsion.livecaption.service.SubtitleService"

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->CLASS:Ljava/lang/String;

    sget-object v0, Lcom/transsion/livecaption/constant/State;->NONE:Lcom/transsion/livecaption/constant/State;

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lf5a;

    invoke-direct {v0, p0}, Lf5a;-><init>(Lcom/transsion/livecaption/client/SubtitleManager;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/transsion/livecaption/client/SubtitleManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/livecaption/client/SubtitleManager$1;-><init>(Lcom/transsion/livecaption/client/SubtitleManager;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/livecaption/client/SubtitleManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/livecaption/client/SubtitleManager$2;-><init>(Lcom/transsion/livecaption/client/SubtitleManager;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->timeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/transsion/livecaption/client/SubtitleManager;->setCallback(Lcom/transsion/livecaption/IAapCallback$Stub;)V

    invoke-direct {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->bindService()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/livecaption/client/SubtitleManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/livecaption/client/SubtitleManager;)Lcom/transsion/livecaption/constant/State;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    return-object p0
.end method

.method private bindService()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->connectService()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->gson:Lcom/google/gson/Gson;

    const-string p0, "SubtitleManager"

    const-string v0, "client version:25.04.17.subtitle.2"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/livecaption/client/SubtitleManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method private connectService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.transsion.livecaption"

    const-string v3, "com.transsion.livecaption.service.SubtitleService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "client_version"

    const-string v2, "25.04.17.subtitle.2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client bind service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubtitleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/livecaption/constant/State;->BOUND:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/livecaption/client/SubtitleManager;Lcom/transsion/livecaption/constant/State;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    return-void
.end method

.method private disConnectService()V
    .locals 4

    const-string v0, "SubtitleManager"

    :try_start_0
    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client unbind service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/livecaption/constant/State;->RELEASED:Lcom/transsion/livecaption/constant/State;

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    :try_start_1
    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    const-string v0, "service dead."

    const/16 v1, 0x3f7

    invoke-interface {p0, v1, v0}, Lcom/transsion/livecaption/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private disconnected(Landroid/os/RemoteException;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz p1, :cond_0

    const/16 v0, 0x3f7

    :try_start_0
    invoke-interface {p1, v0}, Lcom/transsion/livecaption/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SubtitleManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/livecaption/client/SubtitleManager;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/livecaption/client/SubtitleManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->onConnected()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubtitleManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v3, Lcom/transsion/livecaption/constant/State;->RELEASED:Lcom/transsion/livecaption/constant/State;

    const/16 v4, 0x3f7

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    const-string v3, "service dead."

    invoke-interface {v0, v4, v3}, Lcom/transsion/livecaption/IAapCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    invoke-interface {v0, v4}, Lcom/transsion/livecaption/IAapCallback;->onEvent(I)V

    :goto_1
    iput-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "service disconnected."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private onConnected()V
    .locals 4

    const-string v0, "SubtitleManager"

    :try_start_0
    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz v1, :cond_0

    const-string v2, "aapService is null."

    const/16 v3, 0x3e9

    invoke-interface {v1, v3, v2}, Lcom/transsion/livecaption/IAapCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-nez v2, :cond_2

    const-string v1, "subtitleCallback is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->disConnectService()V

    return-void

    :cond_2
    invoke-interface {v1, v2}, Lcom/transsion/livecaption/IAapService;->setCallback(Lcom/transsion/livecaption/IAapCallback;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DATA_CODE"

    const/16 v3, 0x1392

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    invoke-interface {v2, v1}, Lcom/transsion/livecaption/IAapService;->sendCommand(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz v1, :cond_3

    const/16 v2, 0x3f3

    invoke-interface {v1, v2}, Lcom/transsion/livecaption/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "service disconnected."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setParams(Lcom/transsion/livecaption/bean/SubtitleBean;I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "set params."

    const-string v1, "SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/livecaption/bean/SubtitleBean;->setPkgName(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DATA_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "DATA_MESSAGE"

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    invoke-interface {p1, v0}, Lcom/transsion/livecaption/IAapService;->sendCommand(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/transsion/livecaption/constant/State;->STARTED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz p0, :cond_0

    :try_start_1
    const-string p1, "service is disconnected,new manager again if need ."

    const/16 p2, 0x3f7

    invoke-interface {p0, p2, p1}, Lcom/transsion/livecaption/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :catch_2
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public getState()Lcom/transsion/livecaption/constant/State;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    return-object p0
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "follow release:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/livecaption/constant/State;->RELEASED:Lcom/transsion/livecaption/constant/State;

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

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    invoke-interface {v2, v0}, Lcom/transsion/livecaption/IAapService;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client stop service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :catch_1
    :goto_0
    sget-object v0, Lcom/transsion/livecaption/constant/State;->RELEASED:Lcom/transsion/livecaption/constant/State;

    iput-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    :cond_0
    invoke-direct {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->disConnectService()V

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/transsion/livecaption/IAapCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    return-void
.end method

.method public start(Lcom/transsion/livecaption/bean/SubtitleBean;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "follow start subtitle with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/SubtitleBean;->getInputType()Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-nez v0, :cond_0

    const-string p0, "start subtitleCallback is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->CONNECTED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v2, :cond_1

    const-string p1, "call start after receive event ICode.BUSINESSES.EVENT_CODE_AAP_SERVICE_CONNECTED."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    const/16 v0, 0x2712

    invoke-interface {p1, v0}, Lcom/transsion/livecaption/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1393

    invoke-direct {p0, p1, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->setParams(Lcom/transsion/livecaption/bean/SubtitleBean;I)V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "follow stop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

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
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

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
    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    invoke-interface {v2, v0}, Lcom/transsion/livecaption/IAapService;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client stop service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-direct {p0, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    .line 15
    :catch_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-object v2, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    :cond_1
    return-void
.end method

.method public stop(I)V
    .locals 5

    if-gez p1, :cond_0

    .line 1
    const-string p0, "SubtitleManager"

    const-string p1, "stop:timeout < 0"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->timeoutRunnable:Ljava/lang/Runnable;

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

    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->aapService:Lcom/transsion/livecaption/IAapService;

    invoke-interface {p1, v0}, Lcom/transsion/livecaption/IAapService;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-eqz p0, :cond_0

    :try_start_1
    const-string p1, "service is disconnected,new manager again if need ."

    const/16 v0, 0x3f7

    invoke-interface {p0, v0, p1}, Lcom/transsion/livecaption/IAapCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :catch_2
    :cond_0
    :goto_1
    return-void
.end method

.method public update(Lcom/transsion/livecaption/bean/SubtitleBean;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "follow update params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    if-nez v0, :cond_0

    const-string p0, "update subtitleCallback is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/SubtitleManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v2, Lcom/transsion/livecaption/constant/State;->STARTED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v2, :cond_1

    const-string p1, "call update after start or stop."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/SubtitleManager;->subtitleCallback:Lcom/transsion/livecaption/IAapCallback$Stub;

    const/16 v0, 0x2713

    invoke-interface {p1, v0}, Lcom/transsion/livecaption/IAapCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->disconnected(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1394

    invoke-direct {p0, p1, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->setParams(Lcom/transsion/livecaption/bean/SubtitleBean;I)V

    return-void
.end method
