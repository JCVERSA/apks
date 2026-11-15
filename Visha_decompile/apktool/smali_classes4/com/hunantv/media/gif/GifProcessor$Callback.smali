.class public interface abstract Lcom/hunantv/media/gif/GifProcessor$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/gif/GifProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure(ILcom/hunantv/media/gif/GifProcessor$Task;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lcom/hunantv/media/gif/GifProcessor$Task;)V
.end method
