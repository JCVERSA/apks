.class public Lcom/mgtv/task/http/HttpParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/task/http/HttpParams$Type;
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

.field private contentTypeS:Ljava/lang/String;

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

.field private method:Ljava/lang/String;

.field private multiParts:Lcom/mgtv/task/http/MultiParts;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/HttpParams;->get:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/HttpParams;->header:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/HttpParams;->body:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public buildParameter()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/task/http/HttpParams;->get(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBodyJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->bodyJson:Ljava/lang/String;

    return-object p0
.end method

.method public getBodyXml()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->bodyXml:Ljava/lang/String;

    return-object p0
.end method

.method public getContentTypeS()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->contentTypeS:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiParts()Lcom/mgtv/task/http/MultiParts;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->multiParts:Lcom/mgtv/task/http/MultiParts;

    return-object p0
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
    invoke-virtual {p0, v0}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/http/HttpParams$Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->get:Ljava/util/Map;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/mgtv/task/http/HttpParams$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->get:Ljava/util/Map;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->body:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->header:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public isBodyGZip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/task/http/HttpParams;->isBodyGZip:Z

    return p0
.end method

.method public noAppendMap()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/mgtv/task/http/HttpParams;->body:Ljava/util/Map;

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "1"

    const-string v2, "supportnoaddbody"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;
    .locals 1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    .line 5
    invoke-virtual {p0, p3}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object p3

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p3}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putParams(Ljava/util/Map;)Lcom/mgtv/task/http/HttpParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/task/http/HttpParams;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public putParams(Ljava/util/Map;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/task/http/HttpParams$Type;",
            ")",
            "Lcom/mgtv/task/http/HttpParams;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setBodyGZip(Z)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/task/http/HttpParams;->isBodyGZip:Z

    return-object p0
.end method

.method public setBodyJson(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpParams;->bodyJson:Ljava/lang/String;

    return-object p0
.end method

.method public setBodyXml(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpParams;->bodyXml:Ljava/lang/String;

    return-object p0
.end method

.method public setContentTypeS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpParams;->contentTypeS:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpParams;->method:Ljava/lang/String;

    return-void
.end method

.method public setMultiParts(Lcom/mgtv/task/http/MultiParts;)Lcom/mgtv/task/http/HttpParams;
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpParams;->multiParts:Lcom/mgtv/task/http/MultiParts;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpParams{get="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/task/http/HttpParams;->get:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/task/http/HttpParams;->header:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/task/http/HttpParams;->body:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/task/http/HttpParams;->bodyJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bodyXml=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/task/http/HttpParams;->bodyXml:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", multiParts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/task/http/HttpParams;->multiParts:Lcom/mgtv/task/http/MultiParts;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", method=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/task/http/HttpParams;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isBodyGZip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mgtv/task/http/HttpParams;->isBodyGZip:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
