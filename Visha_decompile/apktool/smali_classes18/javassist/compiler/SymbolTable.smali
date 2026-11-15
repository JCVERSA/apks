.class public final Ljavassist/compiler/SymbolTable;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljavassist/compiler/ast/Declarator;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private parent:Ljavassist/compiler/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/SymbolTable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iput-object p1, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getParent()Ljavassist/compiler/SymbolTable;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    return-object p0
.end method

.method public lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Declarator;

    if-nez v0, :cond_0

    iget-object p0, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljavassist/compiler/SymbolTable;->lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
