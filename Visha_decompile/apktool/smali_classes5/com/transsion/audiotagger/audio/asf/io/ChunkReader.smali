.class public interface abstract Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canFail()Z
.end method

.method public abstract getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
.end method

.method public abstract read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
