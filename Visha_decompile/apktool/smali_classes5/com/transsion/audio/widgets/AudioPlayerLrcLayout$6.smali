.class Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/lyrics/LrcSearcher$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchLyrics(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

.field final synthetic val$needToast:Z


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->val$needToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteSearchBegin()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    return-void
.end method

.method public searchFailed(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->v(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lr0a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid media item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current media item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->v(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioPlayerLrcLayout"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "vd_audio_lyrics_statue"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnz5;->c(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateEmptyView(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->y(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->val$needToast:Z

    invoke-static {p1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->G(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    return-void
.end method

.method public searchSuccess(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/audio/lyrics/bean/LrcRow;",
            ">;",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->v(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lr0a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AudioPlayerLrcLayout"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid media item: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current media item: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->v(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->x(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p2, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->B(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    const-string p2, "mark vd_audio_lyrics_statue: "

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "vd_audio_lyrics_statue"

    invoke-static {p2, v0}, Lnz5;->c(Ljava/lang/String;I)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->D(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->F(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateEmptyView(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateEmptyView(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;->val$needToast:Z

    invoke-static {p1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->G(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    :goto_0
    return-void
.end method
