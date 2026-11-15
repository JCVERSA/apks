.class public final synthetic Ln63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/apache/commons/text/diff/CommandVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/text/diff/CommandVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln63;->b:Lorg/apache/commons/text/diff/CommandVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln63;->b:Lorg/apache/commons/text/diff/CommandVisitor;

    check-cast p1, Lorg/apache/commons/text/diff/EditCommand;

    invoke-static {p0, p1}, Lorg/apache/commons/text/diff/EditScript;->a(Lorg/apache/commons/text/diff/CommandVisitor;Lorg/apache/commons/text/diff/EditCommand;)V

    return-void
.end method
