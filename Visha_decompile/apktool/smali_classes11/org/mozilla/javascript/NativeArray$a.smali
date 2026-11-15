.class public Lorg/mozilla/javascript/NativeArray$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lorg/mozilla/javascript/NativeArray;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeArray;II)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray$a;->e:Lorg/mozilla/javascript/NativeArray;

    iput p2, p0, Lorg/mozilla/javascript/NativeArray$a;->c:I

    iput p3, p0, Lorg/mozilla/javascript/NativeArray$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    iget p0, p0, Lorg/mozilla/javascript/NativeArray$a;->d:I

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

    iget p0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$a;->d:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray$a;->e:Lorg/mozilla/javascript/NativeArray;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray$a;->e:Lorg/mozilla/javascript/NativeArray;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/NativeArray$a;->b:I

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
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
