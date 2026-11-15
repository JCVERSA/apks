.class public Lorg/mvel2/ast/ReturnNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    .line 10
    and-int/lit8 p4, p4, 0x10

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lorg/mvel2/compiler/a;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public getOperator()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/16 v0, 0x63

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-interface {p3, p2}, Lorg/mvel2/integration/VariableResolverFactory;->setTiltFlag(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 6
    .line 7
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 8
    .line 9
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 10
    .line 11
    new-instance v2, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;

    .line 12
    .line 13
    invoke-direct {v2, p3}, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0, v1, p1, v2}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 6
    .line 7
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 8
    .line 9
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 10
    .line 11
    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/mvel2/compiler/a;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->setTiltFlag(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 27
    .line 28
    new-instance v1, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;

    .line 29
    .line 30
    invoke-direct {v1, p3}, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1, p2, v1}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public isOperator()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public isOperator(Ljava/lang/Integer;)Z
    .locals 1

    const/16 v0, 0x63

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
