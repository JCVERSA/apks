.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/16 v1, 0xafa

    if-eq p1, v1, :cond_e

    const/16 v1, 0xb04

    if-eq p1, v1, :cond_d

    const/16 v1, 0xb0e

    if-eq p1, v1, :cond_c

    const/16 v1, 0x2711

    if-eq p1, v1, :cond_b

    const v1, 0x30d41

    const/4 v2, 0x0

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    const/16 v3, 0x384

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_10

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_2

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown info code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extra is "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream format type is "

    goto :goto_0

    :pswitch_1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acodec reconfigure ret is "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accurate seek complete,time is "

    goto :goto_1

    :pswitch_3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data source type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDataSourceType()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto/16 :goto_7

    :pswitch_4
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A new set of metadata is available, extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x322

    goto/16 :goto_7

    :pswitch_5
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The stream not seekable status, extra is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    if-ne p2, v0, :cond_0

    invoke-static {p1, v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1402(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Z)Z

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "The stream is live stream,can not seekable "

    :goto_3
    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_0
    invoke-static {p1, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1402(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Z)Z

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "The stream is not live stream,can seekable "

    goto :goto_3

    :goto_4
    const/16 p1, 0x321

    goto/16 :goto_7

    :pswitch_6
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad interleaving of media file, audio/video are not well-formed, extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x320

    goto/16 :goto_7

    :pswitch_7
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer end speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getDLSpeedFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2be

    goto/16 :goto_7

    :pswitch_8
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer start speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getDLSpeedFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2bd

    goto/16 :goto_7

    :pswitch_9
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s too complex for the decoder, extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2bc

    goto/16 :goto_7

    :cond_1
    const p1, 0xaae61

    goto/16 :goto_7

    :cond_2
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1602(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Z)Z

    goto :goto_5

    :cond_3
    if-ne p2, v0, :cond_4

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1, v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1602(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Z)Z

    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video decoder open,extra is "

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio decode succeeded, start rendering"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isOnlyAudioMode()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1500(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1500(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    move-result-object p0

    invoke-interface {p0, v3, p2}, Lcom/hunantv/media/widget/IVideoView$OnInfoListener;->onInfo(II)Z

    :cond_6
    return v0

    :cond_7
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "video decode succeeded, start rendering"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->onVideoRenderStart()V

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1500(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1500(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    move-result-object p0

    invoke-interface {p0, v3, p2}, Lcom/hunantv/media/widget/IVideoView$OnInfoListener;->onInfo(II)Z

    :cond_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    if-ne p2, v0, :cond_a

    invoke-static {v1, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1602(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Z)Z

    goto :goto_6

    :cond_a
    invoke-static {v1, v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1602(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Z)Z

    :goto_6
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1700(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->convertRender(I)V

    goto/16 :goto_7

    :cond_b
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video rotation changed,extra(degree) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1, p2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1802(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    goto/16 :goto_7

    :cond_c
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_PLAYBACK_STATE_CHANGED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1900(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1900(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;->onUpdateStatus()V

    goto :goto_7

    :cond_d
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    packed-switch p2, :pswitch_data_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare av data: "

    goto/16 :goto_1

    :pswitch_a
    const-string v2, "prepare av data: audio decoded start"

    goto/16 :goto_2

    :pswitch_b
    const-string v2, "prepare av data: video decoded start"

    goto/16 :goto_2

    :pswitch_c
    const-string v2, "prepare av data: av stream component open"

    goto/16 :goto_2

    :pswitch_d
    const-string v2, "prepare av data: find steam info"

    goto/16 :goto_2

    :pswitch_e
    const-string v2, "prepare av data: open input steam"

    goto/16 :goto_2

    :cond_e
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video fps is "

    goto/16 :goto_1

    :cond_f
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown info, extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_10
    :goto_7
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1500(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$6;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1500(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnInfoListener;->onInfo(II)Z

    :cond_11
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xaf3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14051
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
