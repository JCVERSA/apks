.class public final synthetic Landroidx/media3/transformer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/transformer/d;->a:J

    iput-wide p3, p0, Landroidx/media3/transformer/d;->b:J

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/transformer/d;->a:J

    iget-wide v2, p0, Landroidx/media3/transformer/d;->b:J

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/transformer/BufferingVideoSink;->c(JJLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
