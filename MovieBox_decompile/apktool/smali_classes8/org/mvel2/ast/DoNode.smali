.class public Lorg/mvel2/ast/DoNode;
.super Lorg/mvel2/ast/BlockNode;
.source "source.java"


# instance fields
.field protected condition:Lorg/mvel2/compiler/ExecutableStatement;

.field protected item:Ljava/lang/String;


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    .line 10
    iput p4, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 11
    .line 12
    iput p5, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 13
    .line 14
    invoke-static {p1, p2, p3, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/mvel2/ast/DoNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 21
    .line 22
    and-int/lit8 p3, p6, 0x10

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, 0x0

    .line 29
    :goto_0
    const-class p6, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-static {p7, p2, p6, p3}, Lorg/mvel2/util/e;->c(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;Ljava/lang/Class;Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p7, :cond_1

    .line 35
    .line 36
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->pushVariableScope()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p1, p4, p5, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 44
    .line 45
    iput-object p1, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 46
    .line 47
    if-eqz p7, :cond_2

    .line 48
    .line 49
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->popVariableScope()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 13
    .line 14
    invoke-interface {v1, p1, p2, v0}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/mvel2/ast/DoNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 13
    .line 14
    invoke-interface {v1, p1, p2, v0}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/mvel2/ast/DoNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method
