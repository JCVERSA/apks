.class public Ljavassist/compiler/ast/Member;
.super Ljavassist/compiler/ast/Symbol;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private field:Ldm1;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

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

.method public getField()Ldm1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setField(Ldm1;)V
    .locals 0

    return-void
.end method
