.class public final Lss7;
.super Lsy9;
.source "SourceFile"


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lss7;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lss7;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsy9;-><init>()V

    return-void
.end method

.method public static o(Lqw7;[B)Z
    .locals 4

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lqw7;->e()I

    move-result v0

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lqw7;->j([BII)V

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static p(Lqw7;)Z
    .locals 1

    sget-object v0, Lss7;->o:[B

    invoke-static {p0, v0}, Lss7;->o(Lqw7;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public f(Lqw7;)J
    .locals 2

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lss7;->n([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsy9;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public i(Lqw7;JLsy9$b;)Z
    .locals 2

    sget-object p2, Lss7;->o:[B

    invoke-static {p1, p2}, Lss7;->o(Lqw7;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lts7;->c([B)I

    move-result p1

    invoke-static {p0}, Lts7;->a([B)Ljava/util/List;

    move-result-object p0

    iget-object p2, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    if-eqz p2, :cond_0

    return p3

    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    const-string v0, "audio/opus"

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    const p2, 0xbb80

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    iput-object p0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    return p3

    :cond_1
    sget-object p2, Lss7;->p:[B

    invoke-static {p1, p2}, Lss7;->o(Lqw7;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lss7;->n:Z

    if-eqz v0, :cond_2

    return p3

    :cond_2
    iput-boolean p3, p0, Lss7;->n:Z

    array-length p0, p2

    invoke-virtual {p1, p0}, Lqw7;->P(I)V

    invoke-static {p1, v1, v1}, Lagc;->j(Lqw7;ZZ)Lagc$b;

    move-result-object p0

    iget-object p0, p0, Lagc$b;->b:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lagc;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    if-nez p0, :cond_3

    return p3

    :cond_3
    iget-object p1, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object p2, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    iget-object p2, p2, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    iput-object p0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    return p3

    :cond_4
    iget-object p0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    invoke-static {p0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public l(Z)V
    .locals 0

    invoke-super {p0, p1}, Lsy9;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lss7;->n:Z

    :cond_0
    return-void
.end method

.method public final n([B)J
    .locals 5

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x3

    and-int/2addr p0, v1

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const/4 v3, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_1

    aget-byte p0, p1, v2

    and-int/lit8 v3, p0, 0x3f

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    shr-int/lit8 p0, v0, 0x3

    and-int/lit8 p1, p0, 0x3

    const/16 v0, 0x10

    if-lt p0, v0, :cond_2

    const/16 p0, 0x9c4

    shl-int/2addr p0, p1

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    const/16 v4, 0x2710

    if-lt p0, v0, :cond_3

    and-int/2addr p0, v2

    shl-int p0, v4, p0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const p0, 0xea60

    goto :goto_1

    :cond_4
    shl-int p0, v4, p1

    :goto_1
    int-to-long v0, v3

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method
