.class Lcom/yandex/mobile/ads/impl/o$a;
.super Lcom/yandex/mobile/ads/impl/hu0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/o$a$a;,
        Lcom/yandex/mobile/ads/impl/o$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/hu0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final transient d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/yandex/mobile/ads/impl/o;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/hu0;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p0, Lcom/yandex/mobile/ads/impl/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    instance-of v1, p1, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/o$f;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/yandex/mobile/ads/impl/o$f;-><init>(Lcom/yandex/mobile/ads/impl/o;Ljava/lang/Object;Ljava/util/List;Lcom/yandex/mobile/ads/impl/o$i;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/o$j;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/yandex/mobile/ads/impl/o$j;-><init>(Lcom/yandex/mobile/ads/impl/o;Ljava/lang/Object;Ljava/util/List;Lcom/yandex/mobile/ads/impl/o$i;)V

    :goto_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/jk0;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/jk0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/o;->c(Lcom/yandex/mobile/ads/impl/o;)Ljava/util/Map;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o;->d()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/o$a$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/o$a$b;-><init>(Lcom/yandex/mobile/ads/impl/o$a;)V

    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o$a$b;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o$a$b;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o$a$b;->remove()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    check-cast p0, Lcom/yandex/mobile/ads/impl/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/yandex/mobile/ads/impl/o$f;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/o$f;-><init>(Lcom/yandex/mobile/ads/impl/o;Ljava/lang/Object;Ljava/util/List;Lcom/yandex/mobile/ads/impl/o$i;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/yandex/mobile/ads/impl/o$j;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/o$j;-><init>(Lcom/yandex/mobile/ads/impl/o;Ljava/lang/Object;Ljava/util/List;Lcom/yandex/mobile/ads/impl/o$i;)V

    goto :goto_1

    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/q;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    check-cast v0, Lcom/yandex/mobile/ads/impl/x31;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/x31;->g:Lcom/yandex/mobile/ads/impl/t32;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/t32;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->e:Lcom/yandex/mobile/ads/impl/o;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/o;->d(Lcom/yandex/mobile/ads/impl/o;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/o;->e(Lcom/yandex/mobile/ads/impl/o;I)V

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$a;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
