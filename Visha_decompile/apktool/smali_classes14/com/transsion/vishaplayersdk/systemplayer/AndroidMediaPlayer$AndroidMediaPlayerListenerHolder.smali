.class Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidMediaPlayerListenerHolder"
.end annotation


# instance fields
.field public final mWeakMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCompletion"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->access$400(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {p0, p2, p3}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->access$100(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video start play "

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    const/16 p2, 0x3f6

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnVideoFirstFrameShow()V

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {p0, p2, p3}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->access$000(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPrepared"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnPrepared()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSeekComplete"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->access$300(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;)V

    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;

    invoke-virtual {p2}, Landroid/media/TimedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->access$500(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->access$200(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;IIII)V

    return-void
.end method
