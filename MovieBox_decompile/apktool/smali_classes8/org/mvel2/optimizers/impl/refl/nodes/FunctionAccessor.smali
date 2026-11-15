.class public Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;
.source "source.java"


# instance fields
.field private function:Lorg/mvel2/ast/b;

.field private parameters:[Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/b;[Lorg/mvel2/compiler/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->function:Lorg/mvel2/ast/b;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    .line 7
    .line 8
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
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->function:Lorg/mvel2/ast/b;

    .line 33
    .line 34
    invoke-virtual {v2, p1, p2, p3, v1}, Lorg/mvel2/ast/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->function:Lorg/mvel2/ast/b;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/ast/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
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
