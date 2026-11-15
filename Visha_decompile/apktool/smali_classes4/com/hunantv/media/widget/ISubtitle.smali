.class public interface abstract Lcom/hunantv/media/widget/ISubtitle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;
    }
.end annotation


# virtual methods
.method public abstract enableSubtitle(Z)V
.end method

.method public abstract getSubtitleSource()Lcom/hunantv/media/player/subtitle/SubtitleSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeSubtitleSource()V
.end method

.method public abstract setSubtitleCallback(Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;)V
.end method

.method public abstract setSubtitleConfig(Lcom/hunantv/media/player/subtitle/SubtitleConfig;)V
.end method

.method public abstract setSubtitleSource(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
.end method
