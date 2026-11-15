.class public final synthetic Lcom/google/android/gms/internal/ads/zzot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Llfj;

.field public final synthetic zzb:Landroid/media/metrics/PlaybackStateEvent;


# direct methods
.method public synthetic constructor <init>(Llfj;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zza:Llfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzot;->zzb:Landroid/media/metrics/PlaybackStateEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzot;->zza:Llfj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzb:Landroid/media/metrics/PlaybackStateEvent;

    invoke-static {v0, p0}, Llfj;->v(Llfj;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method
