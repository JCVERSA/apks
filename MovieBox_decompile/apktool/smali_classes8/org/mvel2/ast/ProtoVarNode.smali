.class public Lorg/mvel2/ast/ProtoVarNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private name:Ljava/lang/String;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ast/Proto;Lorg/mvel2/ParserContext;)V
    .locals 2

    .line 1
    invoke-direct {p0, p6}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    const-class p5, Lorg/mvel2/ast/Proto$b;

    .line 5
    .line 6
    iput-object p5, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 7
    .line 8
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 9
    .line 10
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 11
    .line 12
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 13
    .line 14
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 15
    .line 16
    const/16 p5, 0x3d

    .line 17
    .line 18
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    const/4 v0, -0x1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p5, v0, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-static {p1, p2, p5}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    or-int/lit16 p4, p4, 0x80

    .line 37
    .line 38
    and-int/lit8 p2, p4, 0x10

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    add-int/2addr p5, v1

    .line 43
    invoke-static {p1, p5, p3, p6}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p5, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 55
    .line 56
    .line 57
    iput-object p5, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p5}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    and-int/lit8 p1, p4, 0x10

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 69
    .line 70
    invoke-virtual {p6, p1, p2, v1}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method


# virtual methods
.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

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
    iput-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

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
    iput-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method
