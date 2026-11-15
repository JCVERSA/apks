.class public Lcom/alibaba/fastjson/asm/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/h;


# instance fields
.field a:Lcom/alibaba/fastjson/asm/i;

.field final b:Lcom/alibaba/fastjson/asm/c;

.field private c:I

.field private final d:I

.field private final e:I

.field f:I

.field g:[I

.field private h:Lcom/alibaba/fastjson/asm/a;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Lcom/alibaba/fastjson/asm/a;

    .line 5
    .line 6
    invoke-direct {p5}, Lcom/alibaba/fastjson/asm/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 10
    .line 11
    iget-object p5, p1, Lcom/alibaba/fastjson/asm/c;->q:Lcom/alibaba/fastjson/asm/i;

    .line 12
    .line 13
    if-nez p5, :cond_0

    .line 14
    .line 15
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/c;->q:Lcom/alibaba/fastjson/asm/i;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p5, p1, Lcom/alibaba/fastjson/asm/c;->r:Lcom/alibaba/fastjson/asm/i;

    .line 19
    .line 20
    iput-object p0, p5, Lcom/alibaba/fastjson/asm/i;->a:Lcom/alibaba/fastjson/asm/i;

    .line 21
    .line 22
    :goto_0
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/c;->r:Lcom/alibaba/fastjson/asm/i;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 25
    .line 26
    iput p2, p0, Lcom/alibaba/fastjson/asm/i;->c:I

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/c;->h(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/alibaba/fastjson/asm/i;->d:I

    .line 33
    .line 34
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/c;->h(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lcom/alibaba/fastjson/asm/i;->e:I

    .line 39
    .line 40
    if-eqz p6, :cond_1

    .line 41
    .line 42
    array-length p2, p6

    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    array-length p2, p6

    .line 46
    iput p2, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 47
    .line 48
    new-array p2, p2, [I

    .line 49
    .line 50
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/i;->g:[I

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    :goto_1
    iget p3, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 54
    .line 55
    if-ge p2, p3, :cond_1

    .line 56
    .line 57
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/i;->g:[I

    .line 58
    .line 59
    aget-object p4, p6, p2

    .line 60
    .line 61
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/c;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/e;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    iget p4, p4, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 66
    .line 67
    aput p4, p3, p2

    .line 68
    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILcom/alibaba/fastjson/asm/f;)V
    .locals 4

    .line 1
    iget v0, p2, Lcom/alibaba/fastjson/asm/f;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p2, Lcom/alibaba/fastjson/asm/f;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 10
    .line 11
    iget v1, v1, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    const/16 v1, -0x8000

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 31
    .line 32
    iget v1, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    sub-int/2addr v1, v2

    .line 36
    const/16 v3, 0xc8

    .line 37
    .line 38
    if-ne p1, v3, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v2, 0x0

    .line 42
    :goto_1
    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/alibaba/fastjson/asm/f;->b(Lcom/alibaba/fastjson/asm/i;Lcom/alibaba/fastjson/asm/a;IZ)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/fastjson/asm/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 8
    .line 9
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p2, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xa9

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x36

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x15

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1a

    .line 17
    .line 18
    :goto_0
    add-int/2addr p1, p2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sub-int/2addr p1, v0

    .line 21
    shl-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x3b

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/16 v0, 0x100

    .line 33
    .line 34
    if-lt p2, v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 37
    .line 38
    const/16 v1, 0xc4

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 51
    .line 52
    .line 53
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/c;->c(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 8
    .line 9
    iget p1, p1, Lcom/alibaba/fastjson/asm/e;->b:I

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p1, 0x100

    .line 19
    .line 20
    if-lt v0, p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 23
    .line 24
    const/16 v1, 0x13

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 39
    .line 40
    const/16 v1, 0x14

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    const/16 v1, 0x84

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public f(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/asm/c;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 8
    .line 9
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/asm/i;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/alibaba/fastjson/asm/i;->j:I

    .line 4
    .line 5
    return-void
.end method

.method public j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xb9

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 10
    .line 11
    invoke-virtual {v3, p2, p3, p4, v2}, Lcom/alibaba/fastjson/asm/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/e;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget p3, p2, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/j;->b(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iput p3, p2, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 28
    .line 29
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 30
    .line 31
    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    shr-int/lit8 p2, p3, 0x2

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 42
    .line 43
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 44
    .line 45
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Lcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    iget v1, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    invoke-virtual {p1, p0, v1, v0}, Lcom/alibaba/fastjson/asm/f;->c(Lcom/alibaba/fastjson/asm/i;I[B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method final m()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 10
    .line 11
    const-string v2, "Code"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/c;->h(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 17
    .line 18
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1a

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 25
    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 29
    .line 30
    const-string v3, "Exceptions"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/c;->h(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 36
    .line 37
    mul-int/lit8 v2, v2, 0x2

    .line 38
    .line 39
    add-int/2addr v2, v1

    .line 40
    add-int/2addr v0, v2

    .line 41
    :cond_1
    return v0
.end method

.method final n(Lcom/alibaba/fastjson/asm/a;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/i;->c:I

    .line 2
    .line 3
    const v1, -0x60001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/alibaba/fastjson/asm/i;->d:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/alibaba/fastjson/asm/i;->e:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 23
    .line 24
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 42
    .line 43
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 44
    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0xc

    .line 48
    .line 49
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 50
    .line 51
    const-string v3, "Code"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/c;->h(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/alibaba/fastjson/asm/i;->i:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget v2, p0, Lcom/alibaba/fastjson/asm/i;->j:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 76
    .line 77
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/i;->h:Lcom/alibaba/fastjson/asm/a;

    .line 84
    .line 85
    iget-object v3, v2, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 86
    .line 87
    iget v2, v2, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 88
    .line 89
    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/fastjson/asm/a;->e([BII)Lcom/alibaba/fastjson/asm/a;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 96
    .line 97
    .line 98
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 99
    .line 100
    if-lez v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->b:Lcom/alibaba/fastjson/asm/c;

    .line 103
    .line 104
    const-string v2, "Exceptions"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/c;->h(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget v2, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 115
    .line 116
    mul-int/lit8 v2, v2, 0x2

    .line 117
    .line 118
    add-int/lit8 v2, v2, 0x2

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    .line 121
    .line 122
    .line 123
    iget v0, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 126
    .line 127
    .line 128
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/i;->f:I

    .line 129
    .line 130
    if-ge v1, v0, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/i;->g:[I

    .line 133
    .line 134
    aget v0, v0, v1

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 137
    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    return-void
.end method
