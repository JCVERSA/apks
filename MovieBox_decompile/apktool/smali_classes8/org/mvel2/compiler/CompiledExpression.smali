.class public Lorg/mvel2/compiler/CompiledExpression;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mvel2/compiler/ExecutableStatement;


# instance fields
.field private accessorOptimizer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/mvel2/optimizers/a;",
            ">;"
        }
    .end annotation
.end field

.field private convertableIngressEgress:Z

.field private firstNode:Lorg/mvel2/ast/ASTNode;

.field private importInjectionRequired:Z

.field private knownEgressType:Ljava/lang/Class;

.field private knownIngressType:Ljava/lang/Class;

.field private literalOnly:Z

.field private optimized:Z

.field private parserConfiguration:Lorg/mvel2/ParserConfiguration;

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mvel2/util/ASTLinkedList;Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserConfiguration;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->firstNode()Lorg/mvel2/ast/ASTNode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/mvel2/compiler/CompiledExpression;->sourceName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->isSingleNode()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->firstNonSymbol()Lorg/mvel2/ast/ASTNode;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_0
    iput-object p3, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    .line 32
    .line 33
    iput-boolean p5, p0, Lorg/mvel2/compiler/CompiledExpression;->literalOnly:Z

    .line 34
    .line 35
    iput-object p4, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 36
    .line 37
    invoke-virtual {p4}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    xor-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    iput-boolean p1, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    .line 48
    .line 49
    return-void
.end method

.method private setupOptimizers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->accessorOptimizer:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lorg/mvel2/optimizers/b;->f(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public computeTypeConversionRule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->convertableIngressEgress:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public getAccessorOptimizer()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/mvel2/optimizers/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->accessorOptimizer:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDirectValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v1, p2, v2}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;-><init>(Lorg/mvel2/ParserConfiguration;Lorg/mvel2/integration/VariableResolverFactory;Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lorg/mvel2/integration/impl/StackResetResolverFactory;

    .line 15
    .line 16
    invoke-direct {v0, p2}, Lorg/mvel2/integration/impl/StackResetResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p2, 0x0

    .line 20
    invoke-static {p2, p0, p1, v0}, Lorg/mvel2/e;->a(ZLorg/mvel2/compiler/CompiledExpression;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getFirstNode()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKnownIngressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParserConfiguration()Lorg/mvel2/ParserConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->sourceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-boolean p2, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/mvel2/compiler/CompiledExpression;->setupOptimizers()V

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 6
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lorg/mvel2/compiler/CompiledExpression;->setupOptimizers()V

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledExpression;->getDirectValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public intOptimized()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isConvertableIngressEgress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->convertableIngressEgress:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEmptyStatement()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isExplicitCast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, v0, Lorg/mvel2/ast/TypeCast;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isImportInjectionRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLiteralOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->literalOnly:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOptimized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSingleNode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public setKnownEgressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setKnownIngressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 7
    .line 8
    :goto_0
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ";\n"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
