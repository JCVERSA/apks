.class public Lcom/transsion/livecaption/client/LLMAnswerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;,
        Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;,
        Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LLMAnswerManager"

.field private static instance:Lcom/transsion/livecaption/client/LLMAnswerManager;


# instance fields
.field private mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

.field mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

.field private mContext:Landroid/content/Context;

.field mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

.field private mState:Lcom/transsion/livecaption/constant/State;

.field private final recipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/livecaption/constant/State;->NONE:Lcom/transsion/livecaption/constant/State;

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mState:Lcom/transsion/livecaption/constant/State;

    new-instance v0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;-><init>(Lcom/transsion/livecaption/client/LLMAnswerManager;Lci5;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    new-instance v0, Lbi5;

    invoke-direct {v0, p0}, Lbi5;-><init>(Lcom/transsion/livecaption/client/LLMAnswerManager;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/livecaption/client/LLMAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/livecaption/client/LLMAnswerManager;->lambda$new$0()V

    return-void
.end method

.method private addAnswerCallbackToService()V
    .locals 2

    const-string v0, "LLMAnswerManager"

    const-string v1, "addAnswerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1}, Lcom/transsion/livecaption/LLMAnswer;->setCallback(Lcom/transsion/livecaption/LLMAnswerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/livecaption/client/LLMAnswerManager;)Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/livecaption/client/LLMAnswerManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/livecaption/client/LLMAnswerManager;Lcom/transsion/livecaption/constant/State;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mState:Lcom/transsion/livecaption/constant/State;

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/livecaption/client/LLMAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/livecaption/client/LLMAnswerManager;->addAnswerCallbackToService()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/livecaption/client/LLMAnswerManager;
    .locals 2

    sget-object v0, Lcom/transsion/livecaption/client/LLMAnswerManager;->instance:Lcom/transsion/livecaption/client/LLMAnswerManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/livecaption/client/LLMAnswerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/livecaption/client/LLMAnswerManager;->instance:Lcom/transsion/livecaption/client/LLMAnswerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-direct {v1}, Lcom/transsion/livecaption/client/LLMAnswerManager;-><init>()V

    sput-object v1, Lcom/transsion/livecaption/client/LLMAnswerManager;->instance:Lcom/transsion/livecaption/client/LLMAnswerManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/livecaption/client/LLMAnswerManager;->instance:Lcom/transsion/livecaption/client/LLMAnswerManager;

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "service death."

    const/16 v1, 0x3f7

    invoke-virtual {p0, v1, v0}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    invoke-direct {v0, p0, p2}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;-><init>(Lcom/transsion/livecaption/client/LLMAnswerManager;Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.transsion.livecaption"

    const-string v2, "com.transsion.livecaption.LLMAnswerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;-><init>(Lcom/transsion/livecaption/client/LLMAnswerManager;Lci5;)V

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    :cond_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const-string p2, "LLMAnswerManager"

    if-eqz p1, :cond_1

    const-string p1, "LLMAnswerService bind success"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "LLMAnswerService bind fail"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    const-string p2, "LLMAnswerService init: bind fail"

    const/4 v0, -0x2

    invoke-virtual {p1, v0, p2}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    sget-object p1, Lcom/transsion/livecaption/constant/State;->BOUND:Lcom/transsion/livecaption/constant/State;

    iput-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mState:Lcom/transsion/livecaption/constant/State;

    return-void
.end method

.method public removeAnswerCallback()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

    invoke-interface {v0}, Lcom/transsion/livecaption/LLMAnswer;->removeCallback()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    goto :goto_2

    :cond_0
    const-string p0, "LLMAnswerManager"

    const-string v0, "service error, removeAnswerCallback fail"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public sendNotification(Lcom/transsion/livecaption/bean/NotifcationMode;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    const-string v1, "LLMAnswerManager"

    if-nez v0, :cond_0

    const-string p0, "sendNotification mCallback is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "sendNotification nc is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getNotiKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getNotiKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getContent()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "sendNotification nc.getContent() is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/livecaption/bean/NotifcationMode;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "sendNotification nc.getGroupKey() is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNotification nc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/transsion/livecaption/client/utils/GsonUtils;->NotificationToGsonString(Lcom/transsion/livecaption/bean/NotifcationMode;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/livecaption/LLMAnswer;->sendCommand(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_7
    const-string p0, "service error, sendNotification fail"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string p0, "sendNotification nc.getPackageName() is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_3
    const-string p0, "sendNotification nc.getNotiKey() is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopLLMNotification()V
    .locals 4

    const-string v0, "LLMAnswerManager"

    const-string v1, "stop LLMNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/livecaption/client/LLMAnswerManager;->removeAnswerCallback()V

    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mState:Lcom/transsion/livecaption/constant/State;

    sget-object v1, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->recipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mConnection:Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    iput-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mState:Lcom/transsion/livecaption/constant/State;

    :cond_2
    :goto_0
    return-void
.end method
