.class public Lcom/transsnet/loginapi/bean/Country;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsnet/loginapi/bean/Country;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private country_s:Ljava/lang/String;

.field private transient filter:Lcom/transsnet/loginapi/bean/SearchFilter;

.field private index:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/loginapi/bean/DefaultSearch;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/loginapi/bean/DefaultSearch;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->filter:Lcom/transsnet/loginapi/bean/SearchFilter;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/transsnet/loginapi/bean/Country;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    invoke-virtual {p0, p1}, Lcom/transsnet/loginapi/bean/Country;->compareTo(Lcom/transsnet/loginapi/bean/Country;)I

    move-result p1

    return p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeAndAdd()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "+"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->country:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountry_s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->country_s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->index:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->mcc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "+"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->filter:Lcom/transsnet/loginapi/bean/SearchFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/SearchFilter;->getFullSpell(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->country:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setCountry_s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->country_s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->index:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->mcc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Country [country="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->country:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", code="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", sortKey="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "]"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
