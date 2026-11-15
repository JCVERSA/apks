.class public Lcom/transsion/audiotagger/audio/generic/AudioFileModificationAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileModified(Lcom/transsion/audiotagger/audio/AudioFile;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/ModifyVetoException;
        }
    .end annotation

    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public fileWillBeModified(Lcom/transsion/audiotagger/audio/AudioFile;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/ModifyVetoException;
        }
    .end annotation

    return-void
.end method

.method public vetoThrown(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/audio/exceptions/ModifyVetoException;)V
    .locals 0

    return-void
.end method
