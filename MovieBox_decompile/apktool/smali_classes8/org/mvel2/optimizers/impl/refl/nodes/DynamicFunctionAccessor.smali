.class public Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;
.source "source.java"


# instance fields
.field private parameters:[Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>([Lorg/mvel2/compiler/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    .line 5
    .line 6
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

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/mvel2/ast/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/mvel2/ast/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/mvel2/ast/b;->b()Lorg/mvel2/ast/Function;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p1

    .line 14
    check-cast v0, Lorg/mvel2/ast/Function;

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_1
    if-ge v3, v1, :cond_2

    .line 28
    .line 29
    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    .line 30
    .line 31
    aget-object v4, v4, v3

    .line 32
    .line 33
    invoke-interface {v4, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :cond_2
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_3
    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "can\'t write to function"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
