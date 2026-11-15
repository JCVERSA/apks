.class public Lorg/mvel2/templates/res/TerminalExpressionNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/templates/res/Node;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 3
    iget v0, p1, Lorg/mvel2/templates/res/Node;->begin:I

    iput v0, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 4
    iget-object v0, p1, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lorg/mvel2/templates/res/Node;->contents:[C

    iput-object v0, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 6
    iget v0, p1, Lorg/mvel2/templates/res/Node;->cStart:I

    iput v0, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 7
    iget p1, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

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
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 2
    .line 3
    iget p2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 4
    .line 5
    iget v0, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 6
    .line 7
    sub-int/2addr v0, p2

    .line 8
    invoke-static {p1, p2, v0, p3, p4}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
