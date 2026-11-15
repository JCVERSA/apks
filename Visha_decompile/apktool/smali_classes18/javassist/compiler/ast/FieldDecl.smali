.class public Ljavassist/compiler/ast/FieldDecl;
.super Ljavassist/compiler/ast/ASTList;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

.method public getDeclarator()Ljavassist/compiler/ast/Declarator;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    check-cast p0, Ljavassist/compiler/ast/Declarator;

    return-object p0
.end method

.method public getInit()Ljavassist/compiler/ast/ASTree;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavassist/compiler/ast/ASTList;->sublist(I)Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method public getModifiers()Ljavassist/compiler/ast/ASTList;
    .locals 0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    check-cast p0, Ljavassist/compiler/ast/ASTList;

    return-object p0
.end method
