.class final Lcom/google/android/gms/tasks/zzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lxda;

.field final synthetic zzb:Lcom/google/android/gms/tasks/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/h;Lxda;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzo;->zza:Lxda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-static {v0}, Lcom/google/android/gms/tasks/h;->d(Lcom/google/android/gms/tasks/h;)Lq6a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzo;->zza:Lxda;

    invoke-virtual {v1}, Lxda;->m()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lq6a;->a(Ljava/lang/Object;)Lxda;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    sget-object v2, Lfea;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lxda;->g(Ljava/util/concurrent/Executor;Llf7;)Lxda;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, v2, v1}, Lxda;->e(Ljava/util/concurrent/Executor;Lre7;)Lxda;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, v2, p0}, Lxda;->a(Ljava/util/concurrent/Executor;Lne7;)Lxda;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    return-void

    :catch_2
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/h;->b()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/h;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    return-void
.end method
