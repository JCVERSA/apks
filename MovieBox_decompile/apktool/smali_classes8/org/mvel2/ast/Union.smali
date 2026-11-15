.class public Lorg/mvel2/ast/Union;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private transient accessor:Lorg/mvel2/compiler/a;

.field private main:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/ast/ASTNode;-><init>([CIIILorg/mvel2/ParserContext;)V

    .line 8
    .line 9
    .line 10
    iput-object p5, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getAccessor()Lorg/mvel2/compiler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Union;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeftEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMain()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method

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
    iget-object v3, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 8
    .line 9
    invoke-virtual {v3, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v6, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 14
    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p2

    .line 17
    invoke-static/range {v0 .. v6}, Lorg/mvel2/g;->m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Union;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 23
    .line 24
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 25
    .line 26
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 27
    .line 28
    iget-object v0, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-object p1, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v0, v10

    .line 42
    move-object v6, p2

    .line 43
    move-object v7, p3

    .line 44
    invoke-interface/range {v0 .. v9}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lorg/mvel2/ast/Union;->accessor:Lorg/mvel2/compiler/a;

    .line 49
    .line 50
    invoke-interface {v10}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    .line 60
    .line 61
    .line 62
    throw p1
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
    iget-object v1, p0, Lorg/mvel2/ast/Union;->main:Lorg/mvel2/ast/ASTNode;

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "-[union]->"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/mvel2/ast/Union;->accessor:Lorg/mvel2/compiler/a;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
