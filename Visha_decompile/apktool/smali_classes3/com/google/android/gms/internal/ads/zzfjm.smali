.class final Lcom/google/android/gms/internal/ads/zzfjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/z5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zza:Lcom/google/android/gms/internal/ads/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zza:Lcom/google/android/gms/internal/ads/z5;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/z5;->m(Lcom/google/android/gms/internal/ads/z5;)Lbuh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/z5;->m(Lcom/google/android/gms/internal/ads/z5;)Lbuh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z5;->e:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/z5;->o(Lcom/google/android/gms/internal/ads/z5;)Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lbuh;->d(Lcom/google/android/gms/ads/AdFormat;J)V

    :cond_0
    return-void
.end method
