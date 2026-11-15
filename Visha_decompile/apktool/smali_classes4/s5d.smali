.class public Ls5d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5d;


# static fields
.field public static final e:Ljava/lang/String; = "s5d"


# instance fields
.field public a:Ly1d;

.field public b:Ljava/lang/Object;

.field public c:Lx1d;

.field public d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ly1d;Lx1d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls5d;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ls5d;->d:Ljava/util/Map;

    iput-object p1, p0, Ls5d;->a:Ly1d;

    iput-object p2, p0, Ls5d;->c:Lx1d;

    invoke-virtual {p0}, Ls5d;->d()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls5d;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Ls5d;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/db/dao3/c;

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, "download1"

    const-string p1, "mDownloadTaskMap == null || mDownloadTaskMap.size() == 0"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(J)Ljava/util/List;
    .locals 9

    .line 10
    sget-object v0, Ls5d;->e:Ljava/lang/String;

    const-string v1, "quenByFreeSize"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object p0, p0, Ls5d;->d:Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mgmi/db/dao3/c;

    if-eqz v6, :cond_1

    .line 15
    invoke-virtual {v6}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-lez v7, :cond_1

    .line 16
    invoke-virtual {v6}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 17
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    .line 18
    :cond_2
    sget-object p0, Ls5d;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "quenByFreeSize size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/mgmi/db/dao3/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ls5d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Ls5d;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Ls5d;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Ls5d;->a:Ly1d;

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Ly1d;->c(Lcom/mgmi/db/dao3/c;)V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/mgmi/db/dao3/c;)V
    .locals 3

    iget-object v0, p0, Ls5d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls5d;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ls5d;->a:Ly1d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ly1d;->d(Lcom/mgmi/db/dao3/c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c(Lcom/mgmi/db/dao3/c;)V
    .locals 3

    iget-object v0, p0, Ls5d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls5d;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ls5d;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ls5d;->a:Ly1d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ly1d;->e(Lcom/mgmi/db/dao3/c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Ls5d;->a:Ly1d;

    if-eqz v0, :cond_4

    sget-object v0, Ls5d;->e:Ljava/lang/String;

    const-string v1, "initCachFromdb 01"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ls5d;->a:Ly1d;

    invoke-virtual {v1}, Ly1d;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/db/dao3/c;

    iget-object v2, p0, Ls5d;->b:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb2d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Ls5d;->e:Ljava/lang/String;

    const-string v4, "initCachFromdb delete"

    invoke-static {v3, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls5d;->a:Ly1d;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ly1d;->c(Lcom/mgmi/db/dao3/c;)V

    const-string v3, "download1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u521d\u59cb\u5316\u5220\u9664\u4e0b\u8f7d\u8bb0\u5f55\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgmi/db/dao3/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v3, Ls5d;->e:Ljava/lang/String;

    const-string v4, "initCachFromdb put"

    invoke-static {v3, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls5d;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download1"

    const-string v3, "\u521d\u59cb\u5316\u67e5\u8be2\u5230\u4e86\u6570\u636e"

    invoke-static {v1, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    const-string p0, "initCachFromdb 02"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
