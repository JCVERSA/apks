.class public Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;
.source "source.java"


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;[Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    .line 11
    .line 12
    array-length p1, p1

    .line 13
    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    .line 14
    .line 15
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 16
    .line 17
    return-void
.end method

.method private executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

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
    iget v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

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


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getParameters()[Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    invoke-direct {p0, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    return-object p1

    .line 37
    :catch_1
    const/4 v0, 0x1

    .line 38
    :try_start_2
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0, v1, p2, p3, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_2
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 71
    .line 72
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    return-object p1

    .line 87
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    const-string p3, "cannot construct object"

    .line 90
    .line 91
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p2
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
