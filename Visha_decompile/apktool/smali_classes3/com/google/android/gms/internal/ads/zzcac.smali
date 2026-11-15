.class final Lcom/google/android/gms/internal/ads/zzcac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/media/MediaPlayer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcac;->zza:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcac;->zzb:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcac;->zzb:Lcom/google/android/gms/internal/ads/zzcak;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcac;->zza:Landroid/media/MediaPlayer;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcak;->h(Lcom/google/android/gms/internal/ads/zzcak;Landroid/media/MediaPlayer;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->f(Lcom/google/android/gms/internal/ads/zzcak;)Lqgf;

    move-result-object p0

    invoke-interface {p0}, Lqgf;->zzf()V

    :cond_0
    return-void
.end method
