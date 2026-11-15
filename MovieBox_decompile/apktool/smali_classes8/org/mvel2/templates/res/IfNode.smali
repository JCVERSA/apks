.class public Lorg/mvel2/templates/res/IfNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# instance fields
.field protected elseNode:Lorg/mvel2/templates/res/Node;

.field protected trueNode:Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/Node;-><init>(ILjava/lang/String;[CII)V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 5
    .line 6
    iget p2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 7
    .line 8
    if-le p1, p2, :cond_0

    .line 9
    .line 10
    aget-char p1, p3, p1

    .line 11
    .line 12
    invoke-static {p1}, Lorg/mvel2/util/m;->q0(C)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 2
    .line 3
    iget v2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 4
    .line 5
    if-eq v0, v2, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 8
    .line 9
    sub-int v3, v0, v2

    .line 10
    .line 11
    const-class v6, Ljava/lang/Boolean;

    .line 12
    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    invoke-static/range {v1 .. v6}, Lorg/mvel2/d;->p([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    return-object p1

    .line 39
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getElseNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->elseNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrueNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public setElseNode(Lorg/mvel2/templates/res/ExpressionNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/templates/res/IfNode;->elseNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-void
.end method

.method public setTrueNode(Lorg/mvel2/templates/res/ExpressionNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-void
.end method
