.class public interface abstract Lcom/hunantv/media/gif/GifFramesProducer$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/gif/GifFramesProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(II)V
.end method

.method public abstract onImage(ILjava/lang/String;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess()V
.end method
