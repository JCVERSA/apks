.class public abstract Lcom/google/common/collect/Multisets$d;
.super Lcom/google/common/collect/Sets$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Sets$d;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lcom/google/common/collect/j;
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->b()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/common/collect/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/j$a;

    invoke-interface {p1}, Lcom/google/common/collect/j$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->b()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/collect/j;->count(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1}, Lcom/google/common/collect/j$a;->getCount()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/common/collect/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/j$a;

    invoke-interface {p1}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/j$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->b()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, v0, p1, v1}, Lcom/google/common/collect/j;->setCount(Ljava/lang/Object;II)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method
