.class public Lorg/mvel2/templates/res/CompiledDeclareNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# instance fields
.field private ce:Ljava/io/Serializable;

.field private nestedNode:Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 9
    .line 10
    iput p4, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 11
    .line 12
    add-int/lit8 p1, p5, -0x1

    .line 13
    .line 14
    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 15
    .line 16
    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    .line 17
    .line 18
    sub-int/2addr p1, p4

    .line 19
    invoke-static {p3, p4, p1, p6}, Lorg/mvel2/d;->e([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledDeclareNode;->ce:Ljava/io/Serializable;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledDeclareNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getNext()Lorg/mvel2/templates/res/Node;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lorg/mvel2/templates/res/EndNode;

    .line 15
    .line 16
    invoke-direct {p2}, Lorg/mvel2/templates/res/EndNode;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p1, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 20
    .line 21
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lf00/d;->h()Lf00/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lf00/a;

    .line 8
    .line 9
    invoke-direct {v0}, Lf00/a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lf00/d;->k(Lf00/c;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lf00/d;->h()Lf00/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/mvel2/templates/res/CompiledDeclareNode;->ce:Ljava/io/Serializable;

    .line 20
    .line 21
    const-class v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, p3, p4, v2}, Lorg/mvel2/d;->s(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lorg/mvel2/templates/CompiledTemplate;

    .line 30
    .line 31
    invoke-virtual {p1}, Lf00/d;->j()[C

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lorg/mvel2/templates/res/CompiledDeclareNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 36
    .line 37
    invoke-direct {v2, v3, v4}, Lorg/mvel2/templates/CompiledTemplate;-><init>([CLorg/mvel2/templates/res/Node;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Lf00/c;->b(Ljava/lang/String;Lorg/mvel2/templates/CompiledTemplate;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    return-object p1
.end method
