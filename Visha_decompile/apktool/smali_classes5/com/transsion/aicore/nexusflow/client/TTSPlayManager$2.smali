.class Lcom/transsion/aicore/nexusflow/client/TTSPlayManager$2;
.super Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Landroid/os/Bundle;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;->a(Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;)Lsq0;

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;->a(Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;)Lsq0;

    return-void
.end method

.method public onEvent(I)V
    .locals 1

    const/16 p0, 0x3f7

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    invoke-static {v0}, Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;->b(Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;)Lcom/transsion/aicore/nexusflow/constant/State;

    move-result-object p0

    sget-object p1, Lcom/transsion/aicore/nexusflow/constant/State;->DISCONNECTED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;->c(Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;Lcom/transsion/aicore/nexusflow/constant/State;)V

    :cond_1
    invoke-static {v0}, Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;->a(Lcom/transsion/aicore/nexusflow/client/TTSPlayManager;)Lsq0;

    return-void
.end method
