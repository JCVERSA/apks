.class Lcom/hunantv/media/player/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/hunantv/media/player/b;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/b;Lcom/hunantv/media/player/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/a;->notifyOnBufferingUpdate(I)V

    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    invoke-static {p0, p2}, Lcom/hunantv/media/player/b;->a(Lcom/hunantv/media/player/b;I)I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/hunantv/media/player/a;->notifyOnCompletion(II)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    invoke-virtual {p0, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnError(II)Z

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
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    invoke-virtual {p0, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnInfo(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->notifyOnPrepared()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/hunantv/media/player/a;->notifyOnSeekComplete(II)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/b$a;->b:Lcom/hunantv/media/player/b;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1, p1}, Lcom/hunantv/media/player/a;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method
