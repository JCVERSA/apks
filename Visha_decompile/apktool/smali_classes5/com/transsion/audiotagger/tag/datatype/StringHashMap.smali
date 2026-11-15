.class public Lcom/transsion/audiotagger/tag/datatype/StringHashMap;
.super Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/datatype/HashMapInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;",
        "Lcom/transsion/audiotagger/tag/datatype/HashMapInterface<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field hasEmptyValue:Z

.field keyToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field valueToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/StringHashMap;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;-><init>(Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 11
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 13
    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 14
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 15
    iget-object p1, p1, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 5
    const-string p2, "Language"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/Languages;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/Languages;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/Languages;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/Languages;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hashmap identifier not defined in this class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;

    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-eqz v2, :cond_3

    return v1

    :cond_2
    iget-object v3, v0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-eqz v0, :cond_5

    return v1

    :cond_4
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getKeyToValue()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    return-object p0
.end method

.method public getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getValueToKey()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    if-eqz p0, :cond_1

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "XXX"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
