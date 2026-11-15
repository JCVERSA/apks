.class public Lorg/mvel2/compiler/CompiledAccExpression;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/ExecutableStatement;
.implements Ljava/io/Serializable;


# instance fields
.field private transient accessor:Lorg/mvel2/compiler/a;

.field private context:Lorg/mvel2/ParserContext;

.field private expression:[C

.field private ingressType:Ljava/lang/Class;

.field private offset:I

.field private start:I


# direct methods
.method public constructor <init>([CIILjava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledAccExpression;->expression:[C

    .line 4
    iput p2, p0, Lorg/mvel2/compiler/CompiledAccExpression;->start:I

    .line 5
    iput p3, p0, Lorg/mvel2/compiler/CompiledAccExpression;->offset:I

    .line 6
    iput-object p5, p0, Lorg/mvel2/compiler/CompiledAccExpression;->context:Lorg/mvel2/ParserContext;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-class p4, Ljava/lang/Object;

    :goto_0
    iput-object p4, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 6

    .line 1
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CIILjava/lang/Class;Lorg/mvel2/ParserContext;)V

    return-void
.end method


# virtual methods
.method public computeTypeConversionRule()V
    .locals 0

    .line 1
    return-void
.end method

.method public getAccessor()Lorg/mvel2/compiler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getKnownIngressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    .line 6
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/compiler/CompiledAccExpression;->context:Lorg/mvel2/ParserContext;

    iget-object v3, p0, Lorg/mvel2/compiler/CompiledAccExpression;->expression:[C

    iget v4, p0, Lorg/mvel2/compiler/CompiledAccExpression;->start:I

    iget v5, p0, Lorg/mvel2/compiler/CompiledAccExpression;->offset:I

    iget-object v10, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/compiler/CompiledAccExpression;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

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
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/compiler/CompiledAccExpression;->context:Lorg/mvel2/ParserContext;

    iget-object v3, p0, Lorg/mvel2/compiler/CompiledAccExpression;->expression:[C

    array-length v5, v3

    iget-object v10, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledAccExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

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
    invoke-interface {v0, p1, p1, p2}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

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
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isEmptyStatement()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

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
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isLiteralOnly()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setKnownEgressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setKnownIngressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    .line 6
    .line 7
    const-class v0, Ljava/lang/Object;

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/mvel2/compiler/CompiledAccExpression;->context:Lorg/mvel2/ParserContext;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/mvel2/compiler/CompiledAccExpression;->expression:[C

    .line 26
    .line 27
    array-length v4, v2

    .line 28
    const/4 v8, 0x0

    .line 29
    iget-object v10, p0, Lorg/mvel2/compiler/CompiledAccExpression;->ingressType:Ljava/lang/Class;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v5, p1

    .line 33
    move-object v6, p1

    .line 34
    move-object v7, p3

    .line 35
    move-object v9, p4

    .line 36
    invoke-interface/range {v0 .. v10}, Lorg/mvel2/optimizers/a;->optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledAccExpression;->accessor:Lorg/mvel2/compiler/a;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p4
.end method
