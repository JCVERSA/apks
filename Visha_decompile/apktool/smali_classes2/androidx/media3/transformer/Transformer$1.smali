.class Landroidx/media3/transformer/Transformer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj94;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/Transformer;->remuxProcessedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj94;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/Transformer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p0}, Landroidx/media3/transformer/Transformer;->access$2500(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public onSuccess(Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-wide v2, v1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v2, v1}, Landroidx/media3/transformer/Transformer;->access$2602(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    .line 4
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    new-instance v10, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v3, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 5
    invoke-static {v3}, Landroidx/media3/transformer/Transformer;->access$2800(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 6
    invoke-static {v3}, Landroidx/media3/transformer/Transformer;->access$1700(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Muxer$Factory;

    move-result-object v5

    iget-object v3, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 7
    invoke-static {v3}, Landroidx/media3/transformer/Transformer;->access$2900(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, v1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->videoFormat:Landroidx/media3/common/Format;

    const/4 v7, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media3/transformer/MuxerWrapper;-><init>(Ljava/lang/String;Landroidx/media3/transformer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V

    .line 8
    invoke-static {v2, v10}, Landroidx/media3/transformer/Transformer;->access$2702(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;

    .line 9
    iget-object v11, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 10
    invoke-static {v11}, Landroidx/media3/transformer/Transformer;->access$3000(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    .line 11
    invoke-static {v2, v3, v4}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->createVideoOnlyComposition(Ljava/lang/String;J)Landroidx/media3/transformer/Composition;

    move-result-object v12

    iget-object v1, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 12
    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$2700(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v0, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 13
    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$2900(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;

    move-result-object v14

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    .line 14
    invoke-static/range {v11 .. v17}, Landroidx/media3/transformer/Transformer;->access$3100(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void

    .line 15
    :cond_1
    :goto_0
    iget-object v0, v0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$2500(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/Transformer$1;->onSuccess(Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)V

    return-void
.end method
