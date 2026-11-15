.class public Lorg/mvel2/ast/DeepAssignmentNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private acc:Lorg/mvel2/compiler/CompiledAccExpression;

.field private property:Ljava/lang/String;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIIILjava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 2

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit8 v1, p4, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 3
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 4
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 5
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 6
    iput-object p6, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    invoke-static {p6, p1, p2, p3, p5}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    move-result-object p1

    invoke-static {p1, p7}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/16 p5, 0x3d

    .line 7
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    move-result p5

    if-eq p5, v0, :cond_2

    sub-int p6, p5, p2

    .line 8
    invoke-static {p1, p2, p6}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    add-int/lit8 p5, p5, 0x1

    .line 9
    invoke-static {p1, p5}, Lorg/mvel2/util/m;->E0([CI)I

    move-result p6

    iput p6, p0, Lorg/mvel2/ast/ASTNode;->start:I

    add-int v0, p2, p3

    if-ge p6, v0, :cond_1

    sub-int p5, p6, p2

    sub-int p5, p3, p5

    .line 10
    iput p5, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1, p6, p5, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unexpected end of statement"

    invoke-direct {p2, p3, p1, p5}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 13
    :cond_2
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p1}, Ljava/lang/String;-><init>([C)V

    iput-object p5, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    :cond_3
    :goto_0
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1, p2, p3, p7}, Lorg/mvel2/d;->i([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/CompiledAccExpression;

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->acc:Lorg/mvel2/compiler/CompiledAccExpression;

    :cond_4
    return-void
.end method

.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 8

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 15
    invoke-direct/range {v0 .. v7}, Lorg/mvel2/ast/DeepAssignmentNode;-><init>([CIIIILjava/lang/String;Lorg/mvel2/ParserContext;)V

    return-void
.end method


# virtual methods
.method public getAbsoluteName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpression()[C
    .locals 3

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
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->F0([CII)[C

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p2, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

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
    invoke-static {v0, v1, v2, p1, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 14
    .line 15
    invoke-static {p1, p3, p2, v0, v1}, Lorg/mvel2/g;->A(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

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
    iput-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 20
    .line 21
    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 28
    .line 29
    invoke-interface {v1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lorg/mvel2/d;->j([CLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 40
    .line 41
    iput-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->acc:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->acc:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 44
    .line 45
    iget-object v1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 46
    .line 47
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-object v1
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

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method
