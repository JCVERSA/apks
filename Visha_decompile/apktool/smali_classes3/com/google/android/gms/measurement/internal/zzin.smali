.class final Lcom/google/android/gms/measurement/internal/zzin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lu2j;

.field final synthetic zzb:Lu2j;

.field final synthetic zzc:J

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/h;Lu2j;Lu2j;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zze:Lcom/google/android/gms/measurement/internal/h;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lu2j;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lu2j;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zze:Lcom/google/android/gms/measurement/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Lu2j;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzb:Lu2j;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzd:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/h;->u(Lcom/google/android/gms/measurement/internal/h;Lu2j;Lu2j;JZLandroid/os/Bundle;)V

    return-void
.end method
