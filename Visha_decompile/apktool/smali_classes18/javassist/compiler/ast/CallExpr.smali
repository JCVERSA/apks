.class public Ljavassist/compiler/ast/CallExpr;
.super Ljavassist/compiler/ast/Expr;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private method:Lcn6;


# direct methods
.method private constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 1

    const/16 v0, 0x43

    invoke-direct {p0, v0, p1, p2}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-void
.end method

.method public static makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;
    .locals 2

    new-instance v0, Ljavassist/compiler/ast/CallExpr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, v1}, Ljavassist/compiler/ast/CallExpr;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

.method public getMethod()Lcn6;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setMethod(Lcn6;)V
    .locals 0

    return-void
.end method
