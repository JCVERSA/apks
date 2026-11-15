.class public Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;
.super Lorg/mvel2/integration/impl/BaseVariableResolverFactory;
.source "source.java"


# instance fields
.field private function:Lorg/mvel2/ast/Function;

.field private noTilt:Z


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Function;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->noTilt:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->function:Lorg/mvel2/ast/Function;

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 15
    .line 16
    iput-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 17
    .line 18
    iput-object p3, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 19
    .line 20
    array-length p1, p3

    .line 21
    new-array p1, p1, [Lorg/mvel2/integration/VariableResolver;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 24
    .line 25
    :goto_0
    array-length p1, p4

    .line 26
    if-ge v0, p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 29
    .line 30
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 31
    .line 32
    aget-object p2, p2, v0

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 39
    .line 40
    new-instance p2, Lorg/mvel2/integration/impl/SimpleValueResolver;

    .line 41
    .line 42
    aget-object p3, p4, v0

    .line 43
    .line 44
    invoke-direct {p2, p3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    aput-object p2, p1, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method private increaseRegisterTableSize()I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    add-int/lit8 v3, v2, 0x1

    .line 7
    .line 8
    new-array v4, v3, [Ljava/lang/String;

    .line 9
    .line 10
    iput-object v4, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 11
    .line 12
    new-array v3, v3, [Lorg/mvel2/integration/VariableResolver;

    .line 13
    .line 14
    iput-object v3, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    array-length v4, v0

    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object v5, v0, v3

    .line 23
    .line 24
    aput-object v5, v4, v3

    .line 25
    .line 26
    iget-object v4, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 27
    .line 28
    aget-object v5, v1, v3

    .line 29
    .line 30
    aput-object v5, v4, v3

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return v2
.end method


# virtual methods
.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexOffset:I

    sub-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p3}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lorg/mvel2/integration/impl/SimpleValueResolver;

    invoke-direct {v1, p3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    .line 5
    :goto_0
    iget-object p3, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mvel2/integration/VariableResolver;"
        }
    .end annotation

    .line 7
    iget p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexOffset:I

    sub-int/2addr p1, p2

    .line 8
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p4, p2, p1

    if-eqz p4, :cond_0

    .line 9
    invoke-interface {p4, p3}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p4, Lorg/mvel2/integration/impl/SimpleValueResolver;

    invoke-direct {p4, p3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    aput-object p4, p2, p1

    .line 11
    :goto_0
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->increaseRegisterTableSize()I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 4
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    new-instance v2, Lorg/mvel2/integration/impl/SimpleValueResolver;

    invoke-direct {v2, p2}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 5
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p1, v0

    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mvel2/integration/VariableResolver;"
        }
    .end annotation

    .line 8
    iget-object p3, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mvel2/integration/VariableResolver;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "variable already defined within scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Lorg/mvel2/ast/Function;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->function:Lorg/mvel2/ast/Function;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 8
    .line 9
    aget-object v1, v1, p1

    .line 10
    .line 11
    invoke-super {p0, v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    aput-object v1, v0, p1

    .line 16
    .line 17
    :cond_0
    return-object v1
.end method

.method public getIndexedVariableResolvers()[Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 9
    .line 10
    aget-object v1, p1, v0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lorg/mvel2/integration/impl/SimpleValueResolver;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    aput-object v1, p1, v0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 32
    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public isIndexedFactory()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isResolveable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    return p1
.end method

.method public setIndexOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public setIndexedVariableResolvers([Lorg/mvel2/integration/VariableResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 2
    .line 3
    return-void
.end method

.method public setNoTilt(Z)Lorg/mvel2/integration/VariableResolverFactory;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->noTilt:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTiltFlag(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/integration/impl/FunctionVariableResolverFactory;->noTilt:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->setTiltFlag(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateParameters([Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 6
    .line 7
    new-instance v2, Lorg/mvel2/integration/impl/SimpleValueResolver;

    .line 8
    .line 9
    aget-object v3, p1, v0

    .line 10
    .line 11
    invoke-direct {v2, v3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    aput-object v2, v1, v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method
