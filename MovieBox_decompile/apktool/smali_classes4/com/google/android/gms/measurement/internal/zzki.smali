.class final Lcom/google/android/gms/measurement/internal/zzki;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:J

.field private final synthetic zzd:Landroid/os/Bundle;

.field private final synthetic zze:Z

.field private final synthetic zzf:Z

.field private final synthetic zzg:Z

.field private final synthetic zzh:Ljava/lang/String;

.field private final synthetic zzi:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:J

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzd:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzki;->zze:Z

    .line 10
    .line 11
    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzf:Z

    .line 12
    .line 13
    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzg:Z

    .line 14
    .line 15
    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzh:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzi:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzi:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:J

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzd:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzki;->zze:Z

    .line 12
    .line 13
    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzf:Z

    .line 14
    .line 15
    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzg:Z

    .line 16
    .line 17
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzh:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
