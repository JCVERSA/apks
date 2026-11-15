.class final Landroidx/media3/muxer/AnnexBUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final THREE_BYTE_NAL_START_CODE_SIZE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesSampleContainAnnexBNalUnits(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static findNalEndIndex(Ljava/nio/ByteBuffer;I)I
    .locals 4

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x1

    if-gt p1, v0, :cond_6

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    and-int/lit16 v2, v0, -0x100

    if-eqz v2, :cond_5

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const v2, 0xffffff

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0xffff

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_3

    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_4
    :goto_1
    add-int/2addr p1, v1

    :cond_5
    :goto_2
    return p1

    :cond_6
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    if-ne v2, v1, :cond_8

    :cond_7
    return p1

    :cond_8
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method

.method public static findNalUnits(Ljava/nio/ByteBuffer;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/media3/muxer/AnnexBUtils;->skipLeadingZerosAndFindNalStartCodeIndex(Ljava/nio/ByteBuffer;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    new-instance v1, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-ge v0, v5, :cond_2

    if-eqz v4, :cond_1

    invoke-static {p0, v0}, Landroidx/media3/muxer/AnnexBUtils;->findNalEndIndex(Ljava/nio/ByteBuffer;I)I

    move-result v0

    sub-int v4, v0, v3

    invoke-static {p0, v3, v4}, Landroidx/media3/muxer/AnnexBUtils;->getBytes(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Landroidx/media3/muxer/AnnexBUtils;->skipLeadingZerosAndFindNalStartCodeIndex(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v3

    if-eq v0, v3, :cond_2

    add-int/lit8 v3, v0, 0x3

    move v4, v2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static getBytes(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static skipLeadingZerosAndFindNalStartCodeIndex(Ljava/nio/ByteBuffer;I)I
    .locals 5

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    and-int/lit16 v3, v0, -0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    return p1

    :cond_0
    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "Invalid Nal units"

    invoke-static {v3, v4}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_2

    add-int/2addr p1, v2

    return p1

    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1, v4}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const-string v3, "Invalid NAL units"

    if-gt p1, v0, :cond_8

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v2, :cond_6

    return p1

    :cond_6
    if-nez v0, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    goto :goto_5

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ge p1, v0, :cond_a

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method

.method public static stripEmulationPrevention(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
