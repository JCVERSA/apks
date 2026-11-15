.class public final synthetic Landroidx/media3/transformer/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Landroidx/media3/common/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/h;->a:Landroid/view/Surface;

    iput-object p2, p0, Landroidx/media3/transformer/h;->b:Landroidx/media3/common/util/Size;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/h;->a:Landroid/view/Surface;

    iget-object p0, p0, Landroidx/media3/transformer/h;->b:Landroidx/media3/common/util/Size;

    invoke-static {v0, p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->g(Landroid/view/Surface;Landroidx/media3/common/util/Size;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
