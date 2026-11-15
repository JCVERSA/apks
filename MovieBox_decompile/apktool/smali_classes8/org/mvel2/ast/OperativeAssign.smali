.class public Lorg/mvel2/ast/OperativeAssign;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private knownInType:I

.field private final operation:I

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;

.field private varName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[CIIIILorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/mvel2/ast/OperativeAssign;->knownInType:I

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lorg/mvel2/ast/OperativeAssign;->operation:I

    .line 10
    .line 11
    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 12
    .line 13
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 14
    .line 15
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 16
    .line 17
    and-int/lit8 p1, p6, 0x10

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p2, p3, p4, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 26
    .line 27
    iput-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 28
    .line 29
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lorg/mvel2/ast/OperativeAssign;->knownInType:I

    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p7, p1}, Lorg/mvel2/ParserContext;->hasVarOrInput(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {p7, p1, p2}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p2, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p3, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lorg/mvel2/ast/OperativeAssign;->operation:I

    .line 12
    .line 13
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 14
    .line 15
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 16
    .line 17
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 18
    .line 19
    invoke-static {v2, v3, v4, p1, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, v1, p1}, La00/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lorg/mvel2/ast/OperativeAssign;->operation:I

    .line 12
    .line 13
    iget v3, p0, Lorg/mvel2/ast/OperativeAssign;->knownInType:I

    .line 14
    .line 15
    iget-object v4, p0, Lorg/mvel2/ast/OperativeAssign;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 16
    .line 17
    invoke-interface {v4, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v1, v2, v3, p1}, La00/a;->f(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method
