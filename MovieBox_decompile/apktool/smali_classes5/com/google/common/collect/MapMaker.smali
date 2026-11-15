.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$Dummy;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field e:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field f:Lcom/google/common/base/Equivalence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/common/collect/MapMaker;->b:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/collect/MapMaker;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v1, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    const-string v4, "concurrency level was already set to %s"

    .line 12
    .line 13
    invoke-static {v1, v4, v0}, Lcom/google/common/base/m;->w(ZLjava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    move v2, v3

    .line 19
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 23
    .line 24
    return-object p0
.end method

.method b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    :cond_0
    return v0
.end method

.method c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    :cond_0
    return v0
.end method

.method d()Lcom/google/common/base/Equivalence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->e()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/common/base/Equivalence;

    .line 16
    .line 17
    return-object v0
.end method

.method e()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 10
    .line 11
    return-object v0
.end method

.method f()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 10
    .line 11
    return-object v0
.end method

.method public g(I)Lcom/google/common/collect/MapMaker;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v1, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    const-string v4, "initial capacity was already set to %s"

    .line 12
    .line 13
    invoke-static {v1, v4, v0}, Lcom/google/common/base/m;->w(ZLjava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    if-ltz p1, :cond_1

    .line 17
    .line 18
    move v2, v3

    .line 19
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/google/common/collect/MapMaker;->b:I

    .line 23
    .line 24
    return-object p0
.end method

.method h(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    const-string v3, "key equivalence was already set to %s"

    .line 10
    .line 11
    invoke-static {v2, v3, v0}, Lcom/google/common/base/m;->x(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/common/base/Equivalence;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->a:Z

    .line 23
    .line 24
    return-object p0
.end method

.method public i()Ljava/util/concurrent/ConcurrentMap;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->c()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/high16 v2, 0x3f400000    # 0.75f

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->b()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->create(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method j(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    const-string v3, "Key strength was already set to %s"

    .line 10
    .line 11
    invoke-static {v2, v3, v0}, Lcom/google/common/base/m;->x(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 21
    .line 22
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 23
    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->a:Z

    .line 27
    .line 28
    :cond_1
    return-object p0
.end method

.method k(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    const-string v3, "Value strength was already set to %s"

    .line 10
    .line 11
    invoke-static {v2, v3, v0}, Lcom/google/common/base/m;->x(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 21
    .line 22
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 23
    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->a:Z

    .line 27
    .line 28
    :cond_1
    return-object p0
.end method

.method public l()Lcom/google/common/collect/MapMaker;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->j(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->b(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/common/collect/MapMaker;->b:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const-string v3, "initialCapacity"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/h$b;->b(Ljava/lang/String;I)Lcom/google/common/base/h$b;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const-string v2, "concurrencyLevel"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->b(Ljava/lang/String;I)Lcom/google/common/base/h$b;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "keyStrength"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "valueStrength"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    const-string v1, "keyEquivalence"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/google/common/base/h$b;->j(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
