.class public final synthetic Lg02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/NetworkTypeObserver$Listener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg02;->a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    return-void
.end method


# virtual methods
.method public final onNetworkTypeChanged(I)V
    .locals 0

    iget-object p0, p0, Lg02;->a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->a(Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;I)V

    return-void
.end method
