.class Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;
.super Lcom/transsion/livecaption/LLMAnswerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/livecaption/client/LLMAnswerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LLMAnswerCallbackImpl"
.end annotation


# instance fields
.field private final mAnswerCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;

.field final synthetic this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;


# direct methods
.method public constructor <init>(Lcom/transsion/livecaption/client/LLMAnswerManager;Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-direct {p0}, Lcom/transsion/livecaption/LLMAnswerCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->mAnswerCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallback  result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LLMAnswerCallbackImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/transsion/livecaption/client/utils/GsonUtils;->GsonStringToNotification(Ljava/lang/String;)Lcom/transsion/livecaption/bean/NotifcationMode;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->mAnswerCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;

    invoke-interface {p0, p1}, Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;->onCallback(Lcom/transsion/livecaption/bean/NotifcationMode;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "LLMAnswerCallbackImpl"

    const-string v1, "LLM_SERVICE_SEIZE_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->this$0:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-virtual {v0}, Lcom/transsion/livecaption/client/LLMAnswerManager;->stopLLMNotification()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/livecaption/client/LLMAnswerManager$LLMAnswerCallbackImpl;->mAnswerCallback:Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/livecaption/client/LLMAnswerManager$AnswerCallback;->onError(ILjava/lang/String;)V

    return-void
.end method
