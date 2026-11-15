.class public interface abstract Lcom/hunantv/media/source/IImgoCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/source/IImgoCache$TaskCallback;,
        Lcom/hunantv/media/source/IImgoCache$ExtraInfo;
    }
.end annotation


# virtual methods
.method public abstract cache(Lcom/hunantv/media/source/CacheTask;)V
.end method

.method public abstract cache(Lcom/hunantv/media/source/CacheTask;Z)V
.end method

.method public abstract cancel(Lcom/hunantv/media/source/CacheTask;)V
.end method

.method public abstract getExtraInfo()Lcom/hunantv/media/source/IImgoCache$ExtraInfo;
.end method

.method public abstract release()V
.end method

.method public abstract setTaskCallback(Lcom/hunantv/media/source/IImgoCache$TaskCallback;)V
.end method
