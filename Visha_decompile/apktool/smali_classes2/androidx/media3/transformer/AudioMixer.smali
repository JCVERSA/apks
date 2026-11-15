.class public interface abstract Landroidx/media3/transformer/AudioMixer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioMixer$Factory;
    }
.end annotation


# virtual methods
.method public abstract addSource(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation
.end method

.method public abstract configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation
.end method

.method public abstract getOutput()Ljava/nio/ByteBuffer;
.end method

.method public abstract hasSource(I)Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract queueInput(ILjava/nio/ByteBuffer;)V
.end method

.method public abstract removeSource(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setEndTimeUs(J)V
.end method

.method public abstract setSourceVolume(IF)V
.end method

.method public abstract supportsSourceAudioFormat(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
.end method
