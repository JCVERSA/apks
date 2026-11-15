.class public Ljavassist/compiler/ast/Expr;
.super Ljavassist/compiler/ast/ASTList;
.source "SourceFile"

# interfaces
.implements Lkpa;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected operatorId:I


# direct methods
.method public constructor <init>(ILjavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 4
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method public constructor <init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 2
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 1

    .line 2
    new-instance v0, Ljavassist/compiler/ast/Expr;

    invoke-direct {v0, p0, p1}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;)V

    return-object v0
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 2

    .line 1
    new-instance v0, Ljavassist/compiler/ast/Expr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0
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

.method public getName()Ljava/lang/String;
    .locals 2

    iget p0, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x15e

    if-gt v0, p0, :cond_1

    const/16 v1, 0x173

    if-gt p0, v1, :cond_1

    sget-object v1, Lkpa;->Z4:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    const/16 v0, 0x143

    if-ne p0, v0, :cond_2

    const-string p0, "instanceof"

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperator()I
    .locals 0

    iget p0, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public oprand1()Ljavassist/compiler/ast/ASTree;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method public oprand2()Ljavassist/compiler/ast/ASTree;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method public setOperator(I)V
    .locals 0

    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method public setOprand1(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/ASTList;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setOprand2(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/ASTree;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method
