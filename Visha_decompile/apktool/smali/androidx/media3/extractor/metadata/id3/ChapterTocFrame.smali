.class public final Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "CTOC"


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 1

    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iput-object p4, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iput-object p5, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
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

    const-class v3, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    iget-boolean v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

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

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSubFrameCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    array-length p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method
