.class public Ljavassist/compiler/ast/Stmnt;
.super Ljavassist/compiler/ast/ASTList;
.source "SourceFile"

# interfaces
.implements Lkpa;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected operatorId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public constructor <init>(ILjavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 4
    iput p1, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    return-void
.end method

.method public constructor <init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 2
    iput p1, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    return-void
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;
    .locals 2

    .line 1
    new-instance v0, Ljavassist/compiler/ast/Stmnt;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;
    .locals 3

    .line 2
    new-instance v0, Ljavassist/compiler/ast/Stmnt;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    new-instance v2, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v1, p2, v2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

.method public getOperator()I
    .locals 0

    iget p0, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    const/16 v1, 0x80

    const-string v2, "stmnt:"

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
