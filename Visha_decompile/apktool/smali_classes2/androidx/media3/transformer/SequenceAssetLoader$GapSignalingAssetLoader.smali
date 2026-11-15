.class final Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GapSignalingAssetLoader"
.end annotation


# static fields
.field private static final OUTPUT_FORMAT_RETRY_DELAY_MS:I = 0xa


# instance fields
.field private final decodedFormat:Landroidx/media3/common/Format;

.field private final durationUs:J

.field private outputtedFormat:Z

.field final synthetic this$0:Landroidx/media3/transformer/SequenceAssetLoader;

.field private final trackFormat:Landroidx/media3/common/Format;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->durationUs:J

    .line 4
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string p2, "audio/raw"

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->trackFormat:Landroidx/media3/common/Format;

    .line 5
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 6
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const p2, 0xac44

    .line 7
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 8
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->decodedFormat:Landroidx/media3/common/Format;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader;JLandroidx/media3/transformer/SequenceAssetLoader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;J)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputFormatToSequenceAssetLoader()V

    return-void
.end method

.method private outputFormatToSequenceAssetLoader()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputtedFormat:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->decodedFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputtedFormat:Z

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->access$1700(Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$600(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/f0;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/f0;-><init>(Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->onError(Landroidx/media3/transformer/ExportException;)V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->onError(Landroidx/media3/transformer/ExportException;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getDecoderNames()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputtedFormat:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x63

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    const/4 p0, 0x2

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-wide v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->durationUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/SequenceAssetLoader;->onDurationUs(J)V

    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->onTrackCount(I)V

    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->trackFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/SequenceAssetLoader;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputFormatToSequenceAssetLoader()V

    return-void
.end method
