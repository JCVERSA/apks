.class final Lcom/google/android/gms/internal/ads/zzfkm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/c6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkm;->zza:Lcom/google/android/gms/internal/ads/c6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkm;->zza:Lcom/google/android/gms/internal/ads/c6;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c6;->a(Lcom/google/android/gms/internal/ads/c6;)F

    move-result v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c6;->b(Lcom/google/android/gms/internal/ads/c6;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c6;->e(Lcom/google/android/gms/internal/ads/c6;)Livh;

    move-result-object p0

    invoke-virtual {p0, v0}, Livh;->d(F)V

    :cond_0
    return-void
.end method
