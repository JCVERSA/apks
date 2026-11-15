.class public final synthetic Lvi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/NetworkTypeObserver$Listener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvi3;->a:Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;

    return-void
.end method


# virtual methods
.method public final onNetworkTypeChanged(I)V
    .locals 0

    iget-object p0, p0, Lvi3;->a:Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;->a(Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;I)V

    return-void
.end method
