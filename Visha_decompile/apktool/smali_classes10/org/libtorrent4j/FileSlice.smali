.class public final Lorg/libtorrent4j/FileSlice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fileIndex:I

.field private final offset:J

.field private final size:J


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/file_slice;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/file_slice;->getFile_index()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/FileSlice;->fileIndex:I

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/file_slice;->getOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libtorrent4j/FileSlice;->offset:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/file_slice;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libtorrent4j/FileSlice;->size:J

    return-void
.end method


# virtual methods
.method public fileIndex()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/FileSlice;->fileIndex:I

    return p0
.end method

.method public offset()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/FileSlice;->offset:J

    return-wide v0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/FileSlice;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/libtorrent4j/FileSlice;->fileIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lorg/libtorrent4j/FileSlice;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/libtorrent4j/FileSlice;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "FileSlice(fileIndex: %d, offset: %d, size: %d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
