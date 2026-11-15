.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;,
        Lcom/google/android/exoplayer2/upstream/cache/Cache$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lyp0;)V
.end method

.method public abstract b(Lyp0;)V
.end method

.method public abstract c(Ljava/lang/String;Lzg1;)V
.end method

.method public abstract commitFile(Ljava/io/File;J)V
.end method

.method public abstract getContentMetadata(Ljava/lang/String;)Lyg1;
.end method

.method public abstract startFile(Ljava/lang/String;JJ)Ljava/io/File;
.end method

.method public abstract startReadWrite(Ljava/lang/String;JJ)Lyp0;
.end method

.method public abstract startReadWriteNonBlocking(Ljava/lang/String;JJ)Lyp0;
.end method
