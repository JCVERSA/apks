.class public interface abstract Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/IVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwitchSmoothSourceListener"
.end annotation


# static fields
.field public static final SMOOTH_SWITCH_INFO_SWITCHING:I = 0x3


# virtual methods
.method public abstract onSwitchSmoothSourceError(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
.end method

.method public abstract onSwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
.end method

.method public abstract onSwitchSmoothSourceInfo(Lcom/hunantv/media/player/smooth/SmoothMediaSource;I)V
.end method

.method public abstract onSwitchSmoothSourceSuccess(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
.end method

.method public abstract onSwitchSmoothSourceWillUpdate(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Z
.end method
