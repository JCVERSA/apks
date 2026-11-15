.class public Lorg/apache/commons/text/diff/InsertCommand;
.super Lorg/apache/commons/text/diff/EditCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/text/diff/EditCommand<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/text/diff/EditCommand;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/text/diff/CommandVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/diff/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/text/diff/EditCommand;->getObject()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/text/diff/CommandVisitor;->visitInsertCommand(Ljava/lang/Object;)V

    return-void
.end method
