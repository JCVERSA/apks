.class public final Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/dagger/DivKitComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;,
        Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl;,
        Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;,
        Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Ljava/lang/Object;

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public volatile g:Ljava/lang/Object;

.field public final h:Landroid/content/Context;

.field public final i:Lcom/yandex/div/core/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/div/core/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->a:Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->b:Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->c:Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->d:Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->e:Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->f:Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    iput-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->g:Ljava/lang/Object;

    invoke-static {p1}, Ltv0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->h:Landroid/content/Context;

    invoke-static {p2}, Ltv0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/core/c;

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    return-void
.end method

.method public static builder()Lcom/yandex/div/core/dagger/DivKitComponent$Builder;
    .locals 2

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Loq4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {p0}, Lcom/yandex/div/core/c;->f()Loq4;

    move-result-object p0

    invoke-static {p0}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loq4;

    return-object p0
.end method

.method public b()Lcom/yandex/div/core/dagger/Div2Component$Builder;
    .locals 1

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;)V

    return-object v0
.end method

.method public c()Lsq4;
    .locals 5

    sget-object v0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->a:Lcom/yandex/div/core/dagger/DivKitHistogramsModule;

    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {v1}, Lcom/yandex/div/core/c;->e()Lcom/yandex/div/histogram/HistogramConfiguration;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/histogram/HistogramConfiguration;

    new-instance v2, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;I)V

    new-instance v3, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->h(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lsq4;

    move-result-object p0

    invoke-static {p0}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsq4;

    return-object p0
.end method

.method public d()Lvf2;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    new-instance v1, Lvf2;

    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->k()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lvf2;-><init>(Ljava/util/Set;)V

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->a:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Lvf2;

    return-object v0
.end method

.method public e()Lcom/yandex/div/histogram/DivParsingHistogramReporter;
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->f:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->f:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->a:Lcom/yandex/div/core/dagger/DivKitHistogramsModule;

    iget-object v2, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {v2}, Lcom/yandex/div/core/c;->e()Lcom/yandex/div/histogram/HistogramConfiguration;

    move-result-object v2

    invoke-static {v2}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/histogram/HistogramConfiguration;

    new-instance v3, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;I)V

    new-instance v4, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->f(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lcom/yandex/div/histogram/DivParsingHistogramReporter;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->f:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter;

    return-object v0
.end method

.method public f()Lcom/yandex/div/storage/DivStorageComponent;
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->b:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    sget-object v1, Lbr2;->a:Lbr2;

    iget-object v2, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {v2}, Lcom/yandex/div/core/c;->d()Ljk3;

    move-result-object v2

    invoke-static {v2}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljk3;

    iget-object v3, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->h:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->c()Lsq4;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->e()Lcom/yandex/div/histogram/DivParsingHistogramReporter;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lbr2;->b(Ljk3;Landroid/content/Context;Lsq4;Lcom/yandex/div/histogram/DivParsingHistogramReporter;)Lcom/yandex/div/storage/DivStorageComponent;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->b:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Lcom/yandex/div/storage/DivStorageComponent;

    return-object v0
.end method

.method public g()Ljq4;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->g:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->g:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    new-instance v1, Ljq4;

    invoke-direct {v1}, Ljq4;-><init>()V

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->g:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Ljq4;

    return-object v0
.end method

.method public h()Lqq4;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->e:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {v1}, Lcom/yandex/div/core/c;->g()Lqq4;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->e:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Lqq4;

    return-object v0
.end method

.method public i()Lac9;
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->d:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->d:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    sget-object v1, Lfm2;->a:Lfm2;

    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {v2}, Lcom/yandex/div/core/c;->h()Lzb9;

    const/4 v2, 0x0

    invoke-static {v2}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lfm2;->a(Landroid/content/Context;Lzb9;)Lac9;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->d:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Lac9;

    return-object v0
.end method

.method public j()Lcom/yandex/div/internal/viewpool/ViewCreator;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->c:Ljava/lang/Object;

    instance-of v2, v1, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$UninitializedLock;

    if-eqz v2, :cond_0

    sget-object v1, Lfm2;->a:Lfm2;

    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {v1}, Lcom/yandex/div/core/c;->a()Lcom/yandex/div/histogram/a;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/histogram/a;

    invoke-static {v1}, Lfm2;->b(Lcom/yandex/div/histogram/a;)Lcom/yandex/div/internal/viewpool/ViewCreator;

    move-result-object v1

    invoke-static {v1}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->c:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    check-cast v0, Lcom/yandex/div/internal/viewpool/ViewCreator;

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v1, Llg2;

    invoke-direct {v1}, Llg2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;

    invoke-direct {v1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqf2;

    invoke-direct {v1}, Lqf2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lrf2;

    invoke-direct {v1}, Lrf2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler;

    invoke-direct {v1}, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ltf2;

    invoke-direct {v1}, Ltf2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lxf2;

    invoke-direct {v1}, Lxf2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lyf2;

    invoke-direct {v1}, Lyf2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lzf2;

    invoke-direct {v1}, Lzf2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;

    invoke-direct {v1}, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lag2;

    invoke-direct {v1}, Lag2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbg2;

    invoke-direct {v1}, Lbg2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcg2;

    iget-object p0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {p0}, Lcom/yandex/div/core/c;->b()Lyo2;

    move-result-object p0

    invoke-static {p0}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyo2;

    invoke-direct {v1, p0}, Lcg2;-><init>(Lyo2;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p0, Ldg2;

    invoke-direct {p0}, Ldg2;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p0, Lfg2;

    invoke-direct {p0}, Lfg2;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->g()Ljq4;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->h()Lqq4;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i()Lac9;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->i:Lcom/yandex/div/core/c;

    invoke-virtual {p0}, Lcom/yandex/div/core/c;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0}, Ltv0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->f()Lcom/yandex/div/storage/DivStorageComponent;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->c()Lsq4;

    move-result-object p0

    return-object p0
.end method
