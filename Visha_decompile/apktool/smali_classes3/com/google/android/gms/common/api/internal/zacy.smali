.class final Lcom/google/android/gms/common/api/internal/zacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Llu8;

.field final synthetic zab:Le1e;


# direct methods
.method public constructor <init>(Le1e;Llu8;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Llu8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->n:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Le1e;->a(Le1e;)Lnu8;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {v0}, Le1e;->b(Le1e;)Lw0e;

    invoke-static {v0}, Le1e;->b(Le1e;)Lw0e;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->n:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Llu8;

    invoke-static {v0, p0}, Le1e;->d(Le1e;Llu8;)V

    invoke-static {v0}, Le1e;->c(Le1e;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/c;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->f(Le1e;)V

    :goto_1
    throw v1
.end method
