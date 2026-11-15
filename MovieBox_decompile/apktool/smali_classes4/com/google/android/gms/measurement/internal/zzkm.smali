.class final Lcom/google/android/gms/measurement/internal/zzkm;
.super Lcom/google/android/gms/measurement/internal/zzav;
.source "source.java"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzjc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzah()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Lcom/google/android/gms/measurement/internal/zzjq;)Lcom/google/android/gms/measurement/internal/zzav;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v1, 0x7d0

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
