.class public Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private coercionNeeded:Z

.field private length:I

.field private method:Ljava/lang/reflect/Method;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private nullHandler:Lyz/c;

.field private parameterTypes:[Ljava/lang/Class;

.field private parms:[Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->coercionNeeded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;[Lorg/mvel2/compiler/ExecutableStatement;Lyz/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->coercionNeeded:Z

    .line 5
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parameterTypes:[Ljava/lang/Class;

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->length:I

    .line 7
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method private executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->length:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessor;->EMPTY:[Ljava/lang/Object;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->length:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-interface {v2, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method private executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->length:I

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->length:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    invoke-interface {v2, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    aget-object v3, p1, v1

    .line 19
    .line 20
    invoke-static {v2, v3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method private executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p3, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p2

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string p3, "unable to invoke method"

    .line 31
    .line 32
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParms()[Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->coercionNeeded:Z

    .line 2
    .line 3
    const-string v1, "cannot invoke method"

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v2, v0, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :try_start_1
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    invoke-direct {p2, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p2

    .line 44
    :catch_1
    const/4 v0, 0x1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parameterTypes:[Ljava/lang/Class;

    .line 60
    .line 61
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v1, v2, v3, v4, v0}, Lorg/mvel2/util/m;->J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_2
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->coercionNeeded:Z

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 102
    .line 103
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parameterTypes:[Ljava/lang/Class;

    .line 104
    .line 105
    invoke-direct {p0, v3, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :catch_2
    move-exception p1

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 121
    .line 122
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parameterTypes:[Ljava/lang/Class;

    .line 123
    .line 124
    invoke-direct {p0, v2, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    return-object p1

    .line 133
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 134
    .line 135
    invoke-direct {p2, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p2
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parameterTypes:[Ljava/lang/Class;

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->length:I

    .line 11
    .line 12
    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object p1
.end method

.method public setParms([Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
