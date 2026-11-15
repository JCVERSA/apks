.class Lcom/hunantv/media/widget/MgtvAudioView$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAudioView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAudioView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordVideoErr(II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordVideoErr what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4500(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4500(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnRecordListener;->onRecordError(II)V

    :cond_0
    return-void
.end method

.method public onRecordVideoInfo(II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordVideoInfo what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4500(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4500(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView$OnRecordListener;->onRecordStop()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4500(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4600(Lcom/hunantv/media/widget/MgtvAudioView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView$OnRecordListener;->onRecordStart(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$16;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4500(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnRecordListener;->onRecordInfo(II)V

    :cond_2
    return-void
.end method
