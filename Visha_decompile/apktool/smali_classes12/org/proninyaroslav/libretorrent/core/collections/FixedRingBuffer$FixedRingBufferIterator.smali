.class Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedRingBufferIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;->c:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;Lix3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;-><init>(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;->b:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;->c:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;->c:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;->b:I

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
