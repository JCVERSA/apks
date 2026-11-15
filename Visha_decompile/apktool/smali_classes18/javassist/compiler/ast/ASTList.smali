.class public Ljavassist/compiler/ast/ASTList;
.super Ljavassist/compiler/ast/ASTree;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private left:Ljavassist/compiler/ast/ASTree;

.field private right:Ljavassist/compiler/ast/ASTList;


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 5
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 2
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    .line 3
    iput-object p2, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-void
.end method

.method public static append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;
    .locals 1

    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-static {p0, v0}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-object p0
.end method

.method public static length(Ljavassist/compiler/ast/ASTList;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;
    .locals 3

    new-instance v0, Ljavassist/compiler/ast/ASTList;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    new-instance v2, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v2, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v1, p1, v2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v0, p0, v1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

.method public getLeft()Ljavassist/compiler/ast/ASTree;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-object p0
.end method

.method public getRight()Ljavassist/compiler/ast/ASTree;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-object p0
.end method

.method public head()Ljavassist/compiler/ast/ASTree;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-object p0
.end method

.method public length()I
    .locals 0

    .line 1
    invoke-static {p0}, Ljavassist/compiler/ast/ASTList;->length(Ljavassist/compiler/ast/ASTList;)I

    move-result p0

    return p0
.end method

.method public setHead(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public setLeft(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public setRight(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    check-cast p1, Ljavassist/compiler/ast/ASTList;

    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-void
.end method

.method public setTail(Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-void
.end method

.method public sublist(I)Ljavassist/compiler/ast/ASTList;
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_0

    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    move p1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public subst(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    if-ne v0, p2, :cond_0

    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public tail()Ljavassist/compiler/ast/ASTList;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTree;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p0, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTree;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
