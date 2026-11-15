.class final Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/PlaybackAudioGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SinkController"
.end annotation


# instance fields
.field private final isSequencePrimary:Z

.field final synthetic this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->isSequencePrimary:Z

    invoke-static {p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$008(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)I

    return-void
.end method


# virtual methods
.method public getAudioGraphInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->isSequencePrimary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$100(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$200(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/transformer/AudioGraph;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/AudioGraph;->registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {p2}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$308(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)I

    iget-boolean p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->isSequencePrimary:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$102(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Z)Z

    :cond_1
    return-object p1
.end method

.method public getCurrentPositionUs(Z)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {p0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$400(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/exoplayer/audio/AudioSink;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide p0

    return-wide p0
.end method
