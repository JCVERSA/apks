.class public abstract Lrqc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt43;

.field public b:Lqqc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lt43;
.end method

.method public abstract b()Lqqc;
.end method

.method public declared-synchronized c()Lt43;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrqc;->a:Lt43;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrqc;->a()Lt43;

    move-result-object v0

    iput-object v0, p0, Lrqc;->a:Lt43;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lrqc;->a:Lt43;
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

.method public declared-synchronized d()Lqqc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrqc;->b:Lqqc;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrqc;->b()Lqqc;

    move-result-object v0

    iput-object v0, p0, Lrqc;->b:Lqqc;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lrqc;->b:Lqqc;
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
