.class public Lxl9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:[I

.field public f:[I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Ljava/io/Reader;

.field public l:[C

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lxl9;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lxl9;->d:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lxl9;->i:Z

    .line 4
    iput-boolean v0, p0, Lxl9;->j:Z

    .line 5
    iput v0, p0, Lxl9;->m:I

    .line 6
    iput v0, p0, Lxl9;->n:I

    .line 7
    iput-object p1, p0, Lxl9;->k:Ljava/io/Reader;

    .line 8
    iput p2, p0, Lxl9;->h:I

    add-int/lit8 p3, p3, -0x1

    .line 9
    iput p3, p0, Lxl9;->g:I

    .line 10
    iput p4, p0, Lxl9;->a:I

    iput p4, p0, Lxl9;->b:I

    .line 11
    new-array p1, p4, [C

    iput-object p1, p0, Lxl9;->l:[C

    .line 12
    new-array p1, p4, [I

    iput-object p1, p0, Lxl9;->e:[I

    .line 13
    new-array p1, p4, [I

    iput-object p1, p0, Lxl9;->f:[I

    return-void
.end method


# virtual methods
.method public a()C
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lxl9;->c:I

    invoke-virtual {p0}, Lxl9;->l()C

    move-result v0

    iget v1, p0, Lxl9;->d:I

    iput v1, p0, Lxl9;->c:I

    return v0
.end method

.method public b(Z)V
    .locals 6

    iget v0, p0, Lxl9;->a:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lxl9;->l:[C

    iget v5, p0, Lxl9;->c:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lxl9;->l:[C

    iget v0, p0, Lxl9;->a:I

    iget v5, p0, Lxl9;->c:I

    sub-int/2addr v0, v5

    iget v5, p0, Lxl9;->d:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lxl9;->l:[C

    iget-object p1, p0, Lxl9;->e:[I

    iget v0, p0, Lxl9;->c:I

    iget v1, p0, Lxl9;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lxl9;->e:[I

    iget v0, p0, Lxl9;->a:I

    iget v1, p0, Lxl9;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lxl9;->d:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lxl9;->e:[I

    iget-object p1, p0, Lxl9;->f:[I

    iget v0, p0, Lxl9;->c:I

    iget v1, p0, Lxl9;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lxl9;->f:[I

    iget v0, p0, Lxl9;->a:I

    iget v1, p0, Lxl9;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lxl9;->d:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lxl9;->f:[I

    iget p1, p0, Lxl9;->d:I

    iget v0, p0, Lxl9;->a:I

    iget v1, p0, Lxl9;->c:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lxl9;->d:I

    iput p1, p0, Lxl9;->m:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lxl9;->l:[C

    iget v5, p0, Lxl9;->c:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lxl9;->l:[C

    iget-object p1, p0, Lxl9;->e:[I

    iget v0, p0, Lxl9;->c:I

    iget v1, p0, Lxl9;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lxl9;->e:[I

    iget-object p1, p0, Lxl9;->f:[I

    iget v0, p0, Lxl9;->c:I

    iget v1, p0, Lxl9;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lxl9;->f:[I

    iget p1, p0, Lxl9;->d:I

    iget v0, p0, Lxl9;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lxl9;->d:I

    iput p1, p0, Lxl9;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget p1, p0, Lxl9;->a:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lxl9;->a:I

    iput p1, p0, Lxl9;->b:I

    iput v4, p0, Lxl9;->c:I

    return-void

    :goto_1
    new-instance p1, Ljava/lang/Error;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 7

    iget v0, p0, Lxl9;->m:I

    iget v1, p0, Lxl9;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Lxl9;->a:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_2

    iget v0, p0, Lxl9;->c:I

    if-le v0, v4, :cond_0

    iput v3, p0, Lxl9;->m:I

    iput v3, p0, Lxl9;->d:I

    iput v0, p0, Lxl9;->b:I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    iput v3, p0, Lxl9;->m:I

    iput v3, p0, Lxl9;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lxl9;->b(Z)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lxl9;->c:I

    if-le v1, v5, :cond_3

    iput v0, p0, Lxl9;->b:I

    goto :goto_0

    :cond_3
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v2}, Lxl9;->b(Z)V

    goto :goto_0

    :cond_4
    iput v5, p0, Lxl9;->b:I

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lxl9;->k:Ljava/io/Reader;

    iget-object v4, p0, Lxl9;->l:[C

    iget v5, p0, Lxl9;->m:I

    iget v6, p0, Lxl9;->b:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_6

    iget v4, p0, Lxl9;->m:I

    add-int/2addr v4, v1

    iput v4, p0, Lxl9;->m:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lxl9;->k:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v4, p0, Lxl9;->d:I

    sub-int/2addr v4, v2

    iput v4, p0, Lxl9;->d:I

    invoke-virtual {p0, v3}, Lxl9;->g(I)V

    iget v2, p0, Lxl9;->c:I

    if-ne v2, v0, :cond_7

    iget v0, p0, Lxl9;->d:I

    iput v0, p0, Lxl9;->c:I

    :cond_7
    throw v1
.end method

.method public d()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lxl9;->d:I

    iget v1, p0, Lxl9;->c:I

    if-lt v0, v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lxl9;->l:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lxl9;->l:[C

    iget v3, p0, Lxl9;->c:I

    iget v4, p0, Lxl9;->a:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lxl9;->l:[C

    iget p0, p0, Lxl9;->d:I

    add-int/lit8 p0, p0, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(I)[C
    .locals 6

    new-array v0, p1, [C

    iget v1, p0, Lxl9;->d:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    iget-object p0, p0, Lxl9;->l:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lxl9;->l:[C

    iget v4, p0, Lxl9;->a:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxl9;->l:[C

    iget p0, p0, Lxl9;->d:I

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p0, p0, 0x1

    invoke-static {v1, v3, v0, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method public f(C)V
    .locals 4

    iget v0, p0, Lxl9;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lxl9;->g:I

    iget-boolean v0, p0, Lxl9;->j:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lxl9;->j:Z

    iget v0, p0, Lxl9;->h:I

    iput v1, p0, Lxl9;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lxl9;->h:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lxl9;->i:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lxl9;->i:Z

    if-ne p1, v2, :cond_1

    iput-boolean v1, p0, Lxl9;->j:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lxl9;->h:I

    iput v1, p0, Lxl9;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lxl9;->h:I

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lxl9;->i:Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lxl9;->j:Z

    goto :goto_1

    :cond_5
    iget p1, p0, Lxl9;->g:I

    sub-int/2addr p1, v1

    and-int/lit8 v0, p1, 0x7

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    iput p1, p0, Lxl9;->g:I

    :goto_1
    iget-object p1, p0, Lxl9;->e:[I

    iget v0, p0, Lxl9;->d:I

    iget v1, p0, Lxl9;->h:I

    aput v1, p1, v0

    iget-object p1, p0, Lxl9;->f:[I

    iget p0, p0, Lxl9;->g:I

    aput p0, p1, v0

    return-void
.end method

.method public g(I)V
    .locals 1

    iget v0, p0, Lxl9;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lxl9;->n:I

    iget v0, p0, Lxl9;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lxl9;->d:I

    if-gez v0, :cond_0

    iget p1, p0, Lxl9;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lxl9;->d:I

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lxl9;->f:[I

    iget p0, p0, Lxl9;->c:I

    aget p0, v0, p0

    return p0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lxl9;->e:[I

    iget p0, p0, Lxl9;->c:I

    aget p0, v0, p0

    return p0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lxl9;->f:[I

    iget p0, p0, Lxl9;->d:I

    aget p0, v0, p0

    return p0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lxl9;->e:[I

    iget p0, p0, Lxl9;->d:I

    aget p0, v0, p0

    return p0
.end method

.method public l()C
    .locals 2

    iget v0, p0, Lxl9;->n:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lxl9;->n:I

    iget v0, p0, Lxl9;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lxl9;->d:I

    iget v1, p0, Lxl9;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lxl9;->d:I

    :cond_0
    iget-object v0, p0, Lxl9;->l:[C

    iget p0, p0, Lxl9;->d:I

    aget-char p0, v0, p0

    return p0

    :cond_1
    iget v0, p0, Lxl9;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lxl9;->d:I

    iget v1, p0, Lxl9;->m:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lxl9;->c()V

    :cond_2
    iget-object v0, p0, Lxl9;->l:[C

    iget v1, p0, Lxl9;->d:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lxl9;->f(C)V

    return v0
.end method
