.class final Lcom/google/android/gms/measurement/internal/zzhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Luee;

.field final synthetic zzb:J

.field final synthetic zzc:I

.field final synthetic zzd:J

.field final synthetic zze:Z

.field final synthetic zzf:Luee;

.field final synthetic zzg:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g;Luee;JIJZLuee;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzg:Lcom/google/android/gms/measurement/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Luee;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzc:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzd:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zze:Z

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzf:Luee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzg:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Luee;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->I(Luee;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzg:Lcom/google/android/gms/measurement/internal/g;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/g;->y(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzg:Lcom/google/android/gms/measurement/internal/g;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Luee;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzc:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzd:J

    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zze:Z

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/g;->b0(Lcom/google/android/gms/measurement/internal/g;Luee;IJZZ)V

    invoke-static {}, Lsfj;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzg:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lkwg;->u0:Llvg;

    invoke-virtual {v0, v1, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzg:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Luee;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzf:Luee;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/g;->a0(Lcom/google/android/gms/measurement/internal/g;Luee;Luee;)V

    :cond_0
    return-void
.end method
