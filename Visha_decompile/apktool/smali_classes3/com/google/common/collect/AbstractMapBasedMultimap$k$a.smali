.class public Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final c:Ljava/util/Collection;

.field public final synthetic d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Ljava/util/Collection;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$100(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$k;Ljava/util/Iterator;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Ljava/util/Collection;

    .line 6
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Iterator;

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->j()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->c:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->k()V

    return-void
.end method
