.class public final Lf1j;
.super Lmmh;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final e:[Ljava/lang/Object;

.field public static final f:Lf1j;


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lf1j;->e:[Ljava/lang/Object;

    new-instance v2, Lf1j;

    invoke-direct {v2, v1, v0, v0}, Lf1j;-><init>([Ljava/lang/Object;IZ)V

    sput-object v2, Lf1j;->f:Lf1j;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;IZ)V
    .locals 0

    invoke-direct {p0, p3}, Lmmh;-><init>(Z)V

    iput-object p1, p0, Lf1j;->c:[Ljava/lang/Object;

    iput p2, p0, Lf1j;->d:I

    return-void
.end method

.method public static f()Lf1j;
    .locals 1

    sget-object v0, Lf1j;->f:Lf1j;

    return-object v0
.end method

.method public static j(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final zzi(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lf1j;->d:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Lf1j;->k(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmmh;->b()V

    if-ltz p1, :cond_1

    iget v0, p0, Lf1j;->d:I

    if-gt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 2
    iget-object v2, p0, Lf1j;->c:[Ljava/lang/Object;

    .line 3
    array-length v3, v2

    if-ge v0, v3, :cond_0

    sub-int/2addr v0, p1

    .line 4
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v3}, Lf1j;->j(I)I

    move-result v0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lf1j;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lf1j;->c:[Ljava/lang/Object;

    iget v3, p0, Lf1j;->d:I

    sub-int/2addr v3, p1

    .line 8
    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    .line 9
    :goto_0
    iget-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    .line 10
    aput-object p2, v0, p1

    iget p1, p0, Lf1j;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf1j;->d:I

    .line 11
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 12
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    invoke-virtual {p0, p1}, Lf1j;->k(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    invoke-virtual {p0}, Lmmh;->b()V

    iget v0, p0, Lf1j;->d:I

    iget-object v1, p0, Lf1j;->c:[Ljava/lang/Object;

    .line 15
    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 16
    invoke-static {v1}, Lf1j;->j(I)I

    move-result v0

    iget-object v1, p0, Lf1j;->c:[Ljava/lang/Object;

    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    iget v1, p0, Lf1j;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lf1j;->d:I

    .line 18
    aput-object p1, v0, v1

    .line 19
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public final bridge synthetic d(I)Lnpi;
    .locals 2

    iget v0, p0, Lf1j;->d:I

    if-lt p1, v0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lf1j;->e:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    new-instance v0, Lf1j;

    iget p0, p0, Lf1j;->d:I

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lf1j;-><init>([Ljava/lang/Object;IZ)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Lmmh;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    iget v3, p0, Lf1j;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    instance-of v4, p1, Lf1j;

    if-eqz v4, :cond_6

    check-cast p1, Lf1j;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_5

    iget-object v4, p0, Lf1j;->c:[Ljava/lang/Object;

    aget-object v4, v4, v1

    iget-object v5, p1, Lf1j;->c:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    move p1, v2

    :goto_1
    if-ge p1, v3, :cond_8

    iget-object v4, p0, Lf1j;->c:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lf1j;->zzi(I)V

    iget-object p0, p0, Lf1j;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lf1j;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lf1j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-static {v0}, Lf1j;->j(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lf1j;->c:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lf1j;->c:[Ljava/lang/Object;

    return-void

    :cond_2
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lf1j;->c:[Ljava/lang/Object;

    return-void
.end method

.method public final k(I)Ljava/lang/String;
    .locals 2

    iget p0, p0, Lf1j;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lmmh;->b()V

    invoke-direct {p0, p1}, Lf1j;->zzi(I)V

    iget-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Lf1j;->d:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lf1j;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lf1j;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lmmh;->b()V

    invoke-direct {p0, p1}, Lf1j;->zzi(I)V

    iget-object v0, p0, Lf1j;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lf1j;->d:I

    return p0
.end method
