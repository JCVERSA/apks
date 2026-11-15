.class final Lcom/google/android/gms/measurement/internal/zznp;
.super Lcom/google/android/gms/measurement/internal/zzav;
.source "source.java"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zznq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznq;Lcom/google/android/gms/measurement/internal/zzjc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Starting upload from DelayedRunnable"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzw()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
