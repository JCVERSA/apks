.class public Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private conversionType:Ljava/lang/Class;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private property:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->H0([C)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 7
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->conversionType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 4
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->conversionType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProperty()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Map;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 8
    .line 9
    invoke-interface {v1, p2, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    check-cast p1, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 25
    .line 26
    invoke-interface {v0, p2, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object p1
.end method

.method public setProperty(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Ljava/util/Map;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 9
    .line 10
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->conversionType:Ljava/lang/Class;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Ljava/util/Map;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 31
    .line 32
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->conversionType:Ljava/lang/Class;

    .line 37
    .line 38
    invoke-static {p4, p2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v0, p1

    .line 47
    check-cast v0, Ljava/util/Map;

    .line 48
    .line 49
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

    .line 50
    .line 51
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_0
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
    const-string v1, "Map Accessor -> ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;->property:Lorg/mvel2/compiler/ExecutableStatement;

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
