.class public Lcom/transsion/sniffer_load/DownloadService$b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lry2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Map;

.field public j:Lrw4;

.field public k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public final p:Ljava/lang/Object;

.field public final synthetic q:Lcom/transsion/sniffer_load/DownloadService;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->q:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/TreeMap;

    new-instance v0, Lq13;

    invoke-direct {v0, p0}, Lq13;-><init>(Lcom/transsion/sniffer_load/DownloadService$b;)V

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->p:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic B(Lcom/transsion/sniffer_load/DownloadService$b;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/transsion/sniffer_load/DownloadService$b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->N()V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/sniffer_load/DownloadService$b;Lcom/lzy/okgo/model/Progress;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/DownloadService$b;->Y(Lcom/lzy/okgo/model/Progress;J)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/sniffer_load/DownloadService$b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Z(I)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/transsion/sniffer_load/DownloadService$b;Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/DownloadService$b;->i0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    return-void
.end method

.method private synthetic T(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide p1, p1, Lcom/lzy/okgo/model/Progress;->date:J

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->date:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p1, :cond_5

    const/4 p0, -0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private W()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->j:Lrw4;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    invoke-interface {v0, v1, v2}, Lrw4;->m(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->m0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    iget-object p1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->e0(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public I()V
    .locals 1

    iget v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->l:I

    return-void
.end method

.method public J()V
    .locals 1

    iget v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->m:I

    return-void
.end method

.method public final K(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    iget-object p1, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    iget-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    iget-object p1, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    iget-object p2, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide p2, p2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    long-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    invoke-direct {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->W()V

    return-void
.end method

.method public L()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->M()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

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

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v3, v3, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v3, v3, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_2
    sget v3, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    return-void
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    iput-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    return-void
.end method

.method public O()I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->l:I

    return p0
.end method

.method public final P()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

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
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    const-string v1, "visha_DownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstDownTask: found first task with tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

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
    const-string v1, "visha_DownloadService"

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

.method public Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    return-object p0
.end method

.method public R()I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->m:I

    return p0
.end method

.method public S(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    return-object p0
.end method

.method public U()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->M()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

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

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->noNetPause()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public V()V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x45c

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf7;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->h()I

    move-result v2

    invoke-interface {v1, v2}, Lmf7;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public X(Lcom/lzy/okgo/model/Progress;)V
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadService$b;->j:Lrw4;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadService$b;->k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->j:Lrw4;

    if-nez p1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_2
    iget-wide v1, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v1, v2}, Lrw4;->r(FJ)V

    :cond_3
    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->g0(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->g0(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    :cond_4
    return-void
.end method

.method public final Y(Lcom/lzy/okgo/model/Progress;J)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->j:Lrw4;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->j:Lrw4;

    iget v1, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-interface {v0, v1, v2, v3}, Lrw4;->r(FJ)V

    :cond_1
    iget-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    return-void
.end method

.method public final Z(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    :goto_0
    sub-int v2, v0, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/DownloadService$b;->p0(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    :goto_1
    sub-int v2, p1, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->l0()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->q:Lcom/transsion/sniffer_load/DownloadService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public a0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->pause(Z)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object p1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->l0()V

    return-void
.end method

.method public b(Landroid/app/Notification;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->q:Lcom/transsion/sniffer_load/DownloadService;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "visha_DownloadService"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->K(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->V()V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr03;->o(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final d0(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public e()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final e0(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->M()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

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

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->pause(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public f0()Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->M()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

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

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v4, v4, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v4, v4, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    sget v4, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-ge v2, v4, :cond_3

    invoke-virtual {v3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    iget-object v4, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    return-wide v0
.end method

.method public g0(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    iget-object v3, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v3, v3, Lcom/lzy/okgo/model/Progress;->totalSize:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->n:J

    iget-wide v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    iget-object v3, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v3, v3, Lcom/lzy/okgo/model/Progress;->fraction:F

    iget-object v4, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v4, Lcom/lzy/okgo/model/Progress;->totalSize:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->o:J

    invoke-direct {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->W()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->V()V

    return-object v0
.end method

.method public bridge synthetic getTask(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->S(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p0

    return-object p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public h0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->g0(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->remove(Z)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final i0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/DownloadService$b;->K(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->V()V

    return-void
.end method

.method public final j0(Landroid/content/Context;Lbz0;Z)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyx2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lbz0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->photo_video_loaded:I

    invoke-static {p1, p0}, Lcom/transsion/utils/ToastUtils;->u(Landroid/content/Context;I)V

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object p1, p2, Lbz0;->b:Ljava/lang/String;

    invoke-static {p1}, Lbz0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    sget p0, Lcom/transsion/sniffer_load/R$string;->bt_file_has_task:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    if-nez p3, :cond_4

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_add_to_download_list:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_4
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    iget-object p3, p2, Lbz0;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    iget-object p2, p2, Lbz0;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->C(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lr13;->b(Lbz0;)Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    move-result-object p1

    :goto_0
    iget-object p2, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p2, p2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    new-instance p3, Lcom/transsion/sniffer_load/DownloadService$d;

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->q:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {p3, v0}, Lcom/transsion/sniffer_load/DownloadService$d;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-virtual {p1, p3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->c0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p3

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    const-string v1, " "

    const-string v2, "startDownloadForCloud:"

    const-string v3, "visha_DownloadService"

    if-ge p3, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->b0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->d0(Ljava/lang/String;)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public k(Ljava/lang/String;Lrw4;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadService$b;->j:Lrw4;

    return-void
.end method

.method public final k0(Landroid/content/Context;Lcom/transsion/sniffer_load/okdownload/a;)Z
    .locals 5

    iget-object v0, p2, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    iget-object v1, p2, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->inject(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lba0;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/a;->f()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lhb0;->sniffDownloadResolution:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/a;->e()I

    move-result v1

    sput v1, Lhb0;->sniffDlgType:I

    :cond_0
    iget-object v1, p2, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    iget-boolean v3, p2, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    iget-object v4, p2, Lcom/transsion/sniffer_load/okdownload/a;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Le16;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyx2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->x(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget p0, Lcom/transsion/sniffer_load/R$string;->photo_video_loaded:I

    invoke-static {p1, p0}, Lcom/transsion/utils/ToastUtils;->u(Landroid/content/Context;I)V

    return v1

    :cond_1
    iget-object p1, p2, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p2, Lcom/transsion/sniffer_load/okdownload/a;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p2, Lcom/transsion/sniffer_load/okdownload/a;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget p1, Lcom/transsion/sniffer_load/R$string;->download_add_to_download_list:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->C(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lr13;->j(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    :goto_0
    iget-object p2, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p2, p2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    new-instance v0, Lcom/transsion/sniffer_load/DownloadService$d;

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->q:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {v0, v1}, Lcom/transsion/sniffer_load/DownloadService$d;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->c0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    sget v1, Lcom/transsion/playercommon/core/MainApp;->e:I

    const-string v2, " "

    const-string v3, "visha_DownloadService"

    if-ge v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownload1:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->b0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload2:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->d0(Ljava/lang/String;)Z

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    sget p0, Lcom/transsion/sniffer_load/R$string;->bt_file_has_task:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return v1
.end method

.method public l()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

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

    check-cast v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v4, v4, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

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

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/DownloadService$b;->h0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    const-string p0, "visha_DownloadService"

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
    const-string v0, "visha_DownloadService"

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

.method public l0()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/DownloadService$b;->b0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    :goto_1
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->unRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    iget-object v0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->b0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->e0(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public n(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbz0;

    invoke-virtual {p0, p1, v4, v5}, Lcom/transsion/sniffer_load/DownloadService$b;->j0(Landroid/content/Context;Lbz0;Z)I

    move-result v4

    if-ne v4, v5, :cond_1

    if-nez v2, :cond_1

    sget v2, Lcom/transsion/sniffer_load/R$string;->download_add_to_download_list:I

    invoke-static {v2}, Lcom/transsion/utils/ToastUtils;->s(I)V

    move v2, v5

    goto :goto_0

    :cond_1
    if-nez v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    sget p0, Lcom/transsion/sniffer_load/R$string;->bt_file_has_task:I

    goto :goto_1

    :cond_3
    sget p0, Lcom/transsion/sniffer_load/R$string;->photo_video_loaded:I

    :goto_1
    invoke-static {p1, p0}, Lcom/transsion/utils/ToastUtils;->u(Landroid/content/Context;I)V

    return v1

    :cond_4
    return v5
.end method

.method public n0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public o()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p0

    return p0
.end method

.method public final o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V
    .locals 2

    const/16 v0, 0x470

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->o()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->P()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$b;->k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDownTaskMap : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->k:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    goto :goto_1

    :cond_3
    const-string p0, "null"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_DownloadService"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public p(Landroid/content/Context;Lba0;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->d(Landroid/app/Activity;)V

    :cond_1
    invoke-virtual {p2}, Lba0;->a()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lba0;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lba0;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lba0;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    check-cast p2, Lbz0;

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->j0(Landroid/content/Context;Lbz0;Z)I

    move-result p0

    if-ne p0, v2, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    check-cast p2, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->k0(Landroid/content/Context;Lcom/transsion/sniffer_load/okdownload/a;)Z

    move-result p0

    return p0
.end method

.method public p0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->Q(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/DownloadService$b;->e0(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    return-void
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->M()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v3, v3, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    sget v3, Lcom/transsion/playercommon/core/MainApp;->e:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/transsion/sniffer_load/DownloadService$b;->o0(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->waiting()V

    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->f:Ljava/util/Map;

    iget-object v4, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    iget-object v4, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic s(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->a0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public t()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->h0(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public v(Ljava/lang/String;Lmf7;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public w()Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->q:Lcom/transsion/sniffer_load/DownloadService;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-object p0
.end method

.method public x()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$b;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
