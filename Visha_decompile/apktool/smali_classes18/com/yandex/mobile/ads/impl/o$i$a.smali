.class Lcom/yandex/mobile/ads/impl/o$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/o$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yandex/mobile/ads/impl/o$i;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/o$i;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->c:Ljava/util/Collection;

    .line 3
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/o;->f(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o$i;Ljava/util/ListIterator;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/o$i;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->c:Ljava/util/Collection;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o$i;->d()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o$i;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->c:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o$i;->d()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o$i;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->c:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o$i$a;->d:Lcom/yandex/mobile/ads/impl/o$i;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o$i;->f:Lcom/yandex/mobile/ads/impl/o;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/o;->d(Lcom/yandex/mobile/ads/impl/o;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/o;->e(Lcom/yandex/mobile/ads/impl/o;I)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o$i;->e()V

    return-void
.end method
