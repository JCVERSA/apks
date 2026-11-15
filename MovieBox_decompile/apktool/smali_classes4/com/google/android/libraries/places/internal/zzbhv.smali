.class final Lcom/google/android/libraries/places/internal/zzbhv;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhx;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zza:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zzb:Lcom/google/android/libraries/places/internal/zzbhx;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zzb:Lcom/google/android/libraries/places/internal/zzbhx;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhx;->zza(Lcom/google/android/libraries/places/internal/zzbhx;)Lcom/google/android/libraries/places/internal/zzbft;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zza:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbft;->zze(Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
