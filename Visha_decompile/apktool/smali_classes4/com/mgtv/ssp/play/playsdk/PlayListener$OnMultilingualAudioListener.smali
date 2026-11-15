.class public interface abstract Lcom/mgtv/ssp/play/playsdk/PlayListener$OnMultilingualAudioListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/play/playsdk/PlayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMultilingualAudioListener"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/MultiAudioInfo;",
            ">;)V"
        }
    .end annotation
.end method
