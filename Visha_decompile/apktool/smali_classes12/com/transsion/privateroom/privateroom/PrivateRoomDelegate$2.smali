.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->j(Ljava/util/List;Ltv4;)V
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

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$files:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$callback:Ltv4;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$files:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->d(Ljava/util/List;)J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/privateroom/api/beans/PrivateFile;

    .line 6
    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzu3;->y(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "PrivateRoom_PrivateRoomDelegate"

    if-nez v6, :cond_0

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file does not exist:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, ".visha"

    if-nez v6, :cond_1

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHideFileName(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzu3;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHideFileName(Ljava/lang/String;)V

    .line 12
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHideFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHidePath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzu3;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getHidePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lzu3;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    new-instance v9, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$a;

    invoke-direct {v9, p0, v5, v0, v1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$a;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;Lcom/transsion/privateroom/api/beans/PrivateFile;J)V

    invoke-static {v6, v8, v9}, Lcom/transsion/privateroom/privateroom/a;->e(Ljava/io/File;Ljava/io/File;Lcom/transsion/privateroom/privateroom/a$a;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move file failed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    new-instance v6, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$2;

    invoke-direct {v6, p0, v5}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$2;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 16
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide file success:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v6, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;

    invoke-direct {v6, p0, v5}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 19
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->i(Ljava/util/List;)V

    .line 21
    :cond_4
    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$4;

    invoke-direct {v0, p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$4;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;)V

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
    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;

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

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->onSuccess(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    return-void
.end method
