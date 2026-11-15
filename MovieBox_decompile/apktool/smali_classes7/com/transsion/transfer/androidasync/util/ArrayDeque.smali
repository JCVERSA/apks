.class public Lcom/transsion/transfer/androidasync/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "source.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;,
        Lcom/transsion/transfer/androidasync/util/ArrayDeque$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->allocateElements(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->allocateElements(I)V

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private allocateElements(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    ushr-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    ushr-int/lit8 v0, p1, 0x2

    .line 9
    .line 10
    or-int/2addr p1, v0

    .line 11
    ushr-int/lit8 v0, p1, 0x4

    .line 12
    .line 13
    or-int/2addr p1, v0

    .line 14
    ushr-int/lit8 v0, p1, 0x8

    .line 15
    .line 16
    or-int/2addr p1, v0

    .line 17
    ushr-int/lit8 v0, p1, 0x10

    .line 18
    .line 19
    or-int/2addr p1, v0

    .line 20
    add-int/lit8 v0, p1, 0x1

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    ushr-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 29
    .line 30
    return-void
.end method

.method static bridge synthetic b(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 2
    .line 3
    return p0
.end method

.method private checkInvariants()V
    .locals 0

    .line 1
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-le v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 21
    .line 22
    array-length v3, v1

    .line 23
    sub-int/2addr v3, v0

    .line 24
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 30
    .line 31
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-object p1
.end method

.method private delete(I)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->checkInvariants()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    iget v3, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 10
    .line 11
    iget v4, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 12
    .line 13
    sub-int v5, p1, v3

    .line 14
    .line 15
    and-int/2addr v5, v1

    .line 16
    sub-int v6, v4, p1

    .line 17
    .line 18
    and-int/2addr v6, v1

    .line 19
    sub-int v7, v4, v3

    .line 20
    .line 21
    and-int/2addr v7, v1

    .line 22
    if-ge v5, v7, :cond_3

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-ge v5, v6, :cond_1

    .line 26
    .line 27
    if-gt v3, p1, :cond_0

    .line 28
    .line 29
    add-int/lit8 p1, v3, 0x1

    .line 30
    .line 31
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    aget-object p1, v0, v1

    .line 39
    .line 40
    aput-object p1, v0, v7

    .line 41
    .line 42
    add-int/lit8 p1, v3, 0x1

    .line 43
    .line 44
    sub-int v4, v1, v3

    .line 45
    .line 46
    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 p1, 0x0

    .line 50
    aput-object p1, v0, v3

    .line 51
    .line 52
    add-int/2addr v3, v2

    .line 53
    and-int p1, v3, v1

    .line 54
    .line 55
    iput p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 56
    .line 57
    return v7

    .line 58
    :cond_1
    if-ge p1, v4, :cond_2

    .line 59
    .line 60
    add-int/lit8 v1, p1, 0x1

    .line 61
    .line 62
    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    sub-int/2addr v4, v2

    .line 66
    iput v4, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v3, p1, 0x1

    .line 70
    .line 71
    sub-int v5, v1, p1

    .line 72
    .line 73
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    aget-object p1, v0, v7

    .line 77
    .line 78
    aput-object p1, v0, v1

    .line 79
    .line 80
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    sub-int/2addr v4, v2

    .line 84
    and-int p1, v4, v1

    .line 85
    .line 86
    iput p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 87
    .line 88
    :goto_1
    return v2

    .line 89
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method private doubleCapacity()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    sub-int v3, v2, v0

    .line 7
    .line 8
    shl-int/lit8 v4, v2, 0x1

    .line 9
    .line 10
    if-ltz v4, :cond_0

    .line 11
    .line 12
    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iput-object v4, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 24
    .line 25
    iput v5, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 26
    .line 27
    iput v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "Sorry, deque too big"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/util/ArrayDeque;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->delete(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->allocateElements(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 13
    .line 14
    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    aput-object v3, v2, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 17
    .line 18
    :goto_0
    iget v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    and-int/2addr v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    iput v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 14
    .line 15
    aput-object p1, v0, v1

    .line 16
    .line 17
    iget p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->doubleCapacity()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string v0, "e == null"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 6
    .line 7
    aput-object p1, v0, v1

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    array-length p1, v0

    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    and-int/2addr p1, v1

    .line 15
    iput p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 16
    .line 17
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->doubleCapacity()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string v0, "e == null"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public clear()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 9
    .line 10
    iput v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v4, v3, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    and-int/2addr v0, v2

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public clone()Lcom/transsion/transfer/androidasync/util/ArrayDeque;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/transfer/androidasync/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->clone()Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    iget v3, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 11
    .line 12
    :goto_0
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 13
    .line 14
    aget-object v4, v4, v3

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    and-int/2addr v3, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque$b;-><init>(Lcom/transsion/transfer/androidasync/util/ArrayDeque;Lcom/transsion/transfer/androidasync/util/b;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;-><init>(Lcom/transsion/transfer/androidasync/util/ArrayDeque;Lcom/transsion/transfer/androidasync/util/b;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 4
    .line 5
    aget-object v2, v1, v0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    aput-object v3, v1, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    and-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 20
    .line 21
    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    and-int/2addr v0, v2

    .line 11
    aget-object v2, v1, v0

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    aput-object v3, v1, v0

    .line 18
    .line 19
    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 20
    .line 21
    return-object v2
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    iget v3, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 11
    .line 12
    :goto_0
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 13
    .line 14
    aget-object v4, v4, v3

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, v3}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->delete(I)Z

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    and-int/2addr v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    iget v3, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 11
    .line 12
    sub-int/2addr v3, v2

    .line 13
    :goto_0
    and-int/2addr v3, v1

    .line 14
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v4, v4, v3

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v3}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->delete(I)Z

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->tail:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->head:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    move-result v0

    .line 3
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 5
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 8
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method
