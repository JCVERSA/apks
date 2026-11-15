.class public Lcom/transsion/audiotagger/tag/aiff/AiffTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/Tag;
.implements Lcom/transsion/audiotagger/tag/id3/Id3SupportingTag;


# instance fields
.field private chunkSummaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/iff/ChunkSummary;",
            ">;"
        }
    .end annotation
.end field

.field private id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

.field private isExistingId3Tag:Z

.field private isIncorrectlyAlignedTag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    .line 4
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    .line 8
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    .line 9
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public static createDefaultID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
    .locals 2

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V24:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V23:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V22:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V

    return-void
.end method

.method public createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public deleteArtworkField()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->deleteArtworkField()V

    return-void
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->getArtworkList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getChunkSummaryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/iff/ChunkSummary;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    return-object p0
.end method

.method public getEndLocationInFileOfId3Chunk()J
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFieldCount()I

    move-result p0

    return p0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getFieldCount()I

    move-result p0

    return p0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object p0

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p0

    return-object p0
.end method

.method public getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0
.end method

.method public getSizeOfID3TagIncludingChunkHeader()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSizeOfID3TagOnly()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartLocationInFileOfId3Chunk()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasCommonFields()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->hasCommonFields()Z

    move-result p0

    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z

    move-result p0

    return p0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->hasField(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->isEmpty()Z

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

.method public isExistingId3Tag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return p0
.end method

.method public isIncorrectlyAlignedTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    return p0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result p0

    return p0
.end method

.method public setExistingId3Tag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return-void
.end method

.method public varargs setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V

    return-void
.end method

.method public setID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setIncorrectlyAlignedTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_3

    const-string v1, "Aiff ID3 Tag:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    if-eqz v1, :cond_1

    const-string v1, "\tincorrectly starts as odd byte\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tstartLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tendLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "tag:empty"

    return-object p0
.end method
