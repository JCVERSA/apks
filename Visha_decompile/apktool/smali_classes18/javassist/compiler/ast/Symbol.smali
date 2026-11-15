.class public Ljavassist/compiler/ast/Symbol;
.super Ljavassist/compiler/ast/ASTree;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-object p1, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

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

.method public get()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    return-object p0
.end method
