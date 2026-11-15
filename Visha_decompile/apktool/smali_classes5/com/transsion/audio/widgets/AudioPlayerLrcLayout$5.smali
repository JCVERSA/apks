.class Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/lyrics/LrcSearcher$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchRemoteLyrics(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

.field final synthetic val$hasLrcBeforeSearch:Z


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->val$hasLrcBeforeSearch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteSearchBegin()V
    .locals 0

    return-void
.end method

.method public searchFailed(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

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

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

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
    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->val$hasLrcBeforeSearch:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/audio/R$string;->no_paired_online_lyric:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->C(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchLyrics(Z)V

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

    iget-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->F(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateEmptyView(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    return-void
.end method
