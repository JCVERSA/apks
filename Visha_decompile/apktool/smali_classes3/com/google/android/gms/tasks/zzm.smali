.class final Lcom/google/android/gms/tasks/zzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lxda;

.field final synthetic zzb:Lcom/google/android/gms/tasks/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/g;Lxda;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Lcom/google/android/gms/tasks/g;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzm;->zza:Lxda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Lcom/google/android/gms/tasks/g;

    invoke-static {v0}, Lcom/google/android/gms/tasks/g;->b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzm;->zzb:Lcom/google/android/gms/tasks/g;

    invoke-static {v1}, Lcom/google/android/gms/tasks/g;->a(Lcom/google/android/gms/tasks/g;)Llf7;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/tasks/g;->a(Lcom/google/android/gms/tasks/g;)Llf7;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzm;->zza:Lxda;

    invoke-virtual {p0}, Lxda;->m()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Llf7;->onSuccess(Ljava/lang/Object;)V

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
