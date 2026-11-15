.class public interface abstract Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/play/playsdk/PlayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSubtitlesListener"
.end annotation


# virtual methods
.method public abstract onSubtitlesError(Ljava/lang/String;)V
.end method

.method public abstract onSubtitlesSuccess(Ljava/lang/String;)V
.end method

.method public abstract ontSubtitleList(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V
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
.end method
