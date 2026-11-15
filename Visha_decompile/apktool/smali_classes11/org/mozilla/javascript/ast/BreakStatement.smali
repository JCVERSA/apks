.class public Lorg/mozilla/javascript/ast/BreakStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "SourceFile"


# instance fields
.field private breakLabel:Lorg/mozilla/javascript/ast/Name;

.field private target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x79

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x79

    .line 4
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 5
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x79

    .line 7
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 8
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    .line 9
    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method


# virtual methods
.method public getBreakLabel()Lorg/mozilla/javascript/ast/Name;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    return-object p0
.end method

.method public getBreakTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Jump;->setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "break"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, ";\n"

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

    iget-object p0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
