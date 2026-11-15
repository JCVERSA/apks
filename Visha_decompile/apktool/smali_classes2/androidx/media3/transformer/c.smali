.class public final synthetic Landroidx/media3/transformer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/transformer/c;->a:I

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget p0, p0, Landroidx/media3/transformer/c;->a:I

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->f(ILandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
