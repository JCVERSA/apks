.class public final synthetic Landroidx/media3/transformer/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/p;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/p;->a:Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->l(Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
