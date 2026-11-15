.class public final Lt9j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls9j;

.field public final b:Lr9j;

.field public final c:Lw4f;

.field public d:I

.field public e:Ljava/lang/Object;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lr9j;Ls9j;Lw4f;ILtbg;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9j;->b:Lr9j;

    iput-object p2, p0, Lt9j;->a:Ls9j;

    iput-object p3, p0, Lt9j;->c:Lw4f;

    iput-object p6, p0, Lt9j;->f:Landroid/os/Looper;

    iput p4, p0, Lt9j;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lt9j;->d:I

    return p0
.end method

.method public final b()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lt9j;->f:Landroid/os/Looper;

    return-object p0
.end method

.method public final c()Ls9j;
    .locals 0

    iget-object p0, p0, Lt9j;->a:Ls9j;

    return-object p0
.end method

.method public final d()Lt9j;
    .locals 2

    iget-boolean v0, p0, Lt9j;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput-boolean v1, p0, Lt9j;->h:Z

    iget-object v0, p0, Lt9j;->b:Lr9j;

    invoke-interface {v0, p0}, Lr9j;->c(Lt9j;)V

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Lt9j;
    .locals 1

    iget-boolean v0, p0, Lt9j;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput-object p1, p0, Lt9j;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(I)Lt9j;
    .locals 1

    iget-boolean v0, p0, Lt9j;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput p1, p0, Lt9j;->d:I

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt9j;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final declared-synchronized h(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt9j;->i:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lt9j;->i:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i()Z
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method
