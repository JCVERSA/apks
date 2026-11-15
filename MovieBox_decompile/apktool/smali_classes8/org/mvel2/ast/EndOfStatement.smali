.class public Lorg/mvel2/ast/EndOfStatement;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/mvel2/ast/EndOfStatement;->getOperator()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getOperator()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public isOperator()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public isOperator(Ljava/lang/Integer;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x25

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
