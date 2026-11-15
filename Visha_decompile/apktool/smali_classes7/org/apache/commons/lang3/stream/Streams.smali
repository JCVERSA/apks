.class public Lorg/apache/commons/lang3/stream/Streams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/stream/Streams$FailableStream;,
        Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stream(Ljava/util/Collection;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TO;>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/stream/Streams;->stream(Ljava/util/stream/Stream;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TO;>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static toArray(Ljava/lang/Class;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TO;>;)",
            "Ljava/util/stream/Collector<",
            "TO;*[TO;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
