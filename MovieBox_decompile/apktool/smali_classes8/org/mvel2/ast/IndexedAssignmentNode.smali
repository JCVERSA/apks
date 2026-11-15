.class public Lorg/mvel2/ast/IndexedAssignmentNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private transient accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

.field private assignmentVar:Ljava/lang/String;

.field private col:Z

.field private index:[C

.field private indexTarget:[C

.field private name:Ljava/lang/String;

.field private register:I

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;

.field private stmt:[C


# direct methods
.method public constructor <init>([CIIIILjava/lang/String;ILorg/mvel2/ParserContext;)V
    .locals 3

    .line 1
    invoke-direct {p0, p8}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    .line 3
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 4
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 5
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 6
    iput p7, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    const/4 p7, -0x1

    if-eq p5, p7, :cond_0

    .line 7
    iput-object p6, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p6}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 8
    invoke-static {p6, p1, p2, p3, p5}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    invoke-static {p1, p8}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_0
    const/16 p5, 0x3d

    .line 9
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    move-result p5

    if-eq p5, p7, :cond_5

    sub-int p7, p5, p2

    .line 10
    invoke-static {p1, p2, p7}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->assignmentVar:Ljava/lang/String;

    const/4 p7, 0x1

    add-int/2addr p5, p7

    .line 12
    invoke-static {p1, p5}, Lorg/mvel2/util/m;->E0([CI)I

    move-result v1

    iput v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    add-int v2, p2, p3

    if-ge v1, v2, :cond_4

    sub-int p2, v1, p2

    sub-int/2addr p3, p2

    .line 13
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 14
    invoke-static {p1, v1, p3}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    .line 15
    iget p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p1, p2, p3, p8}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 16
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    const/16 p3, 0x5b

    invoke-static {p3, v0, p1, p2}, Lorg/mvel2/util/b;->a(CII[C)I

    move-result p1

    int-to-short p1, p1

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p7, v0

    :goto_0
    iput-boolean p7, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    if-eqz p7, :cond_3

    .line 17
    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    invoke-static {p1, p8}, Lorg/mvel2/d;->k([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/CompiledAccExpression;

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 19
    :cond_2
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget p2, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    iget p2, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    array-length p3, p1

    sub-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->index:[C

    .line 21
    :cond_3
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_4
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unexpected end of statement"

    invoke-direct {p2, p3, p1, p5}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 23
    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    iput-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 24
    iput-object p6, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->assignmentVar:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p8, p6, p1}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_6
    return-void
.end method

.method public constructor <init>([CIIIILorg/mvel2/ParserContext;)V
    .locals 9

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move-object v8, p6

    .line 26
    invoke-direct/range {v0 .. v8}, Lorg/mvel2/ast/IndexedAssignmentNode;-><init>([CIIIILjava/lang/String;ILorg/mvel2/ParserContext;)V

    return-void
.end method


# virtual methods
.method public getAbsoluteName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->assignmentVar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpression()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    .line 11
    .line 12
    invoke-interface {p3, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance v0, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->index:[C

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    .line 28
    .line 29
    invoke-static {v1, p1, p3}, Lorg/mvel2/d;->q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, v0, p1}, Lorg/mvel2/d;->y(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    .line 38
    .line 39
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    .line 42
    .line 43
    invoke-static {v1, p1, p3}, Lorg/mvel2/d;->q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p3, p2, v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 48
    .line 49
    .line 50
    :goto_0
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lorg/mvel2/d;->h([C)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 24
    .line 25
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    .line 44
    .line 45
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 48
    .line 49
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p3, v0, v1, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 54
    .line 55
    .line 56
    move-object v1, p1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 61
    .line 62
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p3, v0, v1}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 67
    .line 68
    .line 69
    :goto_0
    return-object v1

    .line 70
    :cond_3
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    .line 77
    .line 78
    iget-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-interface {p3, p1, p2, v0}, Lorg/mvel2/integration/VariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 88
    .line 89
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p3, v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 94
    .line 95
    .line 96
    :goto_1
    const-class p1, Ljava/lang/Void;

    .line 97
    .line 98
    return-object p1
.end method

.method public getRegister()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    .line 2
    .line 3
    return v0
.end method

.method public getVarName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAssignment()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isNewDeclaration()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setRegister(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    .line 2
    .line 3
    return-void
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method
