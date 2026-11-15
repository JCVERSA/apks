.class public Ljavassist/compiler/ast/CastExpr;
.super Ljavassist/compiler/ast/ASTList;
.source "SourceFile"

# interfaces
.implements Lkpa;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected arrayDim:I

.field protected castType:I


# direct methods
.method public constructor <init>(IILjavassist/compiler/ast/ASTree;)V
    .locals 1

    .line 4
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    const/4 p3, 0x0

    invoke-direct {p0, p3, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 5
    iput p1, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    .line 6
    iput p2, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V
    .locals 1

    .line 1
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    const/16 p1, 0x133

    .line 2
    iput p1, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    .line 3
    iput p2, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    return-void
.end method


# virtual methods
.method public accept(Lvfc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public getArrayDim()I
    .locals 0

    iget p0, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    return p0
.end method

.method public getClassName()Ljavassist/compiler/ast/ASTList;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    check-cast p0, Ljavassist/compiler/ast/ASTList;

    return-object p0
.end method

.method public getOprand()Ljavassist/compiler/ast/ASTree;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    return p0
.end method

.method public setOprand(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/ASTree;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method
