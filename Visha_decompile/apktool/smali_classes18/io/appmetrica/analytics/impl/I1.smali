.class public final Lio/appmetrica/analytics/impl/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/u1;
.implements Lio/appmetrica/analytics/impl/l0;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public volatile c:Lio/appmetrica/analytics/impl/t1;

.field public final d:Lio/appmetrica/analytics/impl/s4;

.field public final e:Lio/appmetrica/analytics/impl/P1;

.field public f:Lio/appmetrica/analytics/impl/Lg;

.field public final g:Lio/appmetrica/analytics/impl/la;

.field public final h:Lio/appmetrica/analytics/impl/Id;

.field public final i:Lio/appmetrica/analytics/impl/k2;

.field public final j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final k:Lio/appmetrica/analytics/impl/J1;

.field public final l:Lio/appmetrica/analytics/impl/G1;

.field public final m:Lio/appmetrica/analytics/impl/Vg;

.field public n:Lio/appmetrica/analytics/impl/o6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/t1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/t1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/s5;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/s5;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/I1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/t1;Lio/appmetrica/analytics/impl/s5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/t1;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/impl/P1;Lio/appmetrica/analytics/impl/la;Lio/appmetrica/analytics/impl/k2;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/J1;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/I1;->a:Z

    .line 8
    new-instance v0, Lio/appmetrica/analytics/impl/G1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/G1;-><init>(Lio/appmetrica/analytics/impl/I1;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I1;->l:Lio/appmetrica/analytics/impl/G1;

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lio/appmetrica/analytics/impl/I1;->c:Lio/appmetrica/analytics/impl/t1;

    .line 11
    iput-object p3, p0, Lio/appmetrica/analytics/impl/I1;->d:Lio/appmetrica/analytics/impl/s4;

    .line 12
    iput-object p4, p0, Lio/appmetrica/analytics/impl/I1;->e:Lio/appmetrica/analytics/impl/P1;

    .line 13
    iput-object p5, p0, Lio/appmetrica/analytics/impl/I1;->g:Lio/appmetrica/analytics/impl/la;

    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/impl/I1;->i:Lio/appmetrica/analytics/impl/k2;

    .line 15
    iput-object p7, p0, Lio/appmetrica/analytics/impl/I1;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 16
    iput-object p8, p0, Lio/appmetrica/analytics/impl/I1;->k:Lio/appmetrica/analytics/impl/J1;

    .line 17
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/ua;->q()Lio/appmetrica/analytics/impl/Id;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I1;->h:Lio/appmetrica/analytics/impl/Id;

    .line 18
    new-instance p1, Lio/appmetrica/analytics/impl/Vg;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Vg;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I1;->m:Lio/appmetrica/analytics/impl/Vg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/t1;Lio/appmetrica/analytics/impl/s5;)V
    .locals 9

    .line 2
    new-instance v3, Lio/appmetrica/analytics/impl/s4;

    invoke-direct {v3, p1, p3}, Lio/appmetrica/analytics/impl/s4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s5;)V

    new-instance v4, Lio/appmetrica/analytics/impl/P1;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/P1;-><init>()V

    sget-object v5, Lio/appmetrica/analytics/impl/la;->d:Lio/appmetrica/analytics/impl/la;

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/ua;->d()Lio/appmetrica/analytics/impl/k2;

    move-result-object v6

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Uj;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/impl/J1;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/J1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/impl/I1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/t1;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/impl/P1;Lio/appmetrica/analytics/impl/la;Lio/appmetrica/analytics/impl/k2;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/J1;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->e:Lio/appmetrica/analytics/impl/P1;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/P1;->a:Lio/appmetrica/analytics/impl/wa;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/P1;->a(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/impl/wa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/P1;->b:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/O1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/N1;

    .line 10
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/N1;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/O1;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/I1;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/content/Intent;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p3}, Lio/appmetrica/analytics/impl/I1;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 13
    const-class v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/a6;

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->f:Lio/appmetrica/analytics/impl/Lg;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/a6;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lio/appmetrica/analytics/impl/dh;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lg;->a:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    invoke-direct {v1, v2, v0, p1, v3}, Lio/appmetrica/analytics/impl/dh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/a6;Landroid/os/Bundle;Lio/appmetrica/analytics/impl/s4;)V

    .line 18
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lg;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/t1;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/t1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    iput-object p1, p0, Lio/appmetrica/analytics/impl/I1;->c:Lio/appmetrica/analytics/impl/t1;

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 20
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->f:Lio/appmetrica/analytics/impl/Lg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Lio/appmetrica/analytics/impl/sb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/sb;-><init>()V

    .line 22
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Lg;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/Gf;

    new-instance v3, Lio/appmetrica/analytics/impl/Hg;

    invoke-direct {v3, p0}, Lio/appmetrica/analytics/impl/Hg;-><init>(Lio/appmetrica/analytics/impl/Lg;)V

    invoke-direct {v2, p1, v0, v0, v3}, Lio/appmetrica/analytics/impl/Gf;-><init>(Ljava/io/File;Lio/appmetrica/analytics/coreapi/internal/backport/Function;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->e:Lio/appmetrica/analytics/impl/P1;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/P1;->d(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    const-string v2, "io.appmetrica.analytics.IAppMetricaService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/client"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    const-string v2, "psid"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lio/appmetrica/analytics/impl/I1;->d:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v2, v0, v1, p1}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->i:Lio/appmetrica/analytics/impl/k2;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/k2;->a(I)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Intent;I)V
    .locals 4

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/b4;->a(Landroid/content/Context;Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/b4;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->l()Z

    move-result v1

    .line 17
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->m()Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/I1;->f:Lio/appmetrica/analytics/impl/Lg;

    .line 19
    invoke-static {v0}, Lio/appmetrica/analytics/impl/h4;->a(Lio/appmetrica/analytics/impl/b4;)Lio/appmetrica/analytics/impl/h4;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/G4;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/G4;-><init>(Lio/appmetrica/analytics/impl/b4;)V

    .line 20
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    .line 21
    invoke-virtual {v0, v2, v3}, Lio/appmetrica/analytics/impl/s4;->a(Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1, v3}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V

    .line 23
    iget-object p1, v1, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    .line 24
    iget-object v0, v2, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    .line 25
    iget-object v1, v2, Lio/appmetrica/analytics/impl/h4;->c:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 27
    iget-object v2, v2, Lio/appmetrica/analytics/impl/h4;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1, v0, v2}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :catchall_0
    :cond_3
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->c:Lio/appmetrica/analytics/impl/t1;

    check-cast p0, Lio/appmetrica/analytics/impl/r1;

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r1;->a:Lio/appmetrica/analytics/internal/AppMetricaService;

    .line 31
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelfResult(I)Z

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->e:Lio/appmetrica/analytics/impl/P1;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/P1;->a:Lio/appmetrica/analytics/impl/wa;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/P1;->a(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/impl/wa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/P1;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/O1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/N1;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/N1;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/O1;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->u()Lio/appmetrica/analytics/impl/Ui;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ui;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/I1;->a:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->g:Lio/appmetrica/analytics/impl/la;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/la;->b(Landroid/content/Context;)V

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ua;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->initAsync()V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Jl;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    new-instance v2, Lio/appmetrica/analytics/impl/Gn;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/ua;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Gn;-><init>(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;)V

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Ml;)V

    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->init()V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object v1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/ua;->q:Lio/appmetrica/analytics/impl/ta;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Kb;->a(Lio/appmetrica/analytics/impl/ta;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lio/appmetrica/analytics/impl/Jj;->a:Lio/appmetrica/analytics/impl/Kj;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Kj;->e()V

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Jl;->b()Lio/appmetrica/analytics/impl/Hl;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Jl;->b()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/Nj;

    new-instance v4, Lio/appmetrica/analytics/impl/fd;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/I1;->e:Lio/appmetrica/analytics/impl/P1;

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/fd;-><init>(Lio/appmetrica/analytics/impl/P1;)V

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Nj;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;)V

    invoke-virtual {v2, v3, v1}, Lio/appmetrica/analytics/impl/bk;->a(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/impl/Hl;)V

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Ml;)V

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->y()Lio/appmetrica/analytics/impl/V2;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/cl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->e:Lio/appmetrica/analytics/impl/P1;

    new-instance v1, Lio/appmetrica/analytics/impl/H1;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/H1;-><init>(Lio/appmetrica/analytics/impl/I1;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/P1;->c(Lio/appmetrica/analytics/impl/O1;)V

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->l()Lio/appmetrica/analytics/impl/Pb;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Sb;->init()V

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Q;->init()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->k:Lio/appmetrica/analytics/impl/J1;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/I1;->d:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/Lg;

    sget-object v3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Uj;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/ha;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/ha;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/Lg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/ha;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I1;->f:Lio/appmetrica/analytics/impl/Lg;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    sget-object v1, Lio/appmetrica/analytics/impl/n1;->a:Lio/appmetrica/analytics/impl/m1;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/m1;->b(Landroid/content/Context;)V

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getCrashesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/appmetrica/analytics/impl/I1;->k:Lio/appmetrica/analytics/impl/J1;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/I1;->l:Lio/appmetrica/analytics/impl/G1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/o6;

    new-instance v3, Lio/appmetrica/analytics/impl/p6;

    new-instance v4, Lio/appmetrica/analytics/impl/ha;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/ha;-><init>()V

    invoke-direct {v3, v0, v2, v4}, Lio/appmetrica/analytics/impl/p6;-><init>(Ljava/io/File;Lio/appmetrica/analytics/impl/G1;Lio/appmetrica/analytics/impl/ha;)V

    new-instance v2, Lio/appmetrica/analytics/impl/q6;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/q6;-><init>()V

    invoke-direct {v1, v3, v0, v2}, Lio/appmetrica/analytics/impl/o6;-><init>(Lio/appmetrica/analytics/impl/p6;Ljava/io/File;Lio/appmetrica/analytics/impl/q6;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/I1;->n:Lio/appmetrica/analytics/impl/o6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/I1;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/Hf;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/I1;->l:Lio/appmetrica/analytics/impl/G1;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/ga;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/ga;

    move-result-object v3

    invoke-direct {v2, v0, v4, v3}, Lio/appmetrica/analytics/impl/Hf;-><init>(Ljava/io/File;Lio/appmetrica/analytics/impl/G1;Lio/appmetrica/analytics/impl/ga;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->n:Lio/appmetrica/analytics/impl/o6;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/o6;->c:Lio/appmetrica/analytics/impl/q6;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/o6;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_3
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o6;->a:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I1;->h:Lio/appmetrica/analytics/impl/Id;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/I1;->f:Lio/appmetrica/analytics/impl/Lg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getNativeCrashDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lio/appmetrica/analytics/impl/Id;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    new-instance v6, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;

    invoke-direct {v6, v3}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->init(Landroid/content/Context;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;)V

    new-instance v1, Lio/appmetrica/analytics/impl/Gd;

    new-instance v3, Lio/appmetrica/analytics/impl/Hd;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/Hd;-><init>(Lio/appmetrica/analytics/impl/Id;)V

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/Gd;-><init>(Lio/appmetrica/analytics/impl/Lg;Le74;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Id;->b:Lio/appmetrica/analytics/impl/Gd;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Id;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    invoke-virtual {v2}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->getAllCrashes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Gd;->a(Ljava/util/List;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Id;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Id;->b:Lio/appmetrica/analytics/impl/Gd;

    if-nez v0, :cond_7

    const-string v0, "crashReporter"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v4, v0

    :goto_2
    invoke-virtual {v1, v4}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->setDefaultCrashHandler(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashHandler;)V

    :goto_3
    new-instance v0, Lio/appmetrica/analytics/impl/T5;

    new-instance v1, Lio/appmetrica/analytics/impl/Qg;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Qg;-><init>()V

    invoke-static {v1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/T5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/T5;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/I1;->a:Z

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->u()Lio/appmetrica/analytics/impl/Ui;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Ui;->a(Landroid/content/res/Configuration;)V

    :goto_4
    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Kb;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Vj;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Vj;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final pauseUserSession(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v0, Lio/appmetrica/analytics/impl/pf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/pf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v0, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->i:Lio/appmetrica/analytics/impl/k2;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/k2;->b(I)V

    :cond_1
    return-void
.end method

.method public final reportData(ILandroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->m:Lio/appmetrica/analytics/impl/Vg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->v:Lio/appmetrica/analytics/impl/Pj;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pj;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Oj;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Oj;->reportData(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final resumeUserSession(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v0, Lio/appmetrica/analytics/impl/pf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/pf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v0, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I1;->i:Lio/appmetrica/analytics/impl/k2;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/k2;->c(I)V

    :cond_1
    return-void
.end method
