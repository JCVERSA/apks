.class public Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;
.super Lorg/mvel2/integration/impl/MapVariableResolverFactory;
.source "source.java"


# instance fields
.field private noTilt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/mvel2/integration/VariableResolverFactory;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 1

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    .line 13
    iput-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 14
    array-length p1, p2

    new-array p1, p1, [Lorg/mvel2/integration/VariableResolver;

    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    return-void
.end method


# virtual methods
.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 4
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

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    new-instance v1, Lorg/mvel2/integration/impl/SimpleValueResolver;

    .line 18
    .line 19
    invoke-direct {v1, p2}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 23
    .line 24
    aget-object v3, v2, v0

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    aput-object v1, v2, v0

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v3, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v3, v3, v0

    .line 35
    .line 36
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 40
    .line 41
    aget-object v0, v1, v0

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Lorg/mvel2/UnresolveablePropertyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p1

    .line 50
    :catch_0
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-nez v1, :cond_4

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "variable already defined within scope: "

    .line 71
    .line 72
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " "

    .line 83
    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :cond_4
    :goto_1
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolver;

    .line 99
    .line 100
    iget-object v1, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    .line 101
    .line 102
    invoke-direct {v0, v1, p1, p3}, Lorg/mvel2/integration/impl/MapVariableResolver;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->addResolver(Ljava/lang/String;Lorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 8
    .line 9
    aget-object v2, v1, p1

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    aget-object v0, v0, p1

    .line 14
    .line 15
    invoke-super {p0, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    aput-object v0, v1, p1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object v2
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 18
    .line 19
    aget-object v1, p1, v0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lorg/mvel2/integration/impl/SimpleValueResolver;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    aput-object v1, p1, v0

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 34
    .line 35
    aget-object v1, v1, v0

    .line 36
    .line 37
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    .line 41
    .line 42
    aget-object p1, p1, v0

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_2
    invoke-super {p0, p1}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public setNoTilt(Z)Lorg/mvel2/integration/VariableResolverFactory;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTiltFlag(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;->noTilt:Z

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
