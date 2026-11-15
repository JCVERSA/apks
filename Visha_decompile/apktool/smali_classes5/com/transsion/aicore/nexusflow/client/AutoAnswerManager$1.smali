.class Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager$1;
.super Lcom/transsion/aicore/nexusflow/SmartAnswerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/SmartAnswerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;->a(Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;)Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager$a;

    const-string p0, "NexusFlow.AutoAnswer"

    const-string p1, "client_api onCallback is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;->a(Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager;)Lcom/transsion/aicore/nexusflow/client/AutoAnswerManager$a;

    return-void
.end method
