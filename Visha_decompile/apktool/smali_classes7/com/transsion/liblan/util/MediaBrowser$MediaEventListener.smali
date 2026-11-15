.class public interface abstract Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaEventListener"
.end annotation


# virtual methods
.method public abstract onBrowseEnd()V
.end method

.method public abstract onMediaAdded(ILcom/transsion/liblan/interfaces/ITranMedia;)V
.end method

.method public abstract onMediaRemoved(ILcom/transsion/liblan/interfaces/ITranMedia;)V
.end method
