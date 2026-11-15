.class public Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private baseComponentType:Ljava/lang/Class;

.field private index:Lorg/mvel2/compiler/ExecutableStatement;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private requireConversion:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->H0([C)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method


# virtual methods
.method public getIndex()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->baseComponentType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 9
    .line 10
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget-object p1, v1, p1

    .line 21
    .line 22
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    move-object v0, p1

    .line 28
    check-cast v0, [Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 31
    .line 32
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    aget-object p1, v0, p1

    .line 43
    .line 44
    return-object p1
.end method

.method public setIndex(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 9
    .line 10
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget-object p1, v1, p1

    .line 21
    .line 22
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->baseComponentType:Ljava/lang/Class;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->baseComponentType:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eq v0, v1, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->baseComponentType:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->requireConversion:Z

    .line 63
    .line 64
    :cond_2
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->requireConversion:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->baseComponentType:Ljava/lang/Class;

    .line 69
    .line 70
    invoke-static {p4, v0}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 75
    .line 76
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-static {p1, p2, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object p4

    .line 90
    :cond_3
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 91
    .line 92
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-static {p1, p2, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object p4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Array Accessor -> ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
