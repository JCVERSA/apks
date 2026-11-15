.class public Lorg/mozilla/javascript/ast/ConditionalExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "SourceFile"


# instance fields
.field private colonPosition:I

.field private falseExpression:Lorg/mozilla/javascript/ast/AstNode;

.field private questionMarkPosition:I

.field private testExpression:Lorg/mozilla/javascript/ast/AstNode;

.field private trueExpression:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 3
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    const/16 v0, 0x67

    .line 4
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 7
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    const/16 p1, 0x67

    .line 8
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 11
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    const/16 p1, 0x67

    .line 12
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getColonPosition()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    return p0
.end method

.method public getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public getQuestionMarkPosition()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    return p0
.end method

.method public getTestExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public hasSideEffects()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setColonPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    return-void
.end method

.method public setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setQuestionMarkPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    return-void
.end method

.method public setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object p0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
