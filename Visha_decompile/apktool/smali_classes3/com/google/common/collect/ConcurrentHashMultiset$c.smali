.class public Lcom/google/common/collect/ConcurrentHashMultiset$c;
.super Lz44;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/j$a;

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->c:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->d:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Lz44;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$c;->f()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public k()Lcom/google/common/collect/j$a;
    .locals 1

    invoke-super {p0}, Lz44;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j$a;

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->b:Lcom/google/common/collect/j$a;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$c;->k()Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->b:Lcom/google/common/collect/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lxd8;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->d:Lcom/google/common/collect/ConcurrentHashMultiset;

    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->b:Lcom/google/common/collect/j$a;

    invoke-interface {v2}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->b:Lcom/google/common/collect/j$a;

    return-void
.end method
