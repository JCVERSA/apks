.class public Lsqc;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Lm1;

.field public c:Lt43;

.field public d:Li53;


# direct methods
.method public constructor <init>(Li53;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Li53;->y()Li53;

    move-result-object v0

    iput-object v0, p0, Lsqc;->d:Li53;

    new-instance v0, Lwp1;

    invoke-virtual {p1, p2}, Li53;->l(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lwp1;-><init>([B)V

    iput-object v0, p0, Lsqc;->b:Lm1;

    return-void
.end method

.method public constructor <init>(Lt43;Lm1;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lm1;->z()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lsqc;-><init>(Lt43;[B)V

    return-void
.end method

.method public constructor <init>(Lt43;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lsqc;->c:Lt43;

    new-instance p1, Lwp1;

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lwp1;-><init>([B)V

    iput-object p1, p0, Lsqc;->b:Lm1;

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lsqc;->b:Lm1;

    return-object p0
.end method

.method public declared-synchronized m()Li53;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsqc;->d:Li53;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsqc;->c:Lt43;

    iget-object v1, p0, Lsqc;->b:Lm1;

    invoke-virtual {v1}, Lm1;->z()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lt43;->i([B)Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->y()Li53;

    move-result-object v0

    iput-object v0, p0, Lsqc;->d:Li53;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lsqc;->d:Li53;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
