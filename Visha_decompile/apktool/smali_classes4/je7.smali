.class public Lje7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje7$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lyhb;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lyhb;

    invoke-direct {v0}, Lyhb;-><init>()V

    iput-object v0, p0, Lje7;->b:Lyhb;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lje7;->a:Ljava/util/Map;

    .line 5
    invoke-static {}, Lphb;->q()Lphb;

    move-result-object p0

    invoke-virtual {p0}, Lphb;->r()Ljava/util/List;

    move-result-object p0

    .line 6
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

    .line 7
    iget v2, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    iput v2, v1, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lphb;->q()Lphb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt90;->l(Ljava/util/List;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lje7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lje7;-><init>()V

    return-void
.end method

.method public static a()Lje7;
    .locals 1

    invoke-static {}, Lje7$b;->a()Lje7;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V
    .locals 0

    iget-object p0, p0, Lje7;->b:Lyhb;

    invoke-virtual {p0}, Lyhb;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lzy/okserver/task/XExecutor;->addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 0

    iget-object p0, p0, Lje7;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okserver/upload/UploadTask;

    return-object p0
.end method

.method public c()Lyhb;
    .locals 0

    iget-object p0, p0, Lje7;->b:Lyhb;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 0

    iget-object p0, p0, Lje7;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okserver/upload/UploadTask;

    return-object p0
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V
    .locals 0

    iget-object p0, p0, Lje7;->b:Lyhb;

    invoke-virtual {p0}, Lyhb;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lzy/okserver/task/XExecutor;->removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V

    return-void
.end method
