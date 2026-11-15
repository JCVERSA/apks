.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnSubtitlesCallback:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnSubtitlesCallback:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;->onSuccess(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_0
    return-void
.end method
