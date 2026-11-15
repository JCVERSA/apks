.class public abstract Lad0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqi3;


# instance fields
.field public final a:Lzua;

.field public final b:I

.field public final c:[I

.field public final d:I

.field public final e:[Lcom/google/android/exoplayer2/k;

.field public final f:[J

.field public g:I


# direct methods
.method public constructor <init>(Lzua;[II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iput p3, p0, Lad0;->d:I

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzua;

    iput-object p3, p0, Lad0;->a:Lzua;

    array-length p3, p2

    iput p3, p0, Lad0;->b:I

    new-array p3, p3, [Lcom/google/android/exoplayer2/k;

    iput-object p3, p0, Lad0;->e:[Lcom/google/android/exoplayer2/k;

    move p3, v1

    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lad0;->e:[Lcom/google/android/exoplayer2/k;

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v2

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lad0;->e:[Lcom/google/android/exoplayer2/k;

    new-instance p3, Lyc0;

    invoke-direct {p3}, Lyc0;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lad0;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lad0;->c:[I

    :goto_2
    iget p2, p0, Lad0;->b:I

    if-ge v1, p2, :cond_2

    iget-object p2, p0, Lad0;->c:[I

    iget-object p3, p0, Lad0;->e:[Lcom/google/android/exoplayer2/k;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Lzua;->d(Lcom/google/android/exoplayer2/k;)I

    move-result p3

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lad0;->f:[J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;)I
    .locals 0

    invoke-static {p0, p1}, Lad0;->b(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;)I
    .locals 0

    iget p1, p1, Lcom/google/android/exoplayer2/k;->i:I

    iget p0, p0, Lcom/google/android/exoplayer2/k;->i:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lad0;

    iget-object v2, p0, Lad0;->a:Lzua;

    iget-object v3, p1, Lad0;->a:Lzua;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lad0;->c:[I

    iget-object p1, p1, Lad0;->c:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer2/k;
    .locals 0

    iget-object p0, p0, Lad0;->e:[Lcom/google/android/exoplayer2/k;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 0

    iget-object p0, p0, Lad0;->c:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getSelectedFormat()Lcom/google/android/exoplayer2/k;
    .locals 1

    iget-object v0, p0, Lad0;->e:[Lcom/google/android/exoplayer2/k;

    invoke-interface {p0}, Lqi3;->getSelectedIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final getTrackGroup()Lzua;
    .locals 0

    iget-object p0, p0, Lad0;->a:Lzua;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lad0;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lad0;->a:Lzua;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lad0;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lad0;->g:I

    :cond_0
    iget p0, p0, Lad0;->g:I

    return p0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lad0;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lad0;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lad0;->c:[I

    array-length p0, p0

    return p0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    return-void
.end method
