.class public Lorg/mvel2/ast/LiteralDeepPropertyNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private literal:Ljava/lang/Object;


# direct methods
.method public constructor <init>([CIIILjava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p6}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

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
    iput-object p5, p0, Lorg/mvel2/ast/LiteralDeepPropertyNode;->literal:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

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
    iget-object v3, p0, Lorg/mvel2/ast/LiteralDeepPropertyNode;->literal:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v6, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 10
    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lorg/mvel2/g;->m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mvel2/ast/LiteralDeepPropertyNode;->literal:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 21
    .line 22
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 23
    .line 24
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 25
    .line 26
    iget-object v5, p0, Lorg/mvel2/ast/LiteralDeepPropertyNode;->literal:Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v0, p1

    .line 31
    move-object v6, p2

    .line 32
    move-object v7, p3

    .line 33
    invoke-interface/range {v0 .. v9}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 38
    .line 39
    invoke-interface {p1}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
