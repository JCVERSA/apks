.class public final synthetic Loj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

.field public final synthetic c:Landroid/media/metrics/PlaybackMetrics;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj6;->b:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iput-object p2, p0, Loj6;->c:Landroid/media/metrics/PlaybackMetrics;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Loj6;->b:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object p0, p0, Loj6;->c:Landroid/media/metrics/PlaybackMetrics;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method
