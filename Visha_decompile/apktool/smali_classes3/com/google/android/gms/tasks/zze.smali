.class final Lcom/google/android/gms/tasks/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lxda;

.field final synthetic zzb:Lcom/google/android/gms/tasks/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/c;Lxda;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zze;->zza:Lxda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    invoke-static {v0}, Lcom/google/android/gms/tasks/c;->d(Lcom/google/android/gms/tasks/c;)Lxh1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zza:Lxda;

    invoke-interface {v0, v1}, Lxh1;->a(Lxda;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxda;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/c;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    sget-object v2, Lfea;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lxda;->g(Ljava/util/concurrent/Executor;Llf7;)Lxda;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    invoke-virtual {v0, v2, v1}, Lxda;->e(Ljava/util/concurrent/Executor;Lre7;)Lxda;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    invoke-virtual {v0, v2, p0}, Lxda;->a(Ljava/util/concurrent/Executor;Lne7;)Lxda;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    invoke-static {p0}, Lcom/google/android/gms/tasks/c;->e(Lcom/google/android/gms/tasks/c;)Leoj;

    move-result-object p0

    invoke-virtual {p0, v0}, Leoj;->s(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    invoke-static {p0}, Lcom/google/android/gms/tasks/c;->e(Lcom/google/android/gms/tasks/c;)Leoj;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Leoj;->s(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/c;

    invoke-static {p0}, Lcom/google/android/gms/tasks/c;->e(Lcom/google/android/gms/tasks/c;)Leoj;

    move-result-object p0

    invoke-virtual {p0, v0}, Leoj;->s(Ljava/lang/Exception;)V

    return-void
.end method
