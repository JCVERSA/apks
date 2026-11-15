.class public Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;
.super Lcom/google/common/collect/Maps$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/AbstractMapBasedMultimap$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;->b:Lcom/google/common/collect/AbstractMapBasedMultimap$c;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$i;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;->b:Lcom/google/common/collect/AbstractMapBasedMultimap$c;

    return-object p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;->b:Lcom/google/common/collect/AbstractMapBasedMultimap$c;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/g;->c(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$c$b;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;->b:Lcom/google/common/collect/AbstractMapBasedMultimap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$c$b;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c$a;->b:Lcom/google/common/collect/AbstractMapBasedMultimap$c;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$c;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
