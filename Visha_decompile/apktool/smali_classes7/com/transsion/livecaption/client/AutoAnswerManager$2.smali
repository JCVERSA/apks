.class Lcom/transsion/livecaption/client/AutoAnswerManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$2;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "AutoAnswerManager"

    const-string v0, "Client bind Service successful"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$2;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {p2}, Lcom/transsion/livecaption/SmartAnswer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/livecaption/SmartAnswer;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswer:Lcom/transsion/livecaption/SmartAnswer;

    iget-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$2;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {p1}, Lcom/transsion/livecaption/client/AutoAnswerManager;->c(Lcom/transsion/livecaption/client/AutoAnswerManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$2;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->d(Lcom/transsion/livecaption/client/AutoAnswerManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "AutoAnswerManager"

    const-string v0, "Client unbind Service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/livecaption/client/AutoAnswerManager$2;->this$0:Lcom/transsion/livecaption/client/AutoAnswerManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/livecaption/client/AutoAnswerManager;->smartAnswer:Lcom/transsion/livecaption/SmartAnswer;

    invoke-virtual {p0, p1}, Lcom/transsion/livecaption/client/AutoAnswerManager;->stop(Landroid/os/Bundle;)V

    return-void
.end method
