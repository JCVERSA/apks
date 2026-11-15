.class public Lcom/google/common/collect/ConcurrentHashMultiset$a;
.super Le54;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->createElementSet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->c:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Le54;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/g;->c(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lu44;->standardContainsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->delegate()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->delegate()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public delegate()Ljava/util/Set;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Ljava/util/Set;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/g;->d(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Le54;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
