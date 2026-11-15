.class public Lcom/google/common/collect/StandardTable$c$a;
.super Lcom/google/common/collect/Sets$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/StandardTable$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/StandardTable$c;Lcom/google/common/collect/StandardTable$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$c$a;-><init>(Lcom/google/common/collect/StandardTable$c;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-static {}, Lcom/google/common/base/Predicates;->b()Lhe8;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/StandardTable$c;->d(Lhe8;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$c;->f:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c;->f:Lcom/google/common/collect/StandardTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/StandardTable$c$b;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$c$b;-><init>(Lcom/google/common/collect/StandardTable$c;Lcom/google/common/collect/StandardTable$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$c;->f:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->g(Ljava/util/Collection;)Lhe8;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->i(Lhe8;)Lhe8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$c;->d(Lhe8;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$c;->f:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/google/common/collect/StandardTable$c$a;->b:Lcom/google/common/collect/StandardTable$c;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
