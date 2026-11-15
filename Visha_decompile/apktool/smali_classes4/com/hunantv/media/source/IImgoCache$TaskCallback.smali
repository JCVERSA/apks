.class public interface abstract Lcom/hunantv/media/source/IImgoCache$TaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/IImgoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskCallback"
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/hunantv/media/source/CacheTask;)V
.end method

.method public abstract onFinish(Lcom/hunantv/media/source/CacheTask;)V
.end method

.method public abstract onStart(Lcom/hunantv/media/source/CacheTask;)V
.end method

.method public abstract onSuccess(Lcom/hunantv/media/source/CacheTask;)V
.end method
