.class public Lorg/mvel2/templates/res/CommentNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 4
    iput p5, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/templates/res/Node;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 6
    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 7
    iput p5, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    .line 8
    iput-object p6, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

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
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method
