.class public Lorg/mozilla/javascript/optimizer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/optimizer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/a$a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/LinkedList;

.field public final synthetic b:Lorg/mozilla/javascript/optimizer/a;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/optimizer/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/a$a;->b:Lorg/mozilla/javascript/optimizer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/a$a;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a$a;->c()Lorg/mozilla/javascript/optimizer/a$a$a;

    move-result-object p0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    aput p2, v0, p1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->c:[I

    aput p3, p0, p1

    return-void
.end method

.method public final b(Lorg/mozilla/javascript/optimizer/a$a$a;II)V
    .locals 2

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/a$a$a;->c:[I

    aget v0, v0, p2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a$a;->b:Lorg/mozilla/javascript/optimizer/a;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a$a;->b:Lorg/mozilla/javascript/optimizer/a;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a$a;->b:Lorg/mozilla/javascript/optimizer/a;

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/a$a$a;->c:[I

    aget v0, v0, p2

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    aget p1, p1, p2

    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/a;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p3, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bad exception start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Lorg/mozilla/javascript/optimizer/a$a$a;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/a$a$a;

    return-object p0
.end method

.method public d(Lorg/mozilla/javascript/Node;I)V
    .locals 3

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/a$a$a;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->d:Lorg/mozilla/javascript/Node;

    if-ne v2, p1, :cond_1

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->c:[I

    aput p2, v2, v1

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->d:Lorg/mozilla/javascript/Node;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->a:Lorg/mozilla/javascript/Node;

    if-ne v0, p1, :cond_0

    :cond_3
    return-void
.end method

.method public e(Lorg/mozilla/javascript/Node;I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/a$a$a;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    aget v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/a$a$a;->d:Lorg/mozilla/javascript/Node;

    if-nez v4, :cond_1

    invoke-virtual {p0, v1, v3, p2}, Lorg/mozilla/javascript/optimizer/a$a;->b(Lorg/mozilla/javascript/optimizer/a$a$a;II)V

    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/a$a$a;->c:[I

    aput v2, v4, v3

    iput-object p1, v1, Lorg/mozilla/javascript/optimizer/a$a$a;->d:Lorg/mozilla/javascript/Node;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/a$a$a;->a:Lorg/mozilla/javascript/Node;

    if-ne v1, p1, :cond_0

    :cond_3
    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method public g(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/a;->a(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/optimizer/a$a$a;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a$a$a;-><init>(Lorg/mozilla/javascript/optimizer/a$a;Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(II)I
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a$a;->c()Lorg/mozilla/javascript/optimizer/a$a$a;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/optimizer/a$a;->b(Lorg/mozilla/javascript/optimizer/a$a$a;II)V

    iget-object p0, v0, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    aput v2, p0, p1

    return v1

    :cond_0
    return v2
.end method

.method public i([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lorg/mozilla/javascript/optimizer/a$a;->a(III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
