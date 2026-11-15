.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->e(Ljava/util/List;Ltv4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Lcom/transsion/privateroom/api/beans/PrivateFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

.field final synthetic val$callback:Ltv4;

.field final synthetic val$files:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Ljava/util/List;Ltv4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->val$files:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->val$callback:Ltv4;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->val$files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/privateroom/api/beans/PrivateFile;

    .line 4
    invoke-virtual {v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->canDelete()Z

    move-result v3

    const-string v4, "PrivateRoom_PrivateRoomDelegate"

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file does not delete "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzu3;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v3, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$1;

    invoke-direct {v3, p0, v2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$1;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file succeeded: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v3, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v3}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->h(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v3, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$2;

    invoke-direct {v3, p0, v2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$2;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->b()V

    .line 15
    :cond_3
    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$3;

    invoke-direct {v0, p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$3;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

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
    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;

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

.method public onSuccess(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->onSuccess(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    return-void
.end method
