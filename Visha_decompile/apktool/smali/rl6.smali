.class public final synthetic Lrl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic b:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic c:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrl6;->a:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lrl6;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lrl6;->c:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput-object p4, p0, Lrl6;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lrl6;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lrl6;->a:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lrl6;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lrl6;->c:Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v3, p0, Lrl6;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Lrl6;->e:Z

    move-object v5, p1

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method
