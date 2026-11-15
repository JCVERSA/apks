.class final Lcom/google/android/gms/measurement/internal/zziu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlc;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/measurement/internal/zzlc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Lcom/google/android/gms/measurement/internal/j;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzq;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzlc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Lcom/google/android/gms/measurement/internal/j;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j;->G(Lcom/google/android/gms/measurement/internal/j;)Lcom/google/android/gms/measurement/internal/zzee;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string v0, "Discarding data. Failed to set user property"

    invoke-virtual {p0, v0}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Lcom/google/android/gms/measurement/internal/j;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzlc;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/j;->q(Lcom/google/android/gms/measurement/internal/zzee;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzq;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzd:Lcom/google/android/gms/measurement/internal/j;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/j;->M(Lcom/google/android/gms/measurement/internal/j;)V

    return-void
.end method
