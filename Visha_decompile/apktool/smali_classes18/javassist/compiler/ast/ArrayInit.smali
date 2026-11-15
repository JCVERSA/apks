.class public Ljavassist/compiler/ast/ArrayInit;
.super Ljavassist/compiler/ast/ASTList;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

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

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "array"

    return-object p0
.end method
