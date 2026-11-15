.class public Ljavassist/compiler/ast/Pair;
.super Ljavassist/compiler/ast/ASTree;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected left:Ljavassist/compiler/ast/ASTree;

.field protected right:Ljavassist/compiler/ast/ASTree;


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-object p1, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    iput-object p2, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

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

.method public getLeft()Ljavassist/compiler/ast/ASTree;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    return-object p0
.end method

.method public getRight()Ljavassist/compiler/ast/ASTree;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

    return-object p0
.end method

.method public setLeft(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    iput-object p1, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public setRight(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    iput-object p1, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(<Pair> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    const-string v2, "<null>"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTree;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTree;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
