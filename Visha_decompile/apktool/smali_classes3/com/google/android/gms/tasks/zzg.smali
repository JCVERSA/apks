.class final Lcom/google/android/gms/tasks/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/d;

    invoke-static {v0}, Lcom/google/android/gms/tasks/d;->b(Lcom/google/android/gms/tasks/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/d;

    invoke-static {p0}, Lcom/google/android/gms/tasks/d;->a(Lcom/google/android/gms/tasks/d;)Lne7;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tasks/d;->a(Lcom/google/android/gms/tasks/d;)Lne7;

    move-result-object p0

    invoke-interface {p0}, Lne7;->b()V

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
