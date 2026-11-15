.class public Lorg/apache/commons/text/similarity/LevenshteinResults;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deleteCount:Ljava/lang/Integer;

.field private final distance:Ljava/lang/Integer;

.field private final insertCount:Ljava/lang/Integer;

.field private final substituteCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/commons/text/similarity/LevenshteinResults;

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    iget-object p1, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeleteCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    return-object p0
.end method

.method public getInsertCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSubstituteCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Insert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Delete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Substitute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
