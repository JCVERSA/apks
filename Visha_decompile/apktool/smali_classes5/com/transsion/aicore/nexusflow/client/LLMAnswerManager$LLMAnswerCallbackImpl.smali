.class Lcom/transsion/aicore/nexusflow/client/LLMAnswerManager$LLMAnswerCallbackImpl;
.super Lcom/transsion/aicore/nexusflow/LLMAnswerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/client/LLMAnswerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LLMAnswerCallbackImpl"
.end annotation


# instance fields
.field private final mAnswerCallback:Lcom/transsion/aicore/nexusflow/client/LLMAnswerManager$a;

.field final synthetic this$0:Lcom/transsion/aicore/nexusflow/client/LLMAnswerManager;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/client/LLMAnswerManager;Lcom/transsion/aicore/nexusflow/client/LLMAnswerManager$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/LLMAnswerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onCallback  result = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LLMAnswerCallbackImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-class v0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GsonStringToNotification: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NexusFlow.GsonUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    throw p0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    const/4 p0, -0x1

    const/4 p2, 0x0

    if-ne p1, p0, :cond_0

    const-string p0, "LLMAnswerCallbackImpl"

    const-string p1, "LLM_SERVICE_SEIZE_ERROR"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p2

    :cond_0
    throw p2
.end method
