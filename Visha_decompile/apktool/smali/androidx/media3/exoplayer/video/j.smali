.class public final synthetic Landroidx/media3/exoplayer/video/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;->a()Landroidx/media3/common/VideoFrameProcessor$Factory;

    move-result-object p0

    return-object p0
.end method
