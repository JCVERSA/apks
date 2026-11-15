.class public Lorg/mvel2/ast/IndexedOperativeAssign;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private final operation:I

.field private final register:I

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->operation:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 7
    .line 8
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 9
    .line 10
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 11
    .line 12
    iput p5, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->register:I

    .line 13
    .line 14
    and-int/lit8 p4, p6, 0x10

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-static {p1, p2, p3, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 25
    .line 26
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p2, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->register:I

    .line 2
    .line 3
    invoke-interface {p3, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

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
    iget v1, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->operation:I

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->register:I

    .line 2
    .line 3
    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

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
    iget v2, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->operation:I

    .line 12
    .line 13
    iget-object v3, p0, Lorg/mvel2/ast/IndexedOperativeAssign;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 14
    .line 15
    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v1, v2, p1}, La00/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method
