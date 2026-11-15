.class Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setMgtvPlayerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitlesError(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubtitlesError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->access$200(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->access$300(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-interface {v0, v1, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;->onSetSubtitlesFailed(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    const-wide/32 v0, 0x89544d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x40a

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSubtitlesSuccess(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubtitlesSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->access$000(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->s(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentSubtitleSource()Lcom/mgtv/ssp/play/bean/SubTitleData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubtitlesSuccess name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " language:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->access$100(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;->onSetSubtitlesSuccess(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ontSubtitleList(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ">;",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ontSubtitleList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current subtitle :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "empty"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/ssp/play/bean/SubTitleData;

    new-instance v5, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-direct {v5}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;-><init>()V

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setLanguage(I)V

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getCaptionCountrySimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setCaptionCountrySimpleName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getCaptionSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setCaptionSimpleName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getAreaCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setAreacode(I)V

    if-nez p2, :cond_1

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v6

    invoke-virtual {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v3

    if-ne v6, v3, :cond_2

    invoke-virtual {v5, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    move v2, v4

    :cond_2
    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video Subtitle: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-direct {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;-><init>()V

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setLanguage(I)V

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getCaptionCountrySimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setCaptionCountrySimpleName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getCaptionSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setCaptionSimpleName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getAreaCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setAreacode(I)V

    invoke-virtual {p1, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not find current subtitle in the list,so add into list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->access$400(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->access$500(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-interface {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;->onSubtitlesAvailable(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/util/List;)V

    :cond_5
    return-void
.end method
