.class public Lorg/mvel2/ast/BlockNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field protected blockOffset:I

.field protected blockStart:I

.field protected compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBlockOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getBlockStart()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 2
    .line 3
    return v0
.end method

.method public getCompiledBlock()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method
