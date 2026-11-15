.class public final Ltfj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lrfj;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltfj;

    const-string v1, ""

    invoke-direct {v0, v1}, Ltfj;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltfj;->a:Ljava/lang/String;

    sget p1, Lkfh;->a:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance p1, Lrfj;

    invoke-direct {p1}, Lrfj;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ltfj;->b:Lrfj;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltfj;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/media/metrics/LogSessionId;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltfj;->b:Lrfj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrfj;->a:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/media/metrics/LogSessionId;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltfj;->b:Lrfj;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lrfj;->a:Landroid/media/metrics/LogSessionId;

    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v2

    invoke-static {v1, v2}, Laf6;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ln7g;->f(Z)V

    iput-object p1, v0, Lrfj;->a:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltfj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltfj;

    iget-object v1, p0, Ltfj;->a:Ljava/lang/String;

    iget-object v3, p1, Ltfj;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltfj;->b:Lrfj;

    iget-object v3, p1, Ltfj;->b:Lrfj;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Ltfj;->c:Ljava/lang/Object;

    iget-object p1, p1, Ltfj;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ltfj;->a:Ljava/lang/String;

    iget-object v1, p0, Ltfj;->b:Lrfj;

    iget-object p0, p0, Ltfj;->c:Ljava/lang/Object;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
