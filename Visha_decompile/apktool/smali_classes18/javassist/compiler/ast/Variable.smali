.class public Ljavassist/compiler/ast/Variable;
.super Ljavassist/compiler/ast/Symbol;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected declarator:Ljavassist/compiler/ast/Declarator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljavassist/compiler/ast/Variable;->declarator:Ljavassist/compiler/ast/Declarator;

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

    iget-object p0, p0, Ljavassist/compiler/ast/Variable;->declarator:Ljavassist/compiler/ast/Declarator;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljavassist/compiler/ast/Variable;->declarator:Ljavassist/compiler/ast/Declarator;

    invoke-virtual {p0}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
