.class public Lorg/mozilla/javascript/ast/ForInLoop;
.super Lorg/mozilla/javascript/ast/Loop;
.source "SourceFile"


# instance fields
.field protected eachPosition:I

.field protected inPosition:I

.field protected isForEach:Z

.field protected isForOf:Z

.field protected iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

.field protected iterator:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Loop;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 3
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    const/16 v0, 0x78

    .line 4
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Loop;-><init>(I)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 7
    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    const/16 p1, 0x78

    .line 8
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Loop;-><init>(II)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 11
    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    const/16 p1, 0x78

    .line 12
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getEachPosition()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    return p0
.end method

.method public getInPosition()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    return p0
.end method

.method public getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public getIterator()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public isForEach()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach:Z

    return p0
.end method

.method public isForOf()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf:Z

    return p0
.end method

.method public setEachPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    return-void
.end method

.method public setInPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    return-void
.end method

.method public setIsForEach(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach:Z

    return-void
.end method

.method public setIsForOf(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf:Z

    return-void
.end method

.method public setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setIterator(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "each "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf:Z

    if-eqz v1, :cond_1

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x82

    const-string v3, "\n"

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object p0, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
