.class public final synthetic Lcom/google/android/gms/internal/ads/zzor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Llfj;

.field public final synthetic zzb:Landroid/media/metrics/PlaybackErrorEvent;


# direct methods
.method public synthetic constructor <init>(Llfj;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Llfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Landroid/media/metrics/PlaybackErrorEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Llfj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Landroid/media/metrics/PlaybackErrorEvent;

    invoke-static {v0, p0}, Llfj;->w(Llfj;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method
