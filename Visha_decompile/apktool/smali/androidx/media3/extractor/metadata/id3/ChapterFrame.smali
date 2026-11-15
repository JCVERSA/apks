.class public final Landroidx/media3/extractor/metadata/id3/ChapterFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 1

    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    iput p3, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    iput-wide p4, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    iput-wide p6, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    iput-object p8, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    iget v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v4, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v4, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getSubFrame(I)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSubFrameCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    array-length p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
