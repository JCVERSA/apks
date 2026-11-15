.class public final synthetic Lvl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/Consumer;

.field public final synthetic c:Landroidx/media3/exoplayer/source/MediaSourceEventListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvl6;->b:Landroidx/media3/common/util/Consumer;

    iput-object p2, p0, Lvl6;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvl6;->b:Landroidx/media3/common/util/Consumer;

    iget-object p0, p0, Lvl6;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method
