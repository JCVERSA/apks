.class public Lorg/mvel2/ast/TypedVarNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private name:Ljava/lang/String;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILjava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0, p6}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 5
    .line 6
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 7
    .line 8
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 9
    .line 10
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 11
    .line 12
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 13
    .line 14
    const/16 p5, 0x3d

    .line 15
    .line 16
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    const/4 v0, -0x1

    .line 21
    if-eq p5, v0, :cond_0

    .line 22
    .line 23
    sub-int p3, p5, p2

    .line 24
    .line 25
    invoke-static {p1, p2, p3}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 35
    .line 36
    sub-int/2addr p2, p3

    .line 37
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 38
    .line 39
    add-int/lit8 p5, p5, 0x1

    .line 40
    .line 41
    iput p5, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 42
    .line 43
    or-int/lit16 p4, p4, 0x80

    .line 44
    .line 45
    and-int/lit8 p3, p4, 0x10

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-static {p1, p5, p2, p6}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 54
    .line 55
    iput-object p1, p0, Lorg/mvel2/ast/TypedVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p5, Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {p5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 61
    .line 62
    .line 63
    iput-object p5, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p5}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    and-int/lit8 p1, p4, 0x10

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p6, p1}, Lorg/mvel2/ParserContext;->getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    const-class p2, Ljava/lang/Object;

    .line 81
    .line 82
    if-eq p1, p2, :cond_3

    .line 83
    .line 84
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string p3, "statically-typed variable already defined in scope: "

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p3, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 119
    .line 120
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 121
    .line 122
    const/4 p3, 0x0

    .line 123
    invoke-virtual {p6, p1, p2, p3}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 124
    .line 125
    .line 126
    :cond_4
    return-void
.end method


# virtual methods
.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpression()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 4
    .line 5
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 6
    .line 7
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p2, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-interface {p3, p1, p2, v0}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    .line 16
    .line 17
    .line 18
    return-object p2
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypedVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

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
    check-cast v0, Lorg/mvel2/compiler/ExecutableStatement;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/mvel2/ast/TypedVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/TypedVarNode;->name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mvel2/ast/TypedVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 24
    .line 25
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-interface {p3, v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public isNewDeclaration()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/TypedVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method
