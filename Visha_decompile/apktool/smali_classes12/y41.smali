.class public Ly41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:[C

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly41;->a:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Ly41;->b:I

    const/16 v0, 0x8

    iput v0, p0, Ly41;->c:I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Ly41;->d:[C

    return-void
.end method

.method public static c(I)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x37

    :goto_0
    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    invoke-virtual {p0, p1}, Ly41;->d(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Ly41;->e:I

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly41;->e:I

    return-void
.end method

.method public final d(I)I
    .locals 3

    iget v0, p0, Ly41;->e:I

    add-int/2addr p1, v0

    iget-object v1, p0, Ly41;->d:[C

    array-length v2, v1

    if-le p1, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    new-array p1, p1, [C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Ly41;->d:[C

    :cond_1
    return v0
.end method

.method public e(II)V
    .locals 2

    iget-object v0, p0, Ly41;->d:[C

    iget v1, p0, Ly41;->e:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ly41;->e:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Ly41;->e:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly41;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Ly41;->e:I

    return p0
.end method

.method public h(I)V
    .locals 4

    iget v0, p0, Ly41;->b:I

    mul-int/2addr v0, p1

    iget p1, p0, Ly41;->c:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    div-int v1, v0, p1

    rem-int/2addr v0, p1

    add-int/2addr v0, v1

    move p1, v1

    :goto_0
    invoke-virtual {p0, v0}, Ly41;->a(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, v1

    :goto_1
    if-eq v1, p1, :cond_1

    iget-object v2, p0, Ly41;->d:[C

    const/16 v3, 0x9

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eq v1, v0, :cond_2

    iget-object p1, p0, Ly41;->d:[C

    const/16 v2, 0x20

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public i(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly41;->h(I)V

    invoke-virtual {p0, p2}, Ly41;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly41;->j()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Ly41;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly41;->m(Ljava/lang/String;)V

    return-void
.end method

.method public k(C)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ly41;->a(I)I

    move-result v0

    iget-object p0, p0, Ly41;->d:[C

    aput-char p1, p0, v0

    return-void
.end method

.method public l(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly41;->m(Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ly41;->a(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object p0, p0, Ly41;->d:[C

    invoke-virtual {p1, v2, v0, p0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final n(IIZ)I
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const/16 v0, 0x22

    if-eq p2, v0, :cond_3

    const/16 v0, 0x27

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p3, 0x0

    goto :goto_1

    :pswitch_0
    const/16 p2, 0x6e

    :goto_0
    move p3, v1

    goto :goto_1

    :pswitch_1
    const/16 p2, 0x74

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x62

    goto :goto_0

    :cond_0
    xor-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    const/16 p2, 0x72

    goto :goto_0

    :cond_2
    const/16 p2, 0x66

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v0, 0x5c

    if-eqz p3, :cond_4

    iget-object p0, p0, Ly41;->d:[C

    aput-char v0, p0, p1

    add-int/lit8 p3, p1, 0x1

    int-to-char p2, p2

    aput-char p2, p0, p3

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_4
    const/16 p3, 0x20

    if-gt p3, p2, :cond_5

    const/16 p3, 0x7e

    if-gt p2, p3, :cond_5

    iget-object p0, p0, Ly41;->d:[C

    int-to-char p2, p2

    aput-char p2, p0, p1

    add-int/2addr p1, v1

    goto :goto_2

    :cond_5
    iget-object p3, p0, Ly41;->d:[C

    aput-char v0, p3, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x75

    aput-char v1, p3, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ly41;->c(I)C

    move-result v1

    aput-char v1, p3, v0

    iget-object p3, p0, Ly41;->d:[C

    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ly41;->c(I)C

    move-result v1

    aput-char v1, p3, v0

    iget-object p3, p0, Ly41;->d:[C

    add-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ly41;->c(I)C

    move-result v1

    aput-char v1, p3, v0

    iget-object p0, p0, Ly41;->d:[C

    add-int/lit8 p3, p1, 0x5

    and-int/lit8 p2, p2, 0xf

    invoke-static {p2}, Ly41;->c(I)C

    move-result p2

    aput-char p2, p0, p3

    add-int/lit8 p1, p1, 0x6

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(I)V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ly41;->d(I)I

    move-result v0

    iget-object v1, p0, Ly41;->d:[C

    const/16 v2, 0x27

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ly41;->n(IIZ)I

    move-result p1

    iget-object v0, p0, Ly41;->d:[C

    aput-char v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly41;->e:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ly41;->d(I)I

    move-result v1

    iget-object v2, p0, Ly41;->d:[C

    const/16 v3, 0x22

    aput-char v3, v2, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v1, v5, v2}, Ly41;->n(IIZ)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ly41;->d:[C

    aput-char v3, p1, v1

    add-int/2addr v1, v2

    iput v1, p0, Ly41;->e:I

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Ly41;->b:I

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Ly41;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ly41;->d:[C

    const/4 v2, 0x0

    iget p0, p0, Ly41;->e:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
