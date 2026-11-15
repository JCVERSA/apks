.class final Lcom/google/android/gms/internal/ads/zzfke;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/util/Timer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/b6;

.field final synthetic zzc:Lojf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/b6;Lojf;Ljava/util/Timer;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lojf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Ljava/util/Timer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/b6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/b6;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/b6;->d(Lcom/google/android/gms/internal/ads/b6;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lojf;

    iget-object v0, v0, Lojf;->a:Lcom/google/android/gms/internal/ads/zzcfd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfd;->zzaI(Lcom/google/android/gms/internal/ads/zzcfd;Z)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
