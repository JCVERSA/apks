.class public Ljavassist/compiler/ast/CondExpr;
.super Ljavassist/compiler/ast/ASTList;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 2

    new-instance v0, Ljavassist/compiler/ast/ASTList;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p2, v1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

.method public condExpr()Ljavassist/compiler/ast/ASTree;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method public elseExpr()Ljavassist/compiler/ast/ASTree;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "?:"

    return-object p0
.end method

.method public setCond(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setElse(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setThen(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public thenExpr()Ljavassist/compiler/ast/ASTree;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method
