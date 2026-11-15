.class public Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private lastPosition:I

.field private position:I

.field private final view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iput p2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    iget-object p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    iput v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    iget-object p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
