.class public final Lcom/squareup/moshi/LinkedHashTreeMap$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public d:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public e:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public f:Lcom/squareup/moshi/LinkedHashTreeMap$f;

.field public final g:Ljava/lang/Object;

.field public final h:I

.field public i:Ljava/lang/Object;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->g:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->h:I

    .line 4
    iput-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->f:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iput-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->e:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/moshi/LinkedHashTreeMap$f;Ljava/lang/Object;ILcom/squareup/moshi/LinkedHashTreeMap$f;Lcom/squareup/moshi/LinkedHashTreeMap$f;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    .line 7
    iput-object p2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->g:Ljava/lang/Object;

    .line 8
    iput p3, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->h:I

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->j:I

    .line 10
    iput-object p4, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->e:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    .line 11
    iput-object p5, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->f:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    .line 12
    iput-object p0, p5, Lcom/squareup/moshi/LinkedHashTreeMap$f;->e:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    .line 13
    iput-object p0, p4, Lcom/squareup/moshi/LinkedHashTreeMap$f;->f:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/moshi/LinkedHashTreeMap$f;
    .locals 2

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()Lcom/squareup/moshi/LinkedHashTreeMap$f;
    .locals 2

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->d:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->d:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->i:Ljava/lang/Object;

    if-nez p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->i:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->i:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
