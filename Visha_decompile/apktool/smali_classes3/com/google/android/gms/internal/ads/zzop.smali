.class public final synthetic Lcom/google/android/gms/internal/ads/zzop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Llfj;

.field public final synthetic zzb:Landroid/media/metrics/TrackChangeEvent;


# direct methods
.method public synthetic constructor <init>(Llfj;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzop;->zza:Llfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzb:Landroid/media/metrics/TrackChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zza:Llfj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzb:Landroid/media/metrics/TrackChangeEvent;

    invoke-static {v0, p0}, Llfj;->y(Llfj;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method
