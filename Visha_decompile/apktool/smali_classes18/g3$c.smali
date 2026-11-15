.class public Lg3$c;
.super Lg3$b;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lg3;


# direct methods
.method public constructor <init>(Lg3;I)V
    .locals 1

    iput-object p1, p0, Lg3$c;->d:Lg3;

    invoke-direct {p0, p1}, Lg3$b;-><init>(Lg3;)V

    sget-object v0, Lg3;->Companion:Lg3$a;

    invoke-virtual {p1}, Lr2;->size()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lg3$a;->c(II)V

    invoke-virtual {p0, p2}, Lg3$b;->c(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lg3$b;->b()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lg3$b;->b()I

    move-result p0

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lg3$c;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg3$c;->d:Lg3;

    invoke-virtual {p0}, Lg3$b;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lg3$b;->c(I)V

    invoke-virtual {p0}, Lg3$b;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lg3;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lg3$b;->b()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
