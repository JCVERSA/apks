.class abstract Lcom/google/common/collect/ImmutableCollection$a;
.super Lcom/google/common/collect/ImmutableCollection$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "initialCapacity"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 15
    .line 16
    return-void
.end method

.method private i(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 5
    .line 6
    add-int/2addr v2, p1

    .line 7
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableCollection$b;->f(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    array-length v0, v0

    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    .line 28
    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableCollection$a;->h([Ljava/lang/Object;I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableCollection$a;->i(I)V

    .line 13
    .line 14
    .line 15
    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->i(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 15
    .line 16
    aput-object p1, v0, v1

    .line 17
    .line 18
    return-object p0
.end method

.method final h([Ljava/lang/Object;I)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/common/collect/n3;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableCollection$a;->i(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 16
    .line 17
    add-int/2addr p1, p2

    .line 18
    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 19
    .line 20
    return-void
.end method
