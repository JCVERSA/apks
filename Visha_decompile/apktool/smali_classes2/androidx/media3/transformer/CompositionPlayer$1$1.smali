.class Landroidx/media3/transformer/CompositionPlayer$1$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/CompositionPlayer$1;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media3/transformer/CompositionPlayer$1;

.field final synthetic val$newTimeline:Landroidx/media3/common/Timeline;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/CompositionPlayer$1;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$1$1;->this$1:Landroidx/media3/transformer/CompositionPlayer$1;

    iput-object p3, p0, Landroidx/media3/transformer/CompositionPlayer$1$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$1$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$1$1;->this$1:Landroidx/media3/transformer/CompositionPlayer$1;

    iget-wide p2, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$durationUs:J

    iput-wide p2, p1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    return-object p1
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$1$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$1$1;->this$1:Landroidx/media3/transformer/CompositionPlayer$1;

    iget-wide p2, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$durationUs:J

    iput-wide p2, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    return-object p1
.end method
