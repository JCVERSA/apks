.class public interface abstract Lcom/transsion/audio/lyrics/LrcSearcher$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public onRemoteSearchBegin()V
    .locals 0

    return-void
.end method

.method public abstract searchFailed(Lcom/transsion/dbdata/beans/media/AudioItem;)V
.end method

.method public abstract searchSuccess(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V
.end method
