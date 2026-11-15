.class public interface abstract Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBufferListener"
.end annotation


# virtual methods
.method public abstract onBufferUpdate(Ljava/lang/String;)V
.end method

.method public abstract onBuffering(I)V
.end method

.method public abstract onEndBuffer(I)V
.end method

.method public abstract onStartBuffer(I)V
.end method
