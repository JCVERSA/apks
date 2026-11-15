.class public final Lvkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofg;


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Lcom/google/android/gms/internal/play_billing/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lujj;

    invoke-direct {v0, p0}, Lujj;-><init>(Lvkj;)V

    iput-object v0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvkj;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/t;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/t;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/r;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/t;->g:Le5g;

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Le5g;->d(Lcom/google/android/gms/internal/play_billing/t;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/t;->c(Lcom/google/android/gms/internal/play_billing/t;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lvkj;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/u;

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/t;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/u;->a()V

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/t;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/t;->b:Ljava/lang/Object;

    instance-of p0, p0, Lxug;

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->isDone()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvkj;->c:Lcom/google/android/gms/internal/play_billing/t;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/t;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
