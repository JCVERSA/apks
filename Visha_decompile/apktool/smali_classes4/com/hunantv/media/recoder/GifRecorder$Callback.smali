.class public interface abstract Lcom/hunantv/media/recoder/GifRecorder$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/recoder/GifRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onEndRecord()V
.end method

.method public abstract onError(IILjava/lang/String;)V
.end method

.method public abstract onInterrupted(IILjava/lang/String;)V
.end method

.method public abstract onMakingGif()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResultGif(Ljava/lang/String;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method
