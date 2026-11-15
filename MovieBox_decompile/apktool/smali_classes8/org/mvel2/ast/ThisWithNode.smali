.class public Lorg/mvel2/ast/ThisWithNode;
.super Lorg/mvel2/ast/WithNode;
.source "source.java"


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/mvel2/ast/WithNode;-><init>([CIIIIILorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/ThisWithNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lorg/mvel2/ast/WithNode;->withExpressions:[Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getSetExpression()Ljava/io/Serializable;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getSetExpression()Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getStatement()Lorg/mvel2/compiler/ExecutableStatement;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v4, p2, p3, v3}, Lorg/mvel2/d;->t(Ljava/io/Serializable;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getStatement()Lorg/mvel2/compiler/ExecutableStatement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3, p2, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object p2

    .line 44
    :cond_2
    new-instance p1, Lorg/mvel2/CompileException;

    .line 45
    .line 46
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 47
    .line 48
    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 49
    .line 50
    const-string v0, "with-block against null pointer (this)"

    .line 51
    .line 52
    invoke-direct {p1, v0, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
