.class public interface abstract Lcom/hunantv/media/source/IImgoQueueCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/source/IImgoCache;


# virtual methods
.method public abstract getPrepareQueue()Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/hunantv/media/source/CacheTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hunantv/media/source/CacheTask;",
            ">;"
        }
    .end annotation
.end method
