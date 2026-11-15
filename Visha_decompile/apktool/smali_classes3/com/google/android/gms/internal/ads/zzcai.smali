.class final Lcom/google/android/gms/internal/ads/zzcai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcak;->i(Lcom/google/android/gms/internal/ads/zzcak;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object v0

    invoke-interface {v0}, Lqgf;->zzg()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcak;->g(Lcom/google/android/gms/internal/ads/zzcak;Z)V

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object p0

    invoke-interface {p0}, Lqgf;->zze()V

    :cond_1
    return-void
.end method
