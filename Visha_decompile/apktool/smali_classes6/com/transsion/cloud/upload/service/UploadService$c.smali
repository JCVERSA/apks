.class public Lcom/transsion/cloud/upload/service/UploadService$c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lbx4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/upload/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public h:I

.field public i:I

.field public j:J

.field public k:J

.field public l:Lrw4;

.field public m:Lcom/transsion/cloud/upload/task/NewUploadTask;

.field public final synthetic n:Lcom/transsion/cloud/upload/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/service/UploadService;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->n:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/TreeMap;

    new-instance v0, Lwhb;

    invoke-direct {v0, p0}, Lwhb;-><init>(Lcom/transsion/cloud/upload/service/UploadService$c;)V

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    return-void
.end method

.method public static synthetic B(Lcom/transsion/cloud/upload/service/UploadService$c;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/upload/service/UploadService$c;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Lcom/transsion/cloud/upload/service/UploadService$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/transsion/cloud/upload/service/UploadService$c;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/transsion/cloud/upload/service/UploadService$c;Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud/upload/service/UploadService$c;->U(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/cloud/upload/service/UploadService$c;Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud/upload/service/UploadService$c;->c0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 1

    iget v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->h:I

    return-void
.end method

.method public H()V
    .locals 1

    iget v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->i:I

    return-void
.end method

.method public final I(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->j:J

    iget-object p1, p2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->j:J

    iget-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->k:J

    iget-object p1, p2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->k:J

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->T()V

    return-void
.end method

.method public J()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->K()V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_2
    sget v3, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->waiting()V

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v2, v2, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final K()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->m:Lcom/transsion/cloud/upload/task/NewUploadTask;

    return-void
.end method

.method public L(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->l:Lrw4;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->m:Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->l:Lrw4;

    if-nez p1, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget-wide v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v2, v3}, Lrw4;->r(FJ)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->H()V

    invoke-virtual {p0, v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public M()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->h:I

    return p0
.end method

.method public final N()Lcom/transsion/cloud/upload/task/NewUploadTask;
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    const-string v1, "visha_cloud_UploadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstDownTask: found first task with tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    iget-object v4, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :goto_1
    const-string v1, "visha_cloud_UploadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstDownTask error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public O()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->i:I

    return p0
.end method

.method public P(Ljava/lang/String;)Lcom/transsion/cloud/upload/task/NewUploadTask;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    return-object p0
.end method

.method public final synthetic Q(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->date:J

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->date:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public R()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->K()V

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->noNetPause()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public S()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v1, 0x467

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final T()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->l:Lrw4;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->j:J

    invoke-interface {v0, v1, v2}, Lrw4;->m(J)V

    :cond_0
    return-void
.end method

.method public final U(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->k:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->k:J

    iget-object p2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->l:Lrw4;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->m:Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p3, p3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->l:Lrw4;

    iget p2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    iget-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    invoke-interface {p0, p2, v0, v1}, Lrw4;->r(FJ)V

    :cond_1
    return-void
.end method

.method public V(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->pause(Z)V

    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v2, v2, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->d0()V

    return-void
.end method

.method public final W(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->I(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->S()V

    return-void
.end method

.method public final X(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Z()Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->K()V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    sget v4, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-ge v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V

    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v3, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v3, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    move v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/cloud/upload/task/NewUploadTask;->waiting()V

    iget-object v4, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, v3, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return v1
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->n:Lcom/transsion/cloud/upload/service/UploadService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public a0(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 3

    iget-object v0, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_cloud_UploadService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->h:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;->a(Landroid/content/Context;)Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->D(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->b0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->remove()V

    return-void
.end method

.method public b(Landroid/app/Notification;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->n:Lcom/transsion/cloud/upload/service/UploadService;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->j:J

    iget-object v3, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->j:J

    iget-wide v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->k:J

    iget-object v3, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->k:J

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->T()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->S()V

    return-void
.end method

.method public final c0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud/upload/service/UploadService$c;->I(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->S()V

    return-void
.end method

.method public d0()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->P(Ljava/lang/String;)Lcom/transsion/cloud/upload/task/NewUploadTask;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->X(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    :goto_1
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final e0(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V

    iget-object v0, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->X(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->P(Ljava/lang/String;)Lcom/transsion/cloud/upload/task/NewUploadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->waiting()V

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->Y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->K()V

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->pause(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final f0(Landroid/content/Context;Lcom/transsion/cloud/upload/model/UploadingItem;)V
    .locals 5

    invoke-static {p2}, Lxhb;->a(Lcom/transsion/cloud/upload/model/UploadingItem;)Lcom/transsion/cloud/upload/task/NewUploadTask;

    move-result-object p1

    iget-object p2, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p2, p2, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->n:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->b(Lcom/transsion/cloud/upload/service/UploadService;)Lnhb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->register(Lnhb;)V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->W(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    sget v1, Lcom/transsion/playercommon/core/MainApp;->f:I

    const-string v2, " "

    const-string v3, "startNewUpload:"

    const-string v4, "visha_cloud_UploadService"

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->X(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->waiting()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/transsion/cloud/upload/service/UploadService$c;->Y(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->j:J

    return-wide v0
.end method

.method public g0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 2

    const/16 v0, 0x470

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object p3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->m:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->N()Lcom/transsion/cloud/upload/task/NewUploadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->m:Lcom/transsion/cloud/upload/task/NewUploadTask;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDownTaskMap : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->m:Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    goto :goto_1

    :cond_3
    const-string p0, "null"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_UploadService"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public j()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public k(Ljava/lang/String;Lrw4;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->l:Lrw4;

    return-void
.end method

.method public l()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/transsion/cloud/upload/service/UploadService$c;->a0(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    const-string p0, "visha_cloud_UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cloud tasks"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v0, "visha_cloud_UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in removeAllCloudTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->K()V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    sget v3, Lcom/transsion/playercommon/core/MainApp;->f:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/transsion/cloud/upload/service/UploadService$c;->h0(Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->waiting()V

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    iget-object v4, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    iget-object v4, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public r(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->e0(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->waiting()V

    iget-object p2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->e:Ljava/util/Map;

    iget-object v0, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    iget-object v0, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->Y(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic s(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->V(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    return-void
.end method

.method public t()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->a0(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public y(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$string;->visha_added_to_upload_list:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/upload/model/UploadingItem;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->f0(Landroid/content/Context;Lcom/transsion/cloud/upload/model/UploadingItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$c;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p0

    return p0
.end method
