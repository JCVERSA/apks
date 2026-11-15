.class public interface abstract Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnVideoSizeChangedListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnLongPressListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnProgressChangeListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnTickListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSeekCompleteListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPauseListener;,
        Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;
    }
.end annotation


# static fields
.field public static final IMGOMEDIA_ERROR_500005:I = 0x7a125

.field public static final MEDIA_ERROR_ASYNC_INVALID_FORMAT_SOURCE:I = 0x6acfcd

.field public static final MEDIA_ERROR_INVALID_URL:I = 0x6acfcb

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_DECODER_TYPE_CHANGED:I = 0x5

.field public static final MEDIA_INFO_DOWNLOAD_SPEED:I = 0xaae61

.field public static final MEDIA_INFO_INNER_BASE:I = 0xaae60

.field public static final MEDIA_INFO_RENDERING_START:I = 0x384

.field public static final MEDIA_WARNING_HW_DECODE_FAILED:I = 0x4c4b401

.field public static final MEDIA_WARNING_UNSUPPORT_HW_RENDER_FAILED:I = 0x4c4b402

.field public static final MEDIA_WARNING_UNSUPPORT_HW_RENDER_FAILED_THEN_SUCCESS:I = 0x4c4b403

.field public static final MSG_SWITCH_VQ_COMPLETE_OK:I = 0x0

.field public static final MSG_SWITCH_VQ_INFO_DATA_PREPARED:I = 0x2

.field public static final P2P_WARNING_TASK_NOT_EXIST:I = 0x3938701


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getPlayerVersion()Ljava/lang/String;
.end method

.method public abstract isCompletion()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
