.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfd;

.field public final synthetic zzb:Laxg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfd;Laxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zza:Lcom/google/android/gms/internal/ads/zzcfd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzb:Laxg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lojf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zza:Lcom/google/android/gms/internal/ads/zzcfd;

    invoke-direct {v0, v1}, Lojf;-><init>(Lcom/google/android/gms/internal/ads/zzcfd;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzb:Laxg;

    invoke-virtual {p0, v0}, Laxg;->f(Lojf;)V

    return-void
.end method
