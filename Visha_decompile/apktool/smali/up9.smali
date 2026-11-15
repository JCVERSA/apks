.class public final synthetic Lup9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Landroidx/media3/common/util/Clock;


# direct methods
.method public synthetic constructor <init>(JLandroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lup9;->a:J

    iput-object p3, p0, Lup9;->b:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final shouldEvictSample(Ljava/util/Deque;)Z
    .locals 2

    iget-wide v0, p0, Lup9;->a:J

    iget-object p0, p0, Lup9;->b:Landroidx/media3/common/util/Clock;

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->a(JLandroidx/media3/common/util/Clock;Ljava/util/Deque;)Z

    move-result p0

    return p0
.end method
