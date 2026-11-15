.class public Lorg/mvel2/templates/res/CompiledIfNode;
.super Lorg/mvel2/templates/res/IfNode;
.source "source.java"


# instance fields
.field private ce:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

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
    iget p1, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 26
    .line 27
    iget p2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 28
    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    .line 31
    sub-int/2addr p2, p4

    .line 32
    invoke-static {p3, p1, p2, p6}, Lorg/mvel2/d;->e([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledIfNode;->ce:Ljava/io/Serializable;

    .line 37
    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/CompiledIfNode;->ce:Ljava/io/Serializable;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-class v1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, p3, p4, v1}, Lorg/mvel2/d;->s(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return-object p1

    .line 31
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method
