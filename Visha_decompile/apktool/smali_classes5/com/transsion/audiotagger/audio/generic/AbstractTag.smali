.class public abstract Lcom/transsion/audiotagger/audio/generic/AbstractTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/Tag;


# instance fields
.field protected commonNumber:I

.field protected fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->commonNumber:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget p1, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 10
    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs abstract createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public deleteArtworkField()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V

    return-void
.end method

.method public abstract deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/TagField;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/TagField;

    .line 4
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFieldCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFieldCount()I

    move-result p0

    return p0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/transsion/audiotagger/audio/generic/AbstractTag$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag$1;-><init>(Lcom/transsion/audiotagger/audio/generic/AbstractTag;Ljava/util/Iterator;)V

    return-object v1
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
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
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

    .line 1
    invoke-interface {p0, p1, v0}, Lcom/transsion/audiotagger/tag/Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 1

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->getArtworkList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/images/Artwork;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation
.end method

.method public getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItem(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public hasCommonFields()Z
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->commonNumber:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->hasField(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isAllowedEncoding(Ljava/nio/charset/Charset;)Z
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->isAllowedEncoding(Ljava/nio/charset/Charset;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/TagField;

    instance-of v1, v0, Lcom/transsion/audiotagger/tag/TagTextField;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {v0, p1}, Lcom/transsion/audiotagger/tag/TagTextField;->setEncoding(Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 4
    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget p1, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->commonNumber:I

    :cond_2
    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 10
    invoke-interface {p0, p1}, Lcom/transsion/audiotagger/tag/Tag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Tag content:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagField;

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
