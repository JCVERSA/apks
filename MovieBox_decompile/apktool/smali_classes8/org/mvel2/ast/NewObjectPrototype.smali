.class public Lorg/mvel2/ast/NewObjectPrototype;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private function:Lorg/mvel2/ast/Function;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/mvel2/ast/NewObjectPrototype;->function:Lorg/mvel2/ast/Function;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lorg/mvel2/ast/NewObjectPrototype;->function:Lorg/mvel2/ast/Function;

    .line 12
    .line 13
    invoke-virtual {p3}, Lorg/mvel2/ast/Function;->getCompiledBlock()Lorg/mvel2/compiler/ExecutableStatement;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p3, p1, p2, v0}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance p1, Lorg/mvel2/ast/d;

    .line 21
    .line 22
    iget-object p2, p0, Lorg/mvel2/ast/NewObjectPrototype;->function:Lorg/mvel2/ast/Function;

    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Lorg/mvel2/ast/d;-><init>(Lorg/mvel2/ast/Function;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/NewObjectPrototype;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
