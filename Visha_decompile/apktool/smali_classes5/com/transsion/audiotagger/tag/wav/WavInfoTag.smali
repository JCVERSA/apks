.class public Lcom/transsion/audiotagger/tag/wav/WavInfoTag;
.super Lcom/transsion/audiotagger/audio/generic/GenericTag;
.source "SourceFile"


# instance fields
.field private endLocationInFile:Ljava/lang/Long;

.field private startLocationInFile:Ljava/lang/Long;

.field private unrecognisedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagTextField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/FieldKey;->RECORD_LABEL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v9, Lcom/transsion/audiotagger/tag/FieldKey;->ISRC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v10, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v12, Lcom/transsion/audiotagger/tag/FieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v13, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v14, Lcom/transsion/audiotagger/tag/FieldKey;->RATING:Lcom/transsion/audiotagger/tag/FieldKey;

    filled-new-array/range {v1 .. v14}, [Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/GenericTag;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public addUnRecognizedField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    new-instance v1, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;-><init>(Lcom/transsion/audiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public getEndLocationInFile()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-object p0
.end method

.method public getSizeOfTag()J
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStartLocationInFile()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    return-object p0
.end method

.method public getUnrecognisedFields()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagTextField;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    return-object p0
.end method

.method public setEndLocationInFile(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-void
.end method

.method public setStartLocationInFile(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wav Info Tag:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tstartLocation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tendLocation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-super {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "\nUnrecognized Tags:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagTextField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
