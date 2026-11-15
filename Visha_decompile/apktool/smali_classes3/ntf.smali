.class public final Lntf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;
.implements Liue;


# instance fields
.field public final b:Lhmh;

.field public final c:Lb0g;

.field public final d:Lk1g;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lhmh;Lb0g;Lk1g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lntf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lntf;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lntf;->b:Lhmh;

    iput-object p2, p0, Lntf;->c:Lb0g;

    iput-object p3, p0, Lntf;->d:Lk1g;

    return-void
.end method

.method private final a()V
    .locals 3

    iget-object v0, p0, Lntf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lntf;->c:Lb0g;

    invoke-virtual {p0}, Lb0g;->zza()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzdn(Lhue;)V
    .locals 2

    iget-object v0, p0, Lntf;->b:Lhmh;

    iget v0, v0, Lhmh;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lhue;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lntf;->a()V

    :cond_0
    iget-boolean p1, p1, Lhue;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lntf;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lntf;->d:Lk1g;

    invoke-virtual {p0}, Lk1g;->zza()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized zzt()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lntf;->b:Lhmh;

    iget v0, v0, Lhmh;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lntf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
