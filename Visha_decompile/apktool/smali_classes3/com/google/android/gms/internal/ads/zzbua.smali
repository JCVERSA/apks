.class public final Lcom/google/android/gms/internal/ads/zzbua;
.super Lcom/google/android/gms/internal/ads/zzbub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbub;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbty;-><init>(Lxaf;)V

    const-string v1, "FlagsAccessedBeforeInitialized"

    invoke-virtual {p0, v0, v1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
