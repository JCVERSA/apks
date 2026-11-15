.class public Lj40;
.super Lm1;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:[Lm1;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    invoke-direct {p0, p1, v0}, Lj40;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lj40;-><init>([B[Lm1;I)V

    return-void
.end method

.method public constructor <init>([B[Lm1;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lm1;-><init>([B)V

    iput-object p2, p0, Lj40;->f:[Lm1;

    iput p3, p0, Lj40;->e:I

    return-void
.end method

.method public constructor <init>([Lm1;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 4
    invoke-direct {p0, p1, v0}, Lj40;-><init>([Lm1;I)V

    return-void
.end method

.method public constructor <init>([Lm1;I)V
    .locals 1

    .line 5
    invoke-static {p1}, Lj40;->B([Lm1;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lj40;-><init>([B[Lm1;I)V

    return-void
.end method

.method public static B([Lm1;)[B
    .locals 7

    array-length v0, p0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, p0, v1

    iget-object v4, v4, Lm1;->b:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [B

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v5, p0, v3

    iget-object v5, v5, Lm1;->b:[B

    array-length v6, v5

    invoke-static {v5, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    aget-object p0, p0, v2

    iget-object p0, p0, Lm1;->b:[B

    return-object p0

    :cond_3
    sget-object p0, Lm1;->d:[B

    return-object p0
.end method


# virtual methods
.method public n(Lo1;Z)V
    .locals 4

    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lo1;->s(ZI)V

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lo1;->i(I)V

    iget-object p2, p0, Lj40;->f:[Lm1;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lo1;->x([Lp1;)V

    goto :goto_1

    :cond_0
    move p2, v0

    :goto_0
    iget-object v1, p0, Lm1;->b:[B

    array-length v2, v1

    if-ge p2, v2, :cond_1

    array-length v1, v1

    sub-int/2addr v1, p2

    iget v2, p0, Lj40;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lm1;->b:[B

    invoke-static {p1, v2, v3, p2, v1}, Lwp1;->B(Lo1;Z[BII)V

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lo1;->i(I)V

    invoke-virtual {p1, v0}, Lo1;->i(I)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public q(Z)I
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iget-object v0, p0, Lj40;->f:[Lm1;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lj40;->f:[Lm1;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lp1;->q(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lm1;->b:[B

    array-length v0, v0

    iget v2, p0, Lj40;->e:I

    div-int/2addr v0, v2

    invoke-static {v1, v2}, Lwp1;->C(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    iget-object v2, p0, Lm1;->b:[B

    array-length v2, v2

    iget p0, p0, Lj40;->e:I

    mul-int/2addr v0, p0

    sub-int/2addr v2, v0

    if-lez v2, :cond_2

    invoke-static {v1, v2}, Lwp1;->C(ZI)I

    move-result p0

    add-int/2addr p1, p0

    :cond_2
    return p1
.end method
