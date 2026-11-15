.class public interface abstract Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onBrowseEnd()V
.end method

.method public abstract onMediaAdded(ILcom/transsion/tranplayer/Media;)V
.end method

.method public abstract onMediaRemoved(ILcom/transsion/tranplayer/Media;)V
.end method
