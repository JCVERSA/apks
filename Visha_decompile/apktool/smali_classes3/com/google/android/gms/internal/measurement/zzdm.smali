.class final Lcom/google/android/gms/internal/measurement/zzdm;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzb:Lcom/google/android/gms/internal/measurement/b;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/b;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzb:Lcom/google/android/gms/internal/measurement/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b;->y(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Z

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzcc;->setDataCollectionEnabled(Z)V

    return-void
.end method
