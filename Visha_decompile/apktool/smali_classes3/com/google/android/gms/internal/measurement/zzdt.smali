.class abstract Lcom/google/android/gms/internal/measurement/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zzh:J

.field final zzi:J

.field final zzj:Z

.field final synthetic zzk:Lcom/google/android/gms/internal/measurement/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzk:Lcom/google/android/gms/internal/measurement/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/b;->b:Lfy0;

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzh:J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/b;->b:Lfy0;

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzi:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzj:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzk:Lcom/google/android/gms/internal/measurement/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b;->n(Lcom/google/android/gms/internal/measurement/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdt;->zzb()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdt;->zza()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzk:Lcom/google/android/gms/internal/measurement/b;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzj:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/b;->L(Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdt;->zzb()V

    return-void
.end method

.method public abstract zza()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public zzb()V
    .locals 0

    return-void
.end method
