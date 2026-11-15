.class Lcom/transsion/livecaption/client/AutoAnswerManager$1;
.super Lcom/transsion/livecaption/SmartAnswerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/livecaption/client/AutoAnswerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;


# direct methods
.method public constructor <init>(Lcom/transsion/livecaption/client/AutoAnswerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$1;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-direct {p0}, Lcom/transsion/livecaption/SmartAnswerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$1;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {v0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->b(Lcom/transsion/livecaption/client/AutoAnswerManager;)Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    move-result-object v0

    const-string v1, "AutoAnswerManager"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$1;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->b(Lcom/transsion/livecaption/client/AutoAnswerManager;)Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;->onCallback(Landroid/os/Bundle;)V

    const-string p0, "DATA_TYPE"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "DATA_CODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client_api onCallback,type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", code:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "client_api onCallback is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$1;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {v0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->b(Lcom/transsion/livecaption/client/AutoAnswerManager;)Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$1;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->b(Lcom/transsion/livecaption/client/AutoAnswerManager;)Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/livecaption/client/AutoAnswerManager$AutoAnswerListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
