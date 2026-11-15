.class public Lo8d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:Ljava/lang/Object;

.field public d:Ly1d;

.field public e:Lr5d;

.field public f:Lx1d;


# direct methods
.method public constructor <init>(Ly1d;Lr5d;Lx1d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lo8d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo8d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo8d;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo8d;->c:Ljava/lang/Object;

    iput-object p1, p0, Lo8d;->d:Ly1d;

    iput-object p2, p0, Lo8d;->e:Lr5d;

    iput-object p3, p0, Lo8d;->f:Lx1d;

    invoke-virtual {p0}, Lo8d;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mgadplus/b/d/b;
    .locals 1

    iget-object p0, p0, Lo8d;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/b/d/b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public c(Lx1d$a;Z)V
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/b/d/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->c()V

    :cond_2
    iget-object p2, p0, Lo8d;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v1

    invoke-virtual {v1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object p1

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    iget-object p0, p0, Lo8d;->a:Ljava/lang/String;

    const-string p1, "remove task fail because it is run"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    iget-object p0, p0, Lo8d;->a:Ljava/lang/String;

    const-string p1, "remove task fail"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/mgadplus/b/d/b;)V
    .locals 3

    iget-object v0, p0, Lo8d;->a:Ljava/lang/String;

    const-string v1, "removeTask----"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->c()V

    :cond_0
    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v0

    invoke-virtual {v0}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v0

    invoke-virtual {v0}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lo8d;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v2

    invoke-virtual {v2}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object p1

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    iget-object p0, p0, Lo8d;->a:Ljava/lang/String;

    const-string p1, "remove task fail"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lx1d$a;)Z
    .locals 4

    iget-object v0, p0, Lo8d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start DownloadTaskManager url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo8d;->e:Lr5d;

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lr5d;->a(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo8d;->a:Ljava/lang/String;

    const-string v1, "start info null"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mgmi/db/dao3/c;

    invoke-direct {v0}, Lcom/mgmi/db/dao3/c;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/db/dao3/c;->a(J)V

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgmi/db/dao3/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/db/dao3/c;->b(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/db/dao3/c;->c(J)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/db/dao3/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lx1d$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/db/dao3/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/db/dao3/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lo8d;->e:Lr5d;

    invoke-interface {v1, v0}, Lr5d;->b(Lcom/mgmi/db/dao3/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mgmi/db/dao3/c;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lo8d;->g(Lx1d$a;)Z

    move-result p0

    return p0
.end method

.method public final f(Lcom/mgadplus/b/d/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo8d;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v2

    invoke-virtual {v2}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgadplus/b/d/b;

    if-nez v1, :cond_1

    iget-object v2, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object v3

    invoke-virtual {v3}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    iget-object v0, p0, Lo8d;->f:Lx1d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lx1d;->h(Lcom/mgadplus/b/d/b;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lo8d;->f:Lx1d;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lo8d;->h(Lcom/mgadplus/b/d/b;)V

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g(Lx1d$a;)Z
    .locals 3

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt5d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo8d;->a:Ljava/lang/String;

    const-string v1, "startInter but url invalid"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo8d;->f:Lx1d;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lx1d;->f(Lx1d$a;I)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lo8d;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo8d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgadplus/b/d/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    new-instance v0, Lcom/mgadplus/b/d/b;

    iget-object v1, p0, Lo8d;->e:Lr5d;

    iget-object v2, p0, Lo8d;->f:Lx1d;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/mgadplus/b/d/b;-><init>(Lx1d$a;Lr5d;Lx1d;Lo8d;)V

    invoke-virtual {v0, p1}, Lcom/mgadplus/b/d/b;->a(Lx1d$a;)Lcom/mgadplus/b/d/b;

    invoke-virtual {p0, v0}, Lo8d;->f(Lcom/mgadplus/b/d/b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lo8d;->h(Lcom/mgadplus/b/d/b;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h(Lcom/mgadplus/b/d/b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lo8d;->f:Lx1d;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->a()Lx1d$a;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lx1d;->f(Lx1d$a;I)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lo8d;->f:Lx1d;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lx1d;->h(Lcom/mgadplus/b/d/b;)V

    :cond_2
    return-void
.end method
