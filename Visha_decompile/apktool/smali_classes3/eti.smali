.class public final Leti;
.super Liri;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lxsi;
.implements Lwti;


# static fields
.field public static final e:[J

.field public static final f:Leti;


# instance fields
.field public c:[J

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Leti;->e:[J

    new-instance v2, Leti;

    invoke-direct {v2, v1, v0, v0}, Leti;-><init>([JIZ)V

    sput-object v2, Leti;->f:Leti;

    return-void
.end method

.method public constructor <init>([JIZ)V
    .locals 0

    invoke-direct {p0, p3}, Liri;-><init>(Z)V

    iput-object p1, p0, Leti;->c:[J

    iput p2, p0, Leti;->d:I

    return-void
.end method

.method public static j()Leti;
    .locals 1

    sget-object v0, Leti;->f:Leti;

    return-object v0
.end method

.method public static k(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Liri;->b()V

    if-ltz p1, :cond_1

    iget p2, p0, Leti;->d:I

    if-gt p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 4
    iget-object v3, p0, Leti;->c:[J

    .line 5
    array-length v4, v3

    if-ge p2, v4, :cond_0

    sub-int/2addr p2, p1

    .line 6
    invoke-static {v3, p1, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v4}, Leti;->k(I)I

    move-result p2

    .line 8
    new-array p2, p2, [J

    iget-object v3, p0, Leti;->c:[J

    const/4 v4, 0x0

    .line 9
    invoke-static {v3, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Leti;->c:[J

    iget v4, p0, Leti;->d:I

    sub-int/2addr v4, p1

    .line 10
    invoke-static {v3, p1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Leti;->c:[J

    .line 11
    :goto_0
    iget-object p2, p0, Leti;->c:[J

    .line 12
    aput-wide v0, p2, p1

    iget p1, p0, Leti;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Leti;->d:I

    .line 13
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    invoke-virtual {p0, p1}, Leti;->l(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .line 16
    check-cast p1, Ljava/lang/Long;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Leti;->i(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    invoke-virtual {p0}, Liri;->b()V

    sget-object v0, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Leti;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Liri;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_0
    check-cast p1, Leti;

    iget v0, p1, Leti;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v2, p0, Leti;->d:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3

    add-int/2addr v2, v0

    iget-object v0, p0, Leti;->c:[J

    array-length v3, v0

    if-le v2, v3, :cond_2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Leti;->c:[J

    :cond_2
    iget-object v0, p1, Leti;->c:[J

    iget-object v3, p0, Leti;->c:[J

    iget v4, p0, Leti;->d:I

    iget p1, p1, Leti;->d:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Leti;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public final c(I)J
    .locals 0

    invoke-virtual {p0, p1}, Leti;->m(I)V

    iget-object p0, p0, Leti;->c:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Leti;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic e(I)Lysi;
    .locals 0

    invoke-virtual {p0, p1}, Leti;->zze(I)Lxsi;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Leti;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Liri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Leti;

    iget v1, p0, Leti;->d:I

    iget v2, p1, Leti;->d:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Leti;->c:[J

    move v1, v3

    :goto_0
    iget v2, p0, Leti;->d:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Leti;->c:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final f(IJ)J
    .locals 2

    invoke-virtual {p0}, Liri;->b()V

    invoke-virtual {p0, p1}, Leti;->m(I)V

    iget-object p0, p0, Leti;->c:[J

    aget-wide v0, p0, p1

    aput-wide p2, p0, p1

    return-wide v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Leti;->m(I)V

    iget-object p0, p0, Leti;->c:[J

    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget v3, p0, Leti;->d:I

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Leti;->c:[J

    aget-wide v3, v3, v0

    sget-object v5, Lzsi;->a:Ljava/nio/charset/Charset;

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final i(J)V
    .locals 4

    invoke-virtual {p0}, Liri;->b()V

    iget v0, p0, Leti;->d:I

    iget-object v1, p0, Leti;->c:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Leti;->k(I)I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Leti;->c:[J

    iget v2, p0, Leti;->d:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Leti;->c:[J

    :cond_0
    iget-object v0, p0, Leti;->c:[J

    iget v1, p0, Leti;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Leti;->d:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 6

    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget p1, p0, Leti;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v4, p0, Leti;->c:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final l(I)Ljava/lang/String;
    .locals 2

    iget p0, p0, Leti;->d:I

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

.method public final m(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Leti;->d:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Leti;->l(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Liri;->b()V

    invoke-virtual {p0, p1}, Leti;->m(I)V

    iget-object v0, p0, Leti;->c:[J

    aget-wide v1, v0, p1

    iget v3, p0, Leti;->d:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Leti;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Leti;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final removeRange(II)V
    .locals 2

    invoke-virtual {p0}, Liri;->b()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Leti;->c:[J

    iget v1, p0, Leti;->d:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Leti;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Leti;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "toIndex < fromIndex"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Leti;->f(IJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Leti;->d:I

    return p0
.end method

.method public final zze(I)Lxsi;
    .locals 2

    iget v0, p0, Leti;->d:I

    if-lt p1, v0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Leti;->e:[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leti;->c:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    :goto_0
    new-instance v0, Leti;

    iget p0, p0, Leti;->d:I

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Leti;-><init>([JIZ)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final zzi(I)V
    .locals 1

    iget-object v0, p0, Leti;->c:[J

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-static {v0}, Leti;->k(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Leti;->c:[J

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Leti;->c:[J

    return-void

    :cond_2
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Leti;->c:[J

    return-void
.end method
