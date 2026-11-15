.class public interface abstract Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isApplicable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z
.end method

.method public abstract modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
