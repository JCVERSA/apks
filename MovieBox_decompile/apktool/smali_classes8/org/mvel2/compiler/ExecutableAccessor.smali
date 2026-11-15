.class public Lorg/mvel2/compiler/ExecutableAccessor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/ExecutableStatement;


# instance fields
.field private convertable:Z

.field private egress:Ljava/lang/Class;

.field private ingress:Ljava/lang/Class;

.field private node:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/compiler/ExecutableAccessor;->egress:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public computeTypeConversionRule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->ingress:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mvel2/compiler/ExecutableAccessor;->egress:Ljava/lang/Class;

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
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->convertable:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->egress:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKnownIngressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->ingress:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNode()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p1, p2}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->convertable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEmptyStatement()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

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
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    instance-of v0, v0, Lorg/mvel2/ast/TypeCast;

    .line 4
    .line 5
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
    iput-object p1, p0, Lorg/mvel2/compiler/ExecutableAccessor;->egress:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setKnownIngressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/compiler/ExecutableAccessor;->ingress:Ljava/lang/Class;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableAccessor;->node:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
