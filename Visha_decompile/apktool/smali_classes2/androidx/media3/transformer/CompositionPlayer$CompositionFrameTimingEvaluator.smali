.class final Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositionFrameTimingEvaluator"
.end annotation


# static fields
.field private static final FRAME_LATE_THRESHOLD_US:J = -0x7530L

.field private static final FRAME_RELEASE_THRESHOLD_US:J = 0x186a0L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDropFrame(JJZ)Z
    .locals 0

    const-wide/16 p3, -0x7530

    cmp-long p0, p1, p3

    if-gez p0, :cond_0

    if-nez p5, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldForceReleaseFrame(JJ)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-wide/32 p0, 0x186a0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldIgnoreFrame(JJJZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
