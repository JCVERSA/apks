.class public interface abstract Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fileModified(Lcom/transsion/audiotagger/audio/AudioFile;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/ModifyVetoException;
        }
    .end annotation
.end method

.method public abstract fileOperationFinished(Ljava/io/File;)V
.end method

.method public abstract fileWillBeModified(Lcom/transsion/audiotagger/audio/AudioFile;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/ModifyVetoException;
        }
    .end annotation
.end method

.method public abstract vetoThrown(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/audio/exceptions/ModifyVetoException;)V
.end method
