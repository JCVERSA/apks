.class public Lorg/mvel2/ast/InterceptorWrapper;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private interceptor:Lyz/b;

.field private node:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lyz/b;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/mvel2/ast/InterceptorWrapper;->node:Lorg/mvel2/ast/ASTNode;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
