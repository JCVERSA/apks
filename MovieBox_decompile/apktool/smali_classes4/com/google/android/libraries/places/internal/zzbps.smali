.class final Lcom/google/android/libraries/places/internal/zzbps;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpv;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbps;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbps;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpv;->zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbpq;->zzb()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbps;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpv;->zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpr;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lcom/google/android/libraries/places/internal/zzbpr;-><init>(Lcom/google/android/libraries/places/internal/zzbpv;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbpq;->zzc(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
