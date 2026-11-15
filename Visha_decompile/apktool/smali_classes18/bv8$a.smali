.class public final Lbv8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbv8;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Ljava/util/ListIterator;

.field public final synthetic c:Lbv8;


# direct methods
.method public constructor <init>(Lbv8;I)V
    .locals 1

    iput-object p1, p0, Lbv8$a;->c:Lbv8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbv8;->b(Lbv8;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Le81;->Q(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .locals 1

    iget-object v0, p0, Lbv8$a;->c:Lbv8;

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    invoke-static {v0, p0}, Le81;->P(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .locals 1

    iget-object v0, p0, Lbv8$a;->c:Lbv8;

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    invoke-static {v0, p0}, Le81;->P(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lbv8$a;->b:Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
