.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->m(Ljava/util/List;Ltv4;)V
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

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$files:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$callback:Ltv4;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$files:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->d(Ljava/util/List;)J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/privateroom/api/beans/PrivateFile;

    .line 5
    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->canRestore()Z

    move-result v5

    const-string v6, "PrivateRoom_PrivateRoomDelegate"

    if-nez v5, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file does not restore,restore path wrong:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzu3;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lzu3;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;

    invoke-direct {v8, p0, v4, v0, v1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;Lcom/transsion/privateroom/api/beans/PrivateFile;J)V

    invoke-static {v5, v7, v8}, Lcom/transsion/privateroom/privateroom/a;->e(Ljava/io/File;Ljava/io/File;Lcom/transsion/privateroom/privateroom/a$a;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move file failed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v5, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$2;

    invoke-direct {v5, p0, v4}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$2;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    invoke-static {v5}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore file success:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v5, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v5}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->h(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v5, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$3;

    invoke-direct {v5, p0, v4}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$3;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    invoke-static {v5}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 14
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->b()V

    .line 16
    :cond_3
    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$4;

    invoke-direct {v0, p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$4;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;)V

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
    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;

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

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->onSuccess(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    return-void
.end method
