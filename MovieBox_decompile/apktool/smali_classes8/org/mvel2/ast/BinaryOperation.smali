.class public Lorg/mvel2/ast/BinaryOperation;
.super Lorg/mvel2/ast/BooleanNode;
.source "source.java"


# instance fields
.field private lType:I

.field private final operation:I

.field private rType:I


# direct methods
.method public constructor <init>(ILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/mvel2/ast/BooleanNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    .line 3
    iput p2, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    .line 4
    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    return-void
.end method

.method public constructor <init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 2

    .line 5
    invoke-direct {p0, p4}, Lorg/mvel2/ast/BooleanNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    .line 7
    iput v0, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    .line 8
    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    .line 9
    iput-object p2, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    const-string v0, "not a statement"

    if-eqz p2, :cond_e

    .line 10
    iput-object p3, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    if-eqz p3, :cond_d

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_c

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_6

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lorg/mvel2/util/e;->g(ILjava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 13
    invoke-virtual {p4}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_4

    .line 14
    :cond_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    .line 15
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez p4, :cond_9

    if-nez v0, :cond_9

    .line 16
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p4, v0, p1}, Lorg/mvel2/ast/BinaryOperation;->doesRequireConversion(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result p4

    .line 17
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 18
    invoke-direct {p0, p1}, Lorg/mvel2/ast/BinaryOperation;->isAritmeticOperation(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    .line 19
    :goto_1
    new-instance p4, Lorg/mvel2/ast/LiteralNode;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p4, p1, p3}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    iput-object p4, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lorg/mvel2/ast/BinaryOperation;->areCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_9

    const/16 p4, 0x12

    if-eq p1, p4, :cond_5

    const/16 p4, 0x13

    if-ne p1, p4, :cond_6

    :cond_5
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p1, p4}, Lorg/mvel2/util/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 21
    :cond_6
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incompatible types in statement: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (compared from: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v0

    :goto_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result p2

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result p2

    :goto_3
    invoke-direct {p1, p4, v0, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    .line 22
    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 23
    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    iget-object p1, p1, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object p3, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    iget-object p3, p3, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-ne p1, p3, :cond_a

    .line 24
    iget-object p1, p2, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    goto :goto_5

    .line 25
    :cond_a
    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    .line 26
    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    iget-object p1, p1, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    :cond_b
    :goto_5
    return-void

    .line 27
    :cond_c
    :goto_6
    iput-object v1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 28
    iget-object p1, p2, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    .line 29
    iget-object p1, p3, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    return-void

    .line 30
    :cond_d
    new-instance p1, Lorg/mvel2/ScriptRuntimeException;

    invoke-direct {p1, v0}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_e
    new-instance p1, Lorg/mvel2/ScriptRuntimeException;

    invoke-direct {p1, v0}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private areCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/mvel2/util/l;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const-class v0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 59
    :goto_1
    return p1
.end method

.method private doesRequireConversion(Ljava/lang/Class;Ljava/lang/Class;I)Z
    .locals 0

    .line 1
    const-class p3, Ljava/lang/Short;

    .line 2
    .line 3
    if-eq p1, p3, :cond_0

    .line 4
    .line 5
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-eq p1, p3, :cond_0

    .line 8
    .line 9
    const-class p3, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eq p1, p3, :cond_0

    .line 12
    .line 13
    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    if-eq p1, p3, :cond_0

    .line 16
    .line 17
    const-class p3, Ljava/lang/Long;

    .line 18
    .line 19
    if-eq p1, p3, :cond_0

    .line 20
    .line 21
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-eq p1, p3, :cond_0

    .line 24
    .line 25
    const-class p3, Ljava/math/BigInteger;

    .line 26
    .line 27
    if-ne p1, p3, :cond_1

    .line 28
    .line 29
    :cond_0
    const-class p1, Ljava/lang/Float;

    .line 30
    .line 31
    if-eq p2, p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    if-eq p2, p1, :cond_2

    .line 36
    .line 37
    const-class p1, Ljava/lang/Double;

    .line 38
    .line 39
    if-eq p2, p1, :cond_2

    .line 40
    .line 41
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    if-eq p2, p1, :cond_2

    .line 44
    .line 45
    const-class p1, Ljava/math/BigDecimal;

    .line 46
    .line 47
    if-ne p2, p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method private isAritmeticOperation(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    return p1
.end method


# virtual methods
.method public getOperation()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrecedence()I
    .locals 2

    .line 1
    sget-object v0, Lorg/mvel2/f;->a:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "unsupported AST operation"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    .line 10
    .line 11
    iget v3, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    .line 12
    .line 13
    iget-object v4, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 14
    .line 15
    invoke-virtual {v4, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, v1, v2, v3, p1}, La00/a;->e(ILjava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getRightBinary()Lorg/mvel2/ast/BinaryOperation;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lorg/mvel2/ast/BinaryOperation;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lorg/mvel2/ast/BinaryOperation;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getRightMost()Lorg/mvel2/ast/ASTNode;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    iget-object v0, v0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v1, v0, Lorg/mvel2/ast/BinaryOperation;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lorg/mvel2/ast/BinaryOperation;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object v0
.end method

.method public isGreaterPrecedence(Lorg/mvel2/ast/BinaryOperation;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mvel2/ast/BinaryOperation;->getPrecedence()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lorg/mvel2/f;->a:[I

    .line 6
    .line 7
    iget v1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    .line 8
    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    if-le p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public isLiteral()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setRightMost(Lorg/mvel2/ast/ASTNode;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    iget-object v1, v0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    instance-of v2, v1, Lorg/mvel2/ast/BinaryOperation;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    check-cast v0, Lorg/mvel2/ast/BinaryOperation;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, v0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 15
    .line 16
    if-ne v0, p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    .line 22
    .line 23
    invoke-static {v2}, Lxz/a;->b(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ")"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
