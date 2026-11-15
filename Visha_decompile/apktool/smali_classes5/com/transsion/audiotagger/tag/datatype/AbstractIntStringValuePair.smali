.class public Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected key:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->key:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public createMaps()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getValueForId(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
