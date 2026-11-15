.class public abstract Lcom/google/common/collect/AbstractMapBasedMultiset$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->e()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    iget p1, p1, Lcom/google/common/collect/k;->d:I

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    iget v0, v0, Lcom/google/common/collect/k;->d:I

    iget p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public abstract b(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a()V

    iget p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v2, v2, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/k;->s(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a()V

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk71;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-wide v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    iget-object v4, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    iget v5, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/k;->x(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    iget v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    iget v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/k;->t(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    iget v0, v0, Lcom/google/common/collect/k;->d:I

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:I

    return-void
.end method
