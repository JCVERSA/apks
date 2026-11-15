.class public Lcom/transsion/livecaption/client/AutoAnswerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;
    }
.end annotation


# instance fields
.field private final CLASS:Ljava/lang/String;

.field private final ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private callInfo:Lcom/transsion/livecaption/bean/SmartAnswerBean;

.field private final context:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;

.field private mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final recipient:Landroid/os/IBinder$DeathRecipient;

.field smartAnswer:Lcom/transsion/livecaption/SmartAnswer;

.field private final smartAnswerCallback:Lcom/transsion/livecaption/SmartAnswerCallback$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AutoAnswerManager"

    iput-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->TAG:Ljava/lang/String;

    const-string v1, "com.transsion.livecaption"

    iput-object v1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->ID:Ljava/lang/String;

    const-string v1, "com.transsion.livecaption.SmartAnswerService"

    iput-object v1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->CLASS:Ljava/lang/String;

    new-instance v1, Lq20;

    invoke-direct {v1, p0}, Lq20;-><init>(Lcom/transsion/livecaption/client/AutoAnswerManager;)V

    iput-object v1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v1, Lcom/transsion/livecaption/client/AutoAnswerManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/livecaption/client/AutoAnswerManager$1;-><init>(Lcom/transsion/livecaption/client/AutoAnswerManager;)V

    iput-object v1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswerCallback:Lcom/transsion/livecaption/SmartAnswerCallback$Stub;

    new-instance v1, Lcom/transsion/livecaption/client/AutoAnswerManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/livecaption/client/AutoAnswerManager$2;-><init>(Lcom/transsion/livecaption/client/AutoAnswerManager;)V

    iput-object v1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    invoke-direct {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->connectService()V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->gson:Lcom/google/gson/Gson;

    const-string p0, "client version:25.04.17.subtitle.2"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/livecaption/client/AutoAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/livecaption/client/AutoAnswerManager;)Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/livecaption/client/AutoAnswerManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method private connectService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.transsion.livecaption"

    const-string v3, "com.transsion.livecaption.SmartAnswerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "client_version"

    const-string v2, "25.04.17.subtitle.2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client bind service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutoAnswerManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/livecaption/client/AutoAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->onConnected()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    if-eqz p0, :cond_0

    const/16 v0, 0x3f7

    const-string v1, "service death."

    invoke-interface {p0, v0, v1}, Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onConnected()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswer:Lcom/transsion/livecaption/SmartAnswer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "DATA_CODE"

    const/4 v2, 0x1

    const-string v3, "DATA_TYPE"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswerCallback:Lcom/transsion/livecaption/SmartAnswerCallback$Stub;

    invoke-interface {v0, v4}, Lcom/transsion/livecaption/SmartAnswer;->setCallback(Lcom/transsion/livecaption/SmartAnswerCallback;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswer:Lcom/transsion/livecaption/SmartAnswer;

    invoke-interface {v4, v0}, Lcom/transsion/livecaption/SmartAnswer;->sendCommand(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    invoke-interface {p0, v0}, Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;->onCallback(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "AutoAnswerManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public start(Lcom/transsion/livecaption/bean/SmartAnswerBean;)V
    .locals 4

    const-string v0, "start auto answer."

    const-string v1, "AutoAnswerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/SmartAnswerBean;->clone()Lcom/transsion/livecaption/bean/SmartAnswerBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->callInfo:Lcom/transsion/livecaption/bean/SmartAnswerBean;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DATA_CODE"

    const/16 v3, 0x1389

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DATA_MESSAGE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswer:Lcom/transsion/livecaption/SmartAnswer;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lcom/transsion/livecaption/SmartAnswer;->sendCommand(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mListener:Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    if-eqz p0, :cond_1

    const/16 p1, 0xcb

    const-string v0, "platform service disconnect."

    invoke-interface {p0, p1, v0}, Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "listener is null, can\'t callback client"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :goto_0
    const-string p0, "started auto answer."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "stop auto answer."

    const-string v1, "AutoAnswerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswer:Lcom/transsion/livecaption/SmartAnswer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/livecaption/SmartAnswer;->stopSmartAnswer(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client unbind service:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "stopped auto answer."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
