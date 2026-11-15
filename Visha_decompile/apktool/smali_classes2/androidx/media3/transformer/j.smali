.class public final synthetic Landroidx/media3/transformer/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/transformer/j;->a:F

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget p0, p0, Landroidx/media3/transformer/j;->a:F

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->b(FLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
