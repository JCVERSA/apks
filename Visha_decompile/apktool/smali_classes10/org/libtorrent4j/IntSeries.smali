.class public final Lorg/libtorrent4j/IntSeries;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[J

.field private end:I

.field private head:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    new-array p1, p1, [J

    invoke-direct {p0, p1}, Lorg/libtorrent4j/IntSeries;-><init>([J)V

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/libtorrent4j/IntSeries;->head:I

    .line 5
    iput p1, p0, Lorg/libtorrent4j/IntSeries;->end:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/libtorrent4j/IntSeries;->size:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer to hold data can\'t be of size 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer to hold data can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(J)V
    .locals 5

    iget v0, p0, Lorg/libtorrent4j/IntSeries;->head:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/libtorrent4j/IntSeries;->end:I

    iput v0, p0, Lorg/libtorrent4j/IntSeries;->head:I

    iget-object v1, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    aput-wide p1, v1, v0

    iput v2, p0, Lorg/libtorrent4j/IntSeries;->size:I

    return-void

    :cond_0
    iget v1, p0, Lorg/libtorrent4j/IntSeries;->end:I

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    array-length v4, v3

    rem-int/2addr v1, v4

    iput v1, p0, Lorg/libtorrent4j/IntSeries;->end:I

    aput-wide p1, v3, v1

    if-gt v1, v0, :cond_1

    add-int/2addr v0, v2

    array-length p1, v3

    rem-int/2addr v0, p1

    iput v0, p0, Lorg/libtorrent4j/IntSeries;->head:I

    :cond_1
    iget p1, p0, Lorg/libtorrent4j/IntSeries;->head:I

    if-gt p1, v1, :cond_2

    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/libtorrent4j/IntSeries;->size:I

    goto :goto_0

    :cond_2
    array-length p1, v3

    iput p1, p0, Lorg/libtorrent4j/IntSeries;->size:I

    :goto_0
    return-void
.end method

.method public get(I)J
    .locals 2

    iget-object v0, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    iget v1, p0, Lorg/libtorrent4j/IntSeries;->head:I

    add-int/2addr v1, p1

    iget p0, p0, Lorg/libtorrent4j/IntSeries;->size:I

    rem-int/2addr v1, p0

    aget-wide p0, v0, v1

    return-wide p0
.end method

.method public last()J
    .locals 2

    iget v0, p0, Lorg/libtorrent4j/IntSeries;->end:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    aget-wide v0, p0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/IntSeries;->size:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/libtorrent4j/IntSeries;->buffer:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ head: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/libtorrent4j/IntSeries;->head:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/libtorrent4j/IntSeries;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/IntSeries;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", buffer: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
