.class Lcom/hunantv/media/widget/debug/DebugPanel$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->updateBaseInfoText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDrmSession()Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***********************DRM\u4fe1\u606f******************\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u7247\u6e90\u9009\u62e9DRM\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hunantv/media/drm/IDrmSession;->getDrmt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->drmt2DrmTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "n"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u5907\u662f\u5426\u652f\u6301\uff1awidevine\uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->isWidevineSupport()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "***********************\u89e3\u7801\u5668\u6027\u80fd\u5217\u8868******************\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getHardWareperformance(Z)V

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v4, v4, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->codecName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v6, v6, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->performance:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v7, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MimeType:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CodecName:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Performance:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hdr:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getScreenPerformance(Landroid/content/Context;)Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5c4f\u5e55\u6027\u80fd:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*******************************************************\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object v1, v2, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    invoke-static {v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v4, v3, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "TAG:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v4}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v4

    invoke-interface {v4}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nURL:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v4}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v4

    invoke-interface {v4}, Lcom/hunantv/media/widget/IVideoView;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v4}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v4

    invoke-interface {v4}, Lcom/hunantv/media/widget/IVideoView;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n\u89e3\u7801\u5668(OMX\u5f00\u5934\u4e3a\u786c\u89e3):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentVideoDecoderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u5206\u8fa8\u7387:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nFPS:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoFPS()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\n\u8d77\u64ad\u603b\u8017\u65f6:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb7

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\u8d77\u64adt1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb1

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\u8d77\u64adt2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb2

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\u8d77\u64adt3:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb3

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\u8d77\u64adt4:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb4

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\u8d77\u64adt5:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb5

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\u8d77\u64adt6:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4fb6

    invoke-virtual {v1, v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMediaInfo()Lcom/hunantv/media/player/f;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v4, v3, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mediaInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    const-string v1, "\u64ad\u653e\u5668\u5c1a\u672a\u51c6\u5907\u597d"

    iput-object v1, v0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$7;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
