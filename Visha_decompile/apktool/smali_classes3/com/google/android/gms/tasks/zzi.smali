.class final Lcom/google/android/gms/tasks/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lxda;

.field final synthetic zzb:Lcom/google/android/gms/tasks/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/e;Lxda;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Lcom/google/android/gms/tasks/e;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zza:Lxda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Lcom/google/android/gms/tasks/e;

    invoke-static {v0}, Lcom/google/android/gms/tasks/e;->b(Lcom/google/android/gms/tasks/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Lcom/google/android/gms/tasks/e;

    invoke-static {v1}, Lcom/google/android/gms/tasks/e;->a(Lcom/google/android/gms/tasks/e;)Lpe7;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/tasks/e;->a(Lcom/google/android/gms/tasks/e;)Lpe7;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Lxda;

    invoke-interface {v1, p0}, Lpe7;->onComplete(Lxda;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
