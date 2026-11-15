.class public Lorg/mvel2/templates/CompiledTemplate;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private root:Lorg/mvel2/templates/res/Node;

.field private template:[C


# direct methods
.method public constructor <init>([CLorg/mvel2/templates/res/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/templates/CompiledTemplate;->template:[C

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/templates/CompiledTemplate;->root:Lorg/mvel2/templates/res/Node;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getRoot()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/CompiledTemplate;->root:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplate()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/CompiledTemplate;->template:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public setRoot(Lorg/mvel2/templates/res/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/templates/CompiledTemplate;->root:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-void
.end method

.method public setTemplate([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/templates/CompiledTemplate;->template:[C

    .line 2
    .line 3
    return-void
.end method
