.class public Lorg/mvel2/ast/IfNode;
.super Lorg/mvel2/ast/BlockNode;
.source "source.java"


# instance fields
.field protected condition:Lorg/mvel2/compiler/ExecutableStatement;

.field protected elseBlock:Lorg/mvel2/compiler/ExecutableStatement;

.field protected elseIf:Lorg/mvel2/ast/IfNode;

.field protected idxAlloc:Z

.field protected nestedStatement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 3

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/ast/IfNode;->idxAlloc:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    if-eqz p3, :cond_3

    .line 12
    .line 13
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 14
    .line 15
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 16
    .line 17
    iput p4, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 18
    .line 19
    iput p5, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p7, :cond_0

    .line 23
    .line 24
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->isIndexAllocation()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_0
    iput-boolean v0, p0, Lorg/mvel2/ast/IfNode;->idxAlloc:Z

    .line 32
    .line 33
    and-int/lit8 p6, p6, 0x10

    .line 34
    .line 35
    if-eqz p6, :cond_2

    .line 36
    .line 37
    invoke-static {p1, p2, p3, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 42
    .line 43
    iput-object p2, p0, Lorg/mvel2/ast/IfNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 44
    .line 45
    const-class p3, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {p7, p2, p3, v1}, Lorg/mvel2/util/e;->c(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;Ljava/lang/Class;Z)V

    .line 48
    .line 49
    .line 50
    if-eqz p7, :cond_1

    .line 51
    .line 52
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->pushVariableScope()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {p1, p4, p5, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 60
    .line 61
    iput-object p1, p0, Lorg/mvel2/ast/IfNode;->nestedStatement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 62
    .line 63
    if-eqz p7, :cond_2

    .line 64
    .line 65
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->popVariableScope()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void

    .line 69
    :cond_3
    new-instance p3, Lorg/mvel2/CompileException;

    .line 70
    .line 71
    const-string p4, "statement expected"

    .line 72
    .line 73
    invoke-direct {p3, p4, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 74
    .line 75
    .line 76
    throw p3
.end method


# virtual methods
.method public getElseBlock()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->elseBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNestedStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->nestedStatement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 21
    .line 22
    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 23
    .line 24
    iget v2, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 25
    .line 26
    new-instance v3, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 27
    .line 28
    new-instance v4, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v0, v2, p1, v3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->elseIf:Lorg/mvel2/ast/IfNode;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 46
    .line 47
    new-instance v3, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2, v2}, Lorg/mvel2/ast/IfNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->elseBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 65
    .line 66
    new-instance v3, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, p1, p2, v2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_2
    const/4 p1, 0x0

    .line 80
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->nestedStatement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 17
    .line 18
    iget-boolean v2, p0, Lorg/mvel2/ast/IfNode;->idxAlloc:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 24
    .line 25
    new-instance v3, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 31
    .line 32
    .line 33
    move-object p3, v2

    .line 34
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->elseIf:Lorg/mvel2/ast/IfNode;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-boolean v2, p0, Lorg/mvel2/ast/IfNode;->idxAlloc:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 49
    .line 50
    new-instance v3, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 56
    .line 57
    .line 58
    move-object p3, v2

    .line 59
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/IfNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3
    iget-object v0, p0, Lorg/mvel2/ast/IfNode;->elseBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-boolean v2, p0, Lorg/mvel2/ast/IfNode;->idxAlloc:Z

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 74
    .line 75
    new-instance v3, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v3, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 81
    .line 82
    .line 83
    move-object p3, v2

    .line 84
    :goto_2
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_5
    const/4 p1, 0x0

    .line 90
    return-object p1
.end method

.method public setElseBlock([CIILorg/mvel2/ParserContext;)Lorg/mvel2/ast/IfNode;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mvel2/ast/IfNode;->elseBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 8
    .line 9
    return-object p0
.end method

.method public setElseIf(Lorg/mvel2/ast/IfNode;)Lorg/mvel2/ast/IfNode;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/IfNode;->elseIf:Lorg/mvel2/ast/IfNode;

    .line 2
    .line 3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 6
    .line 7
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
