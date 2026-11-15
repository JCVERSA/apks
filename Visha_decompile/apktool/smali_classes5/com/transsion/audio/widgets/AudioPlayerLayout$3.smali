.class Lcom/transsion/audio/widgets/AudioPlayerLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceChanged "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioPlayerLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->r1(Z)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->o1(Landroid/view/SurfaceHolder;Z)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->r1(Z)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->o1(Landroid/view/SurfaceHolder;Z)V

    :cond_0
    return-void
.end method
