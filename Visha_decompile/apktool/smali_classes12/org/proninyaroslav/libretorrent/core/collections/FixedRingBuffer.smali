.class public Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    if-ltz p1, :cond_3

    if-lez p2, :cond_2

    if-gt p1, p2, :cond_1

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->e:I

    if-nez p1, :cond_0

    move p1, p2

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initial capacity cannot be greater than capacity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Capacity must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initial capacity must be greater or equal 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->f()V

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->d:I

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->e:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->d:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->d:I

    iget p1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->e:I

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->d:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->d:I

    return-void
.end method

.method public clear()V
    .locals 4

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c()V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v0, v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->e:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b:[Ljava/lang/Object;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    add-int/2addr v1, p1

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->e:I

    rem-int/2addr v1, p0

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer$FixedRingBufferIterator;-><init>(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;Lix3;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->d:I

    if-gt v1, v0, :cond_1

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->e:I

    sub-int/2addr p0, v0

    add-int/2addr p0, v1

    return p0

    :cond_1
    sub-int/2addr v1, v0

    return v1
.end method
