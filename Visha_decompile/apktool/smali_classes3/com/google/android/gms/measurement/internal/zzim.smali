.class final Lcom/google/android/gms/measurement/internal/zzim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lu2j;

.field final synthetic zzc:Lu2j;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/h;Landroid/os/Bundle;Lu2j;Lu2j;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzim;->zze:Lcom/google/android/gms/measurement/internal/h;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzb:Lu2j;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzc:Lu2j;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzim;->zze:Lcom/google/android/gms/measurement/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzb:Lu2j;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzc:Lu2j;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/h;->v(Lcom/google/android/gms/measurement/internal/h;Landroid/os/Bundle;Lu2j;Lu2j;J)V

    return-void
.end method
