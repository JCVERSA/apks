.class public interface abstract Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager$ICacheAvailableListener;
    }
.end annotation


# virtual methods
.method public abstract cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
.end method

.method public abstract clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract doCacheLogic(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public abstract hadCached()Z
.end method

.method public abstract release()V
.end method

.method public abstract setCacheAvailableListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager$ICacheAvailableListener;)V
.end method
