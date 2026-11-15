.class public final synthetic Landroidx/media3/transformer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/common/Format;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Format;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/transformer/g;->a:I

    iput-object p2, p0, Landroidx/media3/transformer/g;->b:Landroidx/media3/common/Format;

    iput-object p3, p0, Landroidx/media3/transformer/g;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 2

    iget v0, p0, Landroidx/media3/transformer/g;->a:I

    iget-object v1, p0, Landroidx/media3/transformer/g;->b:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/transformer/g;->c:Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->i(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
