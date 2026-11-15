.class public Lcom/mgtv/irouting/net/HttpParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/irouting/net/HttpInterface$JsonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/irouting/net/HttpParams$Type;
    }
.end annotation


# instance fields
.field private final body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bodyJson:Ljava/lang/String;

.field private bodyXml:Ljava/lang/String;

.field private final get:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isBodyGZip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/irouting/net/HttpParams;->get:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/irouting/net/HttpParams;->header:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/irouting/net/HttpParams;->body:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/irouting/net/HttpParams;->get(Ljava/lang/String;Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/mgtv/irouting/net/HttpParams;->getParams(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/util/Map;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBodyJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/irouting/net/HttpParams;->bodyJson:Ljava/lang/String;

    return-object p0
.end method

.method public getBodyXml()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/irouting/net/HttpParams;->bodyXml:Ljava/lang/String;

    return-object p0
.end method

.method public getConcatParamsData(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/mgtv/irouting/net/HttpParams$Type;->GET:Lcom/mgtv/irouting/net/HttpParams$Type;

    const-string v1, ""

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/irouting/net/HttpParams;->get:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/irouting/net/HttpParams;->get:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgtv/irouting/net/HttpParams;->getParams(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParams(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/irouting/net/HttpParams$Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/irouting/net/HttpParams;->get:Ljava/util/Map;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/mgtv/irouting/net/HttpParams$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/mgtv/irouting/net/HttpParams;->get:Ljava/util/Map;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/mgtv/irouting/net/HttpParams;->body:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/mgtv/irouting/net/HttpParams;->header:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public isBodyGZip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/irouting/net/HttpParams;->isBodyGZip:Z

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/irouting/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/irouting/net/HttpParams$Type;)Lcom/mgtv/irouting/net/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/irouting/net/HttpParams$Type;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 0

    .line 5
    invoke-virtual {p0, p3}, Lcom/mgtv/irouting/net/HttpParams;->getParams(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/util/Map;

    move-result-object p3

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/irouting/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/irouting/net/HttpParams$Type;)Lcom/mgtv/irouting/net/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/irouting/net/HttpParams$Type;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p3}, Lcom/mgtv/irouting/net/HttpParams;->getParams(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putParams(Ljava/util/Map;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/irouting/net/HttpParams;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/irouting/net/HttpParams;->putParams(Ljava/util/Map;Lcom/mgtv/irouting/net/HttpParams$Type;)Lcom/mgtv/irouting/net/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public putParams(Ljava/util/Map;Lcom/mgtv/irouting/net/HttpParams$Type;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/irouting/net/HttpParams$Type;",
            ")",
            "Lcom/mgtv/irouting/net/HttpParams;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/mgtv/irouting/net/HttpParams;->getParams(Lcom/mgtv/irouting/net/HttpParams$Type;)Ljava/util/Map;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setBodyGZip(Z)Lcom/mgtv/irouting/net/HttpParams;
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/irouting/net/HttpParams;->isBodyGZip:Z

    return-object p0
.end method

.method public setBodyJson(Ljava/lang/String;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 0

    iput-object p1, p0, Lcom/mgtv/irouting/net/HttpParams;->bodyJson:Ljava/lang/String;

    return-object p0
.end method

.method public setBodyXml(Ljava/lang/String;)Lcom/mgtv/irouting/net/HttpParams;
    .locals 0

    iput-object p1, p0, Lcom/mgtv/irouting/net/HttpParams;->bodyXml:Ljava/lang/String;

    return-object p0
.end method
