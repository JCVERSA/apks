.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

.field final synthetic val$callback:Luv4;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Luv4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->val$callback:Luv4;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->b(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lmg8;

    move-result-object v0

    invoke-virtual {v0}, Lmg8;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->e()V

    .line 4
    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->i()V

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->val$callback:Luv4;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "PrivateRoom_PrivateRoomDelegate"

    if-eqz p1, :cond_0

    .line 4
    const-string p1, "private room init onSuccess"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->val$callback:Luv4;

    invoke-interface {p0}, Luv4;->onInitSuccess()V

    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "private room init failed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->val$callback:Luv4;

    invoke-interface {p0}, Luv4;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
