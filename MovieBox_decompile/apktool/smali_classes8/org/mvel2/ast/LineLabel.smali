.class public Lorg/mvel2/ast/LineLabel;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private lineNumber:I

.field private sourceFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/mvel2/ast/LineLabel;->lineNumber:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/mvel2/ast/LineLabel;->sourceFile:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/LineLabel;->lineNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/LineLabel;->sourceFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLineNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/ast/LineLabel;->lineNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/LineLabel;->sourceFile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[SourceLine:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lorg/mvel2/ast/LineLabel;->lineNumber:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
