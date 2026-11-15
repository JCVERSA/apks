.class public Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;
.super Lorg/mvel2/templates/res/TerminalExpressionNode;
.source "source.java"


# instance fields
.field private ce:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lorg/mvel2/templates/res/Node;Lorg/mvel2/ParserContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mvel2/templates/res/TerminalExpressionNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lorg/mvel2/templates/res/Node;->begin:I

    .line 5
    .line 6
    iput v0, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 7
    .line 8
    iget-object v0, p1, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 13
    .line 14
    iget v1, p1, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 15
    .line 16
    iget p1, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 17
    .line 18
    sub-int/2addr p1, v1

    .line 19
    invoke-static {v0, v1, p1, p2}, Lorg/mvel2/d;->e([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;->ce:Ljava/io/Serializable;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;->ce:Ljava/io/Serializable;

    .line 2
    .line 3
    invoke-static {p1, p3, p4}, Lorg/mvel2/d;->r(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
