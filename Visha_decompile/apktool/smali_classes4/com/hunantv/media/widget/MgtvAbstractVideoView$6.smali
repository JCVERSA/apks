.class Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getErrorResult()Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    move-result-object v0

    iget v0, v0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;->code:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getErrorResult()Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;->code:I

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onSuccess(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_0
    return-void
.end method
