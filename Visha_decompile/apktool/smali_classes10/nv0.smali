.class public final Lnv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[C

.field public b:Ljava/io/Reader;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const v0, 0x8000

    .line 9
    invoke-direct {p0, p1, v0}, Lnv0;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnv0;->g:I

    const/16 v0, 0x200

    .line 3
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnv0;->h:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Ldnb;->c(Z)V

    .line 6
    iput-object p1, p0, Lnv0;->b:Ljava/io/Reader;

    const p1, 0x8000

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lnv0;->a:[C

    .line 8
    invoke-virtual {p0}, Lnv0;->b()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lnv0;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public static K([CIILjava/lang/String;)Z
    .locals 4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static c([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    add-int v2, p2, v0

    aget-char v2, p0, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v1, 0x1ff

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    invoke-static {p0, p2, p3, v1}, Lnv0;->K([CIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    aput-object v1, p1, v0

    return-object v1
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lnv0;->b()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lnv0;->c:I

    iget v2, p0, Lnv0;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lnv0;->a:[C

    iget v5, p0, Lnv0;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public varargs B([C)Z
    .locals 4

    invoke-virtual {p0}, Lnv0;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnv0;->b()V

    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    if-ne v3, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public C([C)Z
    .locals 1

    invoke-virtual {p0}, Lnv0;->b()V

    invoke-virtual {p0}, Lnv0;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public D()Z
    .locals 2

    invoke-virtual {p0}, Lnv0;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public E()Z
    .locals 2

    invoke-virtual {p0}, Lnv0;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public F(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lnv0;->b()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lnv0;->c:I

    iget v2, p0, Lnv0;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    iget-object v4, p0, Lnv0;->a:[C

    iget v5, p0, Lnv0;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public G()Z
    .locals 2

    invoke-virtual {p0}, Lnv0;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public H(C)I
    .locals 2

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    :goto_0
    iget v1, p0, Lnv0;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnv0;->a:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    iget p0, p0, Lnv0;->e:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public I(Ljava/lang/CharSequence;)I
    .locals 8

    invoke-virtual {p0}, Lnv0;->b()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget v1, p0, Lnv0;->e:I

    :goto_0
    iget v2, p0, Lnv0;->c:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnv0;->a:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    iget v2, p0, Lnv0;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnv0;->a:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lnv0;->c:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lnv0;->a:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v5, v4, :cond_2

    iget p0, p0, Lnv0;->e:I

    sub-int/2addr v1, p0

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lnv0;->f:I

    iget p0, p0, Lnv0;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public L()V
    .locals 2

    iget v0, p0, Lnv0;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lnv0;->e:I

    invoke-virtual {p0}, Lnv0;->N()V

    return-void

    :cond_0
    new-instance p0, Lorg/jsoup/UncheckedIOException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p0
.end method

.method public M()V
    .locals 2

    iget v0, p0, Lnv0;->e:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lnv0;->e:I

    return-void

    :cond_0
    new-instance p0, Lorg/jsoup/UncheckedIOException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "WTF: No buffer left to unconsume."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p0
.end method

.method public N()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lnv0;->g:I

    return-void
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lnv0;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnv0;->e:I

    return-void
.end method

.method public final b()V
    .locals 14

    iget-boolean v0, p0, Lnv0;->i:Z

    if-nez v0, :cond_8

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->d:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v1, p0, Lnv0;->g:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    :try_start_0
    iget-object v4, p0, Lnv0;->b:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    iget-object v4, p0, Lnv0;->b:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    move v4, v3

    :goto_1
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_4

    iget-object v9, p0, Lnv0;->b:Ljava/io/Reader;

    iget-object v11, p0, Lnv0;->a:[C

    array-length v12, v11

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_2

    iput-boolean v10, p0, Lnv0;->i:Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_2
    if-gtz v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v4, v9

    goto :goto_1

    :cond_4
    :goto_3
    iget-object v9, p0, Lnv0;->b:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_7

    cmp-long v5, v7, v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v10, v3

    :goto_4
    invoke-static {v10}, Ldnb;->c(Z)V

    iput v4, p0, Lnv0;->c:I

    iget v5, p0, Lnv0;->f:I

    add-int/2addr v5, v0

    iput v5, p0, Lnv0;->f:I

    iput v1, p0, Lnv0;->e:I

    iget v0, p0, Lnv0;->g:I

    if-eq v0, v2, :cond_6

    iput v3, p0, Lnv0;->g:I

    :cond_6
    const/16 v0, 0x6000

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnv0;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :goto_5
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v0, p0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_8
    :goto_6
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lnv0;->b:Ljava/io/Reader;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Lnv0;->b:Ljava/io/Reader;

    iput-object v1, p0, Lnv0;->a:[C

    iput-object v1, p0, Lnv0;->h:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lnv0;->b:Ljava/io/Reader;

    iput-object v1, p0, Lnv0;->a:[C

    iput-object v1, p0, Lnv0;->h:[Ljava/lang/String;

    throw v0

    :goto_0
    return-void
.end method

.method public e()C
    .locals 2

    invoke-virtual {p0}, Lnv0;->b()V

    invoke-virtual {p0}, Lnv0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnv0;->a:[C

    iget v1, p0, Lnv0;->e:I

    aget-char v0, v0, v1

    :goto_0
    iget v1, p0, Lnv0;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnv0;->e:I

    return v0
.end method

.method public f(Z)Ljava/lang/String;
    .locals 6

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->c:I

    iget-object v2, p0, Lnv0;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-char v4, v2, v3

    if-eqz v4, :cond_3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iput v3, p0, Lnv0;->e:I

    if-le v3, v0, :cond_4

    iget-object p1, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, p0, v0, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    const-string p0, ""

    :goto_3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->c:I

    iget-object v2, p0, Lnv0;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    if-eqz v4, :cond_0

    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lnv0;->e:I

    if-le v3, v0, :cond_1

    iget-object v1, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, p0, v0, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    :goto_0
    iget v1, p0, Lnv0;->e:I

    iget v2, p0, Lnv0;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnv0;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnv0;->e:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, p0, v0, v1}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    :goto_0
    iget v1, p0, Lnv0;->e:I

    iget v2, p0, Lnv0;->c:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnv0;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnv0;->e:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, p0, v0, v1}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    :goto_0
    iget v1, p0, Lnv0;->e:I

    iget v2, p0, Lnv0;->c:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnv0;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lnv0;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnv0;->e:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnv0;->a:[C

    iget-object v2, p0, Lnv0;->h:[Ljava/lang/String;

    iget p0, p0, Lnv0;->e:I

    sub-int/2addr p0, v0

    invoke-static {v1, v2, v0, p0}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    :goto_0
    iget v1, p0, Lnv0;->e:I

    iget v2, p0, Lnv0;->c:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnv0;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lnv0;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnv0;->e:I

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lnv0;->v()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lnv0;->a:[C

    iget v2, p0, Lnv0;->e:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-gt v1, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnv0;->e:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lnv0;->a:[C

    iget-object v2, p0, Lnv0;->h:[Ljava/lang/String;

    iget p0, p0, Lnv0;->e:I

    sub-int/2addr p0, v0

    invoke-static {v1, v2, v0, p0}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->c:I

    iget-object v2, p0, Lnv0;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    if-eqz v4, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lnv0;->e:I

    if-le v3, v0, :cond_1

    iget-object v1, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, p0, v0, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->c:I

    iget-object v2, p0, Lnv0;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lnv0;->e:I

    if-le v3, v0, :cond_1

    iget-object v1, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, p0, v0, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public n(C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lnv0;->H(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lnv0;->a:[C

    iget-object v1, p0, Lnv0;->h:[Ljava/lang/String;

    iget v2, p0, Lnv0;->e:I

    invoke-static {v0, v1, v2, p1}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnv0;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lnv0;->e:I

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnv0;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lnv0;->I(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lnv0;->a:[C

    iget-object v1, p0, Lnv0;->h:[Ljava/lang/String;

    iget v2, p0, Lnv0;->e:I

    invoke-static {p1, v1, v2, v0}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lnv0;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lnv0;->e:I

    return-object p1

    :cond_0
    iget v0, p0, Lnv0;->c:I

    iget v1, p0, Lnv0;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lnv0;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lnv0;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lnv0;->a:[C

    iget-object v1, p0, Lnv0;->h:[Ljava/lang/String;

    iget v2, p0, Lnv0;->e:I

    sub-int v3, v0, v2

    invoke-static {p1, v1, v2, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput v0, p0, Lnv0;->e:I

    return-object p1
.end method

.method public varargs p([C)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->c:I

    iget-object v2, p0, Lnv0;->a:[C

    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iput v4, p0, Lnv0;->e:I

    if-le v4, v0, :cond_3

    iget-object p1, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, p0, v0, v4}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string p0, ""

    :goto_3
    return-object p0
.end method

.method public varargs q([C)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    iget v1, p0, Lnv0;->c:I

    iget-object v2, p0, Lnv0;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v3, p0, Lnv0;->e:I

    if-le v3, v0, :cond_2

    iget-object p1, p0, Lnv0;->a:[C

    iget-object p0, p0, Lnv0;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, p0, v0, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnv0;->b()V

    iget-object v0, p0, Lnv0;->a:[C

    iget-object v1, p0, Lnv0;->h:[Ljava/lang/String;

    iget v2, p0, Lnv0;->e:I

    iget v3, p0, Lnv0;->c:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lnv0;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnv0;->c:I

    iput v1, p0, Lnv0;->e:I

    return-object v0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lnv0;->I(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lnv0;->I(Ljava/lang/CharSequence;)I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public t()C
    .locals 1

    invoke-virtual {p0}, Lnv0;->b()V

    invoke-virtual {p0}, Lnv0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnv0;->c:I

    iget v1, p0, Lnv0;->e:I

    sub-int v2, v0, v1

    if-gez v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lnv0;->a:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public u()Z
    .locals 1

    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    iget p0, p0, Lnv0;->c:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v()Z
    .locals 1

    iget v0, p0, Lnv0;->e:I

    iget p0, p0, Lnv0;->c:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public w()V
    .locals 2

    iget v0, p0, Lnv0;->c:I

    iget v1, p0, Lnv0;->e:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnv0;->d:I

    :cond_0
    invoke-virtual {p0}, Lnv0;->b()V

    iget v0, p0, Lnv0;->e:I

    iput v0, p0, Lnv0;->g:I

    return-void
.end method

.method public x(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lnv0;->b()V

    invoke-virtual {p0, p1}, Lnv0;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnv0;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lnv0;->e:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnv0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnv0;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lnv0;->e:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public z(C)Z
    .locals 1

    invoke-virtual {p0}, Lnv0;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnv0;->a:[C

    iget p0, p0, Lnv0;->e:I

    aget-char p0, v0, p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
