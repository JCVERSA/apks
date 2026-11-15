.class public Lcom/transsion/audiotagger/tag/wav/WavTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/Tag;
.implements Lcom/transsion/audiotagger/tag/id3/Id3SupportingTag;


# static fields
.field private static final NULL:Ljava/lang/String; = "\u0000"

.field private static final logger:Ljava/util/logging/Logger;


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

.field private infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

.field private isExistingId3Tag:Z

.field private isExistingInfoTag:Z

.field private isIncorrectlyAlignedTag:Z

.field private wavOptions:Lcom/transsion/audiotagger/audio/wav/WavOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/wav/WavTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/wav/WavOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag:Z

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->wavOptions:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    return-void
.end method

.method private addNullTerminatorIfNone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "\u0000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
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

.method private stripNullTerminator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "\u0000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

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
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

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

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/audiotagger/tag/Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->deleteArtworkField()V

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getActiveTag()Lcom/transsion/audiotagger/tag/Tag;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->wavOptions:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

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

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

    return-object p0
.end method

.method public getEndLocationInFileOfId3Chunk()J
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->getFieldCount()I

    move-result p0

    return p0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getFieldCount()I

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

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
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0
.end method

.method public getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    return-object p0
.end method

.method public getSizeOfID3TagIncludingChunkHeader()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSizeOfID3TagOnly()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartLocationInFileOfId3Chunk()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/audiotagger/tag/Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasCommonFields()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->hasCommonFields()Z

    move-result p0

    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z

    move-result p0

    return p0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->hasField(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->isEmpty()Z

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

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag:Z

    return p0
.end method

.method public isExistingInfoTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag:Z

    return p0
.end method

.method public isID3Tag()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIncorrectlyAlignedTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag:Z

    return p0
.end method

.method public isInfoTag()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result p0

    return p0
.end method

.method public setExistingId3Tag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag:Z

    return-void
.end method

.method public setExistingInfoTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag:Z

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

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
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setIncorrectlyAlignedTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag:Z

    return-void
.end method

.method public setInfoTag(Lcom/transsion/audiotagger/tag/wav/WavInfoTag;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    return-void
.end method

.method public syncTagBeforeWrite()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncToId3FromInfoOverwrite()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncToInfoFromId3Overwrite()V

    :goto_0
    return-void
.end method

.method public syncTagsAfterRead()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncToInfoFromId3IfEmpty()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncToId3FromInfoIfEmpty()V

    :goto_0
    return-void
.end method

.method public syncToId3FromInfoIfEmpty()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->stripNullTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t sync to ID3 because the data to sync was invalid"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public syncToId3FromInfoOverwrite()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v3, v1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->stripNullTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t sync to ID3 because the data to sync was invalid"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public syncToInfoFromId3IfEmpty()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v3, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addNullTerminatorIfNone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t sync to INFO because the data to sync was invalid"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public syncToInfoFromId3Overwrite()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v3, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addNullTerminatorIfNone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t sync to INFO because the data to sync was invalid"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_2

    const-string v1, "Wav ID3 Tag:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tstartLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->id3Tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavTag;->infoTag:Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
