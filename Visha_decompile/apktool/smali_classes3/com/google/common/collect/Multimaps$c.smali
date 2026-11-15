.class public Lcom/google/common/collect/Multimaps$c;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Lat6;


# direct methods
.method public constructor <init>(Lat6;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0, p1}, Lat6;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->v(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public distinctElements()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public elementIterator()Ljava/util/Iterator;
    .locals 1

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "should never be called"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public entryIterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/Multimaps$c$a;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {v1}, Lat6;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multimaps$c$a;-><init>(Lcom/google/common/collect/Multimaps$c;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->entries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->l(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lk71;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$c;->count(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->v(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    if-ge p1, p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$c;->b:Lat6;

    invoke-interface {p0}, Lat6;->size()I

    move-result p0

    return p0
.end method
