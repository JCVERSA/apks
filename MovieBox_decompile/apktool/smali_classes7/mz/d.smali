.class public Lmz/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/io/File;

.field private b:[Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmz/d;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmz/d;->c:I

    .line 5
    iput-object p1, p0, Lmz/d;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lmz/d;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {p0, p2}, Lmz/d;->a([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmz/d;->b:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v2, v0

    .line 9
    :goto_0
    array-length v3, p1

    .line 10
    add-int/2addr v3, v2

    .line 11
    new-array v3, v3, [Ljava/lang/String;

    .line 12
    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v3, p0, Lmz/d;->b:[Ljava/lang/String;

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public b()Lmz/c;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmz/d;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lmz/c;

    .line 8
    .line 9
    iget-object v1, p0, Lmz/d;->a:Ljava/io/File;

    .line 10
    .line 11
    iget-object v2, p0, Lmz/d;->b:[Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lmz/d;->c:I

    .line 14
    .line 15
    add-int/lit8 v4, v3, 0x1

    .line 16
    .line 17
    iput v4, p0, Lmz/d;->c:I

    .line 18
    .line 19
    aget-object v2, v2, v3

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lmz/c;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lmz/d;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lmz/d;->b:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmz/d;->b()Lmz/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
