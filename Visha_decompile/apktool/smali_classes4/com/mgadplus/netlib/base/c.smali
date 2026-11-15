.class public Lcom/mgadplus/netlib/base/c;
.super Lwed;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/netlib/base/c$a;
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

.field private multiParts:Lcom/mgadplus/netlib/base/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lwed;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/c;->get:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/c;->header:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/c;->body:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgadplus/netlib/base/c;->get(Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBodyJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->bodyJson:Ljava/lang/String;

    return-object p0
.end method

.method public getBodyXml()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->bodyXml:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiParts()Lcom/mgadplus/netlib/base/g;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->multiParts:Lcom/mgadplus/netlib/base/g;

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
    invoke-virtual {p0, v0}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgadplus/netlib/base/c$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->get:Ljava/util/Map;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/mgadplus/netlib/base/c$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->get:Ljava/util/Map;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->body:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/mgadplus/netlib/base/c;->header:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public isBodyGZip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/netlib/base/c;->isBodyGZip:Z

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgadplus/netlib/base/c;
    .locals 1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;
    .locals 0

    .line 5
    invoke-virtual {p0, p3}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object p3

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgadplus/netlib/base/c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;
    .locals 0

    .line 3
    invoke-virtual {p0, p3}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putParams(Ljava/util/Map;)Lcom/mgadplus/netlib/base/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgadplus/netlib/base/c;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgadplus/netlib/base/c;->putParams(Ljava/util/Map;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    move-result-object p0

    return-object p0
.end method

.method public putParams(Ljava/util/Map;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgadplus/netlib/base/c$a;",
            ")",
            "Lcom/mgadplus/netlib/base/c;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setBodyGZip(Z)Lcom/mgadplus/netlib/base/c;
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/netlib/base/c;->isBodyGZip:Z

    return-object p0
.end method

.method public setBodyJson(Ljava/lang/String;)Lcom/mgadplus/netlib/base/c;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/netlib/base/c;->bodyJson:Ljava/lang/String;

    return-object p0
.end method

.method public setBodyXml(Ljava/lang/String;)Lcom/mgadplus/netlib/base/c;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/netlib/base/c;->bodyXml:Ljava/lang/String;

    return-object p0
.end method

.method public setMultiParts(Lcom/mgadplus/netlib/base/g;)Lcom/mgadplus/netlib/base/c;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/netlib/base/c;->multiParts:Lcom/mgadplus/netlib/base/g;

    return-object p0
.end method
