.class final Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Luee;

.field final synthetic zzb:I

.field final synthetic zzc:J

.field final synthetic zzd:Z

.field final synthetic zze:Luee;

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g;Luee;IJZLuee;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzf:Lcom/google/android/gms/measurement/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Luee;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zze:Luee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzf:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Luee;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->I(Luee;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzf:Lcom/google/android/gms/measurement/internal/g;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Luee;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:J

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:Z

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/g;->b0(Lcom/google/android/gms/measurement/internal/g;Luee;IJZZ)V

    invoke-static {}, Lsfj;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzf:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lkwg;->u0:Llvg;

    invoke-virtual {v0, v1, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzf:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Luee;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zze:Luee;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/g;->a0(Lcom/google/android/gms/measurement/internal/g;Luee;Luee;)V

    :cond_0
    return-void
.end method
