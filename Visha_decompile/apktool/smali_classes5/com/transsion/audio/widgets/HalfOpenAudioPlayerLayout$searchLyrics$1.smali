.class public final Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/lyrics/LrcSearcher$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->searchLyrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J)\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\n\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1",
        "Lcom/transsion/audio/lyrics/LrcSearcher$i;",
        "",
        "Lcom/transsion/audio/lyrics/bean/LrcRow;",
        "lrcRows",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "audioItem",
        "Lzfb;",
        "searchSuccess",
        "(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "searchFailed",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onRemoteSearchBegin()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/lyrics/LrcSearcher$i;->onRemoteSearchBegin()V

    return-void
.end method

.method public searchFailed(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMLrcView$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mLrcView"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setMIsLoadingLyric$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMIsLrcMode$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateEmptyView(Z)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateLoadingView()V

    :cond_1
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

    iget-object p2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMLrcView$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "mLrcView"

    if-nez p2, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setMIsLoadingLyric$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMIsLrcMode$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateEmptyView(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateLoadingView()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMLrcView$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayManager$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    :cond_2
    return-void
.end method
