.class public Lcom/wandoujia/download/rpc/d;
.super Ljava/lang/Object;


# static fields
.field public static final n:I


# instance fields
.field public final a:Lo/vu1;

.field public final b:Lo/rg4;

.field public final c:Lcom/wandoujia/download/listener/NetworkStatusStub;

.field public final d:Lo/yg7;

.field public final e:Landroid/util/LongSparseArray;

.field public final f:Landroid/content/Context;

.field public final g:Lo/dg0;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Lo/yu;

.field public final j:Lcom/wandoujia/download/rpc/b;

.field public final k:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public final l:Ljava/util/Set;

.field public final m:Lo/sr1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/snaptube/util/DeviceUtil;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->G()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/wandoujia/download/rpc/d;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/vu1;Lo/rg4;Lcom/wandoujia/download/listener/NetworkStatusStub;Lo/yg7;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    new-instance v0, Lo/dg0;

    sget v1, Lcom/wandoujia/download/rpc/d;->n:I

    const-string v2, "Download visible"

    const-wide/16 v3, 0x2710

    invoke-direct {v0, v1, v3, v4, v2}, Lo/dg0;-><init>(IJLjava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/d;->g:Lo/dg0;

    new-instance v2, Lo/dg0;

    const/4 v5, 0x2

    const-string v6, "Download Invisible"

    invoke-direct {v2, v5, v3, v4, v6}, Lo/dg0;-><init>(IJLjava/lang/String;)V

    iput-object v2, p0, Lcom/wandoujia/download/rpc/d;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lo/yu;

    const-string v3, "download-queue"

    invoke-direct {v2, v3, v1}, Lo/yu;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/wandoujia/download/rpc/d;->i:Lo/yu;

    new-instance v1, Lcom/wandoujia/download/rpc/d$a;

    invoke-direct {v1, p0}, Lcom/wandoujia/download/rpc/d$a;-><init>(Lcom/wandoujia/download/rpc/d;)V

    iput-object v1, p0, Lcom/wandoujia/download/rpc/d;->k:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    new-instance v3, Lcom/wandoujia/download/rpc/d$b;

    invoke-direct {v3, p0}, Lcom/wandoujia/download/rpc/d$b;-><init>(Lcom/wandoujia/download/rpc/d;)V

    iput-object v3, p0, Lcom/wandoujia/download/rpc/d;->m:Lo/sr1;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/d;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/d;->a:Lo/vu1;

    iput-object p3, p0, Lcom/wandoujia/download/rpc/d;->b:Lo/rg4;

    iput-object p4, p0, Lcom/wandoujia/download/rpc/d;->c:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iput-object p5, p0, Lcom/wandoujia/download/rpc/d;->d:Lo/yg7;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u2()I

    move-result p2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v0, p2}, Lo/dg0;->h(I)V

    invoke-virtual {v2, p2}, Lo/yu;->o(I)V

    invoke-static {p1}, Lcom/wandoujia/download/rpc/b;->e(Landroid/content/Context;)Lcom/wandoujia/download/rpc/b;

    move-result-object p1

    iput-object p1, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/wandoujia/download/rpc/d;)Lo/yu;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/d;->i:Lo/yu;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/wandoujia/download/rpc/d;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/wandoujia/download/rpc/d;)Lo/dg0;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/d;->g:Lo/dg0;

    return-object p0
.end method

.method public static h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V
    .locals 4

    const-string v0, "download-task"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadInfo is null. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", identity="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/wandoujia/download/rpc/h;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/wandoujia/download/rpc/h;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", path="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;
    .locals 1

    new-instance v0, Lcom/wandoujia/download/rpc/h;

    invoke-direct {v0}, Lcom/wandoujia/download/rpc/h;-><init>()V

    iget-object p1, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/wandoujia/download/rpc/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e(J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/download/rpc/f;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/f;->C()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/download/rpc/b;->b(J)Lcom/wandoujia/download/rpc/h;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v2, p1, p2}, Lcom/wandoujia/download/rpc/b;->f(J)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_5
    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/h;->a()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p2

    const/16 v1, 0xc4

    if-eq p2, v1, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p2

    const/16 v1, 0xc5

    if-eq p2, v1, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p2

    const/16 v1, 0xc1

    if-ne p2, v1, :cond_4

    :cond_3
    const/16 p2, 0x12b

    invoke-virtual {v0, p2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object p2

    invoke-virtual {p2, v0}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    :cond_4
    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final f(JLjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/download/rpc/f;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/download/rpc/b;->b(J)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "DownloadClient"

    const-string p2, "There is no download info found."

    invoke-static {p1, p2}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p3, p1, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p4, p1, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/d;->g(Lcom/wandoujia/download/rpc/h;)Lcom/wandoujia/download/rpc/f;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/wandoujia/download/rpc/h;)Lcom/wandoujia/download/rpc/f;
    .locals 12

    iget-boolean v0, p1, Lcom/wandoujia/download/rpc/h;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->g:Lo/dg0;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->h:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/wandoujia/download/rpc/f;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/wandoujia/download/rpc/d;->m:Lo/sr1;

    iget-object v6, p0, Lcom/wandoujia/download/rpc/d;->i:Lo/yu;

    iget-object v7, p0, Lcom/wandoujia/download/rpc/d;->a:Lo/vu1;

    iget-object v8, p0, Lcom/wandoujia/download/rpc/d;->b:Lo/rg4;

    iget-object v9, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    iget-object v10, p0, Lcom/wandoujia/download/rpc/d;->c:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iget-object v11, p0, Lcom/wandoujia/download/rpc/d;->d:Lo/yg7;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/wandoujia/download/rpc/f;-><init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/h;Lo/sr1;Ljava/util/concurrent/ExecutorService;Lo/yu;Lo/vu1;Lo/rg4;Lcom/wandoujia/download/rpc/b;Lcom/wandoujia/download/listener/NetworkStatusStub;Lo/yg7;)V

    iget-object v1, p1, Lcom/wandoujia/download/rpc/h;->K:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/wandoujia/download/rpc/f;->f0(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    iget-wide v3, p1, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {v2, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(J)Lcom/wandoujia/download/rpc/h;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/download/rpc/b;->b(J)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v0, p1}, Lcom/wandoujia/download/rpc/b;->c(Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/wandoujia/download/rpc/InnerDownloadFilter;)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/wandoujia/download/rpc/b;->d(Lcom/wandoujia/download/rpc/InnerDownloadFilter;IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public l(J)Z
    .locals 1

    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;->PAUSE_BY_APP:Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/download/rpc/d;->m(JLcom/wandoujia/download/rpc/DownloadConstants$PauseReason;)Z

    move-result p1

    return p1
.end method

.method public final m(JLcom/wandoujia/download/rpc/DownloadConstants$PauseReason;)Z
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wandoujia/download/rpc/f;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Lcom/wandoujia/download/rpc/f;->a0(Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/wandoujia/download/rpc/d;->f(JLjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/download/rpc/f;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/f;->c0()Z

    move-result p1

    return p1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o(Lcom/wandoujia/download/rpc/InnerDownloadFilter;)Z
    .locals 6

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/wandoujia/download/rpc/b;->d(Lcom/wandoujia/download/rpc/InnerDownloadFilter;IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/download/rpc/h;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v2, "DownloadClient"

    const-string v3, "Cannot resume running tasks."

    invoke-static {v2, v3}, Lcom/snaptube/util/ProductionEnv;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/wandoujia/download/rpc/d;->g(Lcom/wandoujia/download/rpc/h;)Lcom/wandoujia/download/rpc/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/download/rpc/f;

    invoke-virtual {v2}, Lcom/wandoujia/download/rpc/f;->c0()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    return v1

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public p(JLjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/wandoujia/download/rpc/d;->f(JLjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/download/rpc/f;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1, p3}, Lcom/wandoujia/download/rpc/f;->d0(Ljava/lang/String;)Z

    move-result p1

    return p1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(Lo/en3;)V
    .locals 1

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/it1;->g(Lo/en3;)V

    return-void
.end method

.method public r(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;
    .locals 4

    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v1, v0}, Lcom/wandoujia/download/rpc/b;->c(Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xbd

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xbf

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc4

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc5

    if-ne v2, v3, :cond_5

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :cond_2
    :goto_2
    iget-boolean v2, v1, Lcom/wandoujia/download/rpc/h;->p:Z

    iget-boolean v3, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->r:Z

    if-eq v2, v3, :cond_4

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "ERROR! DownloadInfo already existed! Cancel existing invisible task."

    invoke-static {v1, v2}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/download/rpc/d;->e(J)Z

    goto :goto_4

    :cond_4
    :goto_3
    const-string v2, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    invoke-static {v1, v2}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    const-string v2, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/d;->d(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_5
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v1, p1}, Lcom/wandoujia/download/rpc/b;->a(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;

    move-result-object v1

    const-string v2, "downloadInfo added into DB."

    invoke-static {v1, v2}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->a()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/d;->g(Lcom/wandoujia/download/rpc/h;)Lcom/wandoujia/download/rpc/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/f;->g0()V

    return-object p1

    :cond_6
    const/4 v0, 0x0

    const-string v1, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    invoke-static {v0, v1}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    const-string v1, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    const-string v2, "pos-2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/d;->d(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    return-object p1

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :goto_5
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p1

    :catchall_4
    move-exception p1

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p1
.end method
