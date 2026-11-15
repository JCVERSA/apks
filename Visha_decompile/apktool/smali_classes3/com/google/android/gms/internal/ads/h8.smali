.class public final Lcom/google/android/gms/internal/ads/h8;
.super Lcom/google/android/gms/internal/ads/f8;
.source "SourceFile"


# instance fields
.field public j:Lcom/google/android/gms/internal/ads/zzgbe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwr;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/f8;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgbd;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzgbd;-><init>(Lcom/google/android/gms/internal/ads/h8;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h8;->j:Lcom/google/android/gms/internal/ads/zzgbe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f8;->r()V

    return-void
.end method

.method public static bridge synthetic B(Lcom/google/android/gms/internal/ads/h8;Lcom/google/android/gms/internal/ads/zzgbe;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h8;->j:Lcom/google/android/gms/internal/ads/zzgbe;

    return-void
.end method


# virtual methods
.method public final p(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h8;->j:Lcom/google/android/gms/internal/ads/zzgbe;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgbe;->zzf()V

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->s(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h8;->j:Lcom/google/android/gms/internal/ads/zzgbe;

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h8;->j:Lcom/google/android/gms/internal/ads/zzgbe;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgca;->zzh()V

    :cond_0
    return-void
.end method
