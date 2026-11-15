.class public Lee7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee7$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lt13;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lee7;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lmv4;->c(Ljava/lang/String;)Z

    .line 5
    new-instance v0, Lt13;

    invoke-direct {v0}, Lt13;-><init>()V

    iput-object v0, p0, Lee7;->b:Lt13;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lee7;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object p0

    invoke-virtual {p0}, Lr03;->r()Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/model/Progress;

    .line 9
    iget v2, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt90;->l(Ljava/util/List;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lee7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lee7;-><init>()V

    return-void
.end method

.method public static b()Lee7;
    .locals 1

    invoke-static {}, Lee7$b;->a()Lee7;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lee7;->a:Ljava/lang/String;

    return-object p0
.end method

.method public addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V
    .locals 0

    iget-object p0, p0, Lee7;->b:Lt13;

    invoke-virtual {p0}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lzy/okserver/task/XExecutor;->addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 0

    iget-object p0, p0, Lee7;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okserver/download/DownloadTask;

    return-object p0
.end method

.method public d()Lt13;
    .locals 0

    iget-object p0, p0, Lee7;->b:Lt13;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 0

    iget-object p0, p0, Lee7;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okserver/download/DownloadTask;

    return-object p0
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V
    .locals 0

    iget-object p0, p0, Lee7;->b:Lt13;

    invoke-virtual {p0}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lzy/okserver/task/XExecutor;->removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V

    return-void
.end method
