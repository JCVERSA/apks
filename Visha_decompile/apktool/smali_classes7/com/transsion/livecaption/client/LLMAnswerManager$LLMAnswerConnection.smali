.class Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/livecaption/client/LLMAnswerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LLMAnswerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;


# direct methods
.method private constructor <init>(Lcom/transsion/livecaption/client/LLMAnswerManager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/livecaption/client/LLMAnswerManager;Lci5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;-><init>(Lcom/transsion/livecaption/client/LLMAnswerManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "LLMAnswerManager"

    const-string v0, "LLMAnswerManager onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v1, "LLMAnswerManager onServiceConnected service is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->b(Lcom/transsion/livecaption/client/LLMAnswerManager;)Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v1}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-virtual {p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->stopLLMNotification()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {p2}, Lcom/transsion/livecaption/LLMAnswer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/livecaption/LLMAnswer;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->e(Lcom/transsion/livecaption/client/LLMAnswerManager;)V

    const/4 p1, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {v1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->b(Lcom/transsion/livecaption/client/LLMAnswerManager;)Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {v0}, Lcom/transsion/livecaption/client/LLMAnswerManager;->c(Lcom/transsion/livecaption/client/LLMAnswerManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    sget-object p1, Lcom/transsion/livecaption/constant/State;->CONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-static {p0, p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->d(Lcom/transsion/livecaption/client/LLMAnswerManager;Lcom/transsion/livecaption/constant/State;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "LLMAnswerManager"

    const-string v0, "on Service Disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->b(Lcom/transsion/livecaption/client/LLMAnswerManager;)Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->b(Lcom/transsion/livecaption/client/LLMAnswerManager;)Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;

    move-result-object p1

    const-string v0, "LLMAnswerService disconnected."

    const/16 v1, 0x3f3

    invoke-virtual {p1, v1, v0}, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerConnection;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager;->mLLMAnswer:Lcom/transsion/livecaption/LLMAnswer;

    sget-object p1, Lcom/transsion/livecaption/constant/State;->DISCONNECTED:Lcom/transsion/livecaption/constant/State;

    invoke-static {p0, p1}, Lcom/transsion/livecaption/client/LLMAnswerManager;->d(Lcom/transsion/livecaption/client/LLMAnswerManager;Lcom/transsion/livecaption/constant/State;)V

    return-void
.end method
