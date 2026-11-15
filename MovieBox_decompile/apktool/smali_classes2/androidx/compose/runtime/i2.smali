.class public final Landroidx/compose/runtime/i2;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/compose/runtime/j2;

.field private final b:[I

.field private final c:I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private f:Ljava/util/HashMap;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private final k:Landroidx/compose/runtime/m0;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/j2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/i2;->a:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/runtime/j2;->o()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/runtime/j2;->p()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Landroidx/compose/runtime/i2;->c:I

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/j2;->q()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Landroidx/compose/runtime/i2;->d:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/runtime/j2;->r()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroidx/compose/runtime/i2;->e:I

    .line 29
    .line 30
    iput v0, p0, Landroidx/compose/runtime/i2;->i:I

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    iput p1, p0, Landroidx/compose/runtime/i2;->j:I

    .line 34
    .line 35
    new-instance p1, Landroidx/compose/runtime/m0;

    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/compose/runtime/m0;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/compose/runtime/i2;->k:Landroidx/compose/runtime/m0;

    .line 41
    .line 42
    return-void
.end method

.method private final M([II)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/i2;->d:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/runtime/l2;->q([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget-object p1, v0, p1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method

.method private final O([II)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/runtime/l2;->k([II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/i2;->d:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/runtime/l2;->r([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget-object p1, v0, p1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method private final b([II)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/runtime/l2;->i([II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/i2;->d:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/runtime/l2;->a([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget-object p1, v0, p1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final A(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/i2;->B(II)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final B(II)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->u([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/runtime/i2;->c:I

    .line 10
    .line 11
    if-ge p1, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 14
    .line 15
    invoke-static {v1, p1}, Landroidx/compose/runtime/l2;->e([II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Landroidx/compose/runtime/i2;->e:I

    .line 21
    .line 22
    :goto_0
    add-int/2addr v0, p2

    .line 23
    if-ge v0, p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/compose/runtime/i2;->d:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object p1, p1, v0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object p1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_1
    return-object p1
.end method

.method public final C(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->n([II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final D(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/i2;->O([II)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final E(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->h([II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final F(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->j([II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final G(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->k([II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final H()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final I()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final J(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final K()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/i2;->m:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/i2;->n:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroidx/compose/runtime/i2;->o:Z

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/i2;->d:[Ljava/lang/Object;

    .line 16
    .line 17
    add-int/lit8 v2, v0, 0x1

    .line 18
    .line 19
    iput v2, p0, Landroidx/compose/runtime/i2;->m:I

    .line 20
    .line 21
    aget-object v0, v1, v0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/compose/runtime/i2;->o:Z

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final L(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/i2;->M([II)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public final N(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->p([II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final P(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->s([II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final Q(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Cannot reposition while in an empty region"

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput p1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 17
    .line 18
    iget v0, p0, Landroidx/compose/runtime/i2;->c:I

    .line 19
    .line 20
    if-ge p1, v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->s([II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 p1, -0x1

    .line 30
    :goto_1
    iput p1, p0, Landroidx/compose/runtime/i2;->j:I

    .line 31
    .line 32
    if-gez p1, :cond_3

    .line 33
    .line 34
    iget p1, p0, Landroidx/compose/runtime/i2;->c:I

    .line 35
    .line 36
    iput p1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->h([II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr p1, v0

    .line 46
    iput p1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 47
    .line 48
    :goto_2
    iput v1, p0, Landroidx/compose/runtime/i2;->m:I

    .line 49
    .line 50
    iput v1, p0, Landroidx/compose/runtime/i2;->n:I

    .line 51
    .line 52
    return-void
.end method

.method public final R(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->h([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v1, p1, :cond_0

    .line 12
    .line 13
    if-gt v1, v0, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v2

    .line 18
    :goto_0
    if-nez v3, :cond_1

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "Index "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, " is not a parent of "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iput p1, p0, Landroidx/compose/runtime/i2;->j:I

    .line 49
    .line 50
    iput v0, p0, Landroidx/compose/runtime/i2;->i:I

    .line 51
    .line 52
    iput v2, p0, Landroidx/compose/runtime/i2;->m:I

    .line 53
    .line 54
    iput v2, p0, Landroidx/compose/runtime/i2;->n:I

    .line 55
    .line 56
    return-void
.end method

.method public final S()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Cannot skip while in an empty region"

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 17
    .line 18
    iget v2, p0, Landroidx/compose/runtime/i2;->h:I

    .line 19
    .line 20
    invoke-static {v0, v2}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/compose/runtime/l2;->p([II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 38
    .line 39
    invoke-static {v2, v0}, Landroidx/compose/runtime/l2;->h([II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/2addr v0, v2

    .line 44
    iput v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 45
    .line 46
    return v1
.end method

.method public final T()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Cannot skip the enclosing group while in an empty region"

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/i2;->i:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 19
    .line 20
    iput v1, p0, Landroidx/compose/runtime/i2;->m:I

    .line 21
    .line 22
    iput v1, p0, Landroidx/compose/runtime/i2;->n:I

    .line 23
    .line 24
    return-void
.end method

.method public final U()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    if-gtz v0, :cond_5

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/i2;->j:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroidx/compose/runtime/l2;->s([II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v2, v0, :cond_0

    .line 17
    .line 18
    move v2, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string v2, "Invalid slot table detected"

    .line 24
    .line 25
    invoke-static {v2}, Landroidx/compose/runtime/o1;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/i2;->f:Ljava/util/HashMap;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/i2;->a(I)Landroidx/compose/runtime/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/compose/runtime/l0;

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/i2;->k:Landroidx/compose/runtime/m0;

    .line 43
    .line 44
    iget v2, p0, Landroidx/compose/runtime/i2;->m:I

    .line 45
    .line 46
    iget v4, p0, Landroidx/compose/runtime/i2;->n:I

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    const/4 v2, -0x1

    .line 53
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/m0;->j(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/m0;->j(I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iput v1, p0, Landroidx/compose/runtime/i2;->j:I

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroidx/compose/runtime/l2;->h([II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v1

    .line 69
    iput v0, p0, Landroidx/compose/runtime/i2;->i:I

    .line 70
    .line 71
    add-int/lit8 v0, v1, 0x1

    .line 72
    .line 73
    iput v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 76
    .line 77
    invoke-static {v2, v1}, Landroidx/compose/runtime/l2;->u([II)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, p0, Landroidx/compose/runtime/i2;->m:I

    .line 82
    .line 83
    iget v2, p0, Landroidx/compose/runtime/i2;->c:I

    .line 84
    .line 85
    sub-int/2addr v2, v3

    .line 86
    if-lt v1, v2, :cond_4

    .line 87
    .line 88
    iget v0, p0, Landroidx/compose/runtime/i2;->e:I

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 92
    .line 93
    invoke-static {v1, v0}, Landroidx/compose/runtime/l2;->e([II)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    :goto_2
    iput v0, p0, Landroidx/compose/runtime/i2;->n:I

    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Expected a node group"

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/runtime/o1;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->U()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final a(I)Landroidx/compose/runtime/c;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->a:Landroidx/compose/runtime/j2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/j2;->m()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/compose/runtime/i2;->c:I

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/l2;->t(Ljava/util/ArrayList;II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Landroidx/compose/runtime/c;

    .line 16
    .line 17
    invoke-direct {v2, p1}, Landroidx/compose/runtime/c;-><init>(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    neg-int p1, v1

    .line 23
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    move-object v2, p1

    .line 32
    check-cast v2, Landroidx/compose/runtime/c;

    .line 33
    .line 34
    :goto_0
    return-object v2
.end method

.method public final c()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 6
    .line 7
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/i2;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/i2;->a:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/i2;->f:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Landroidx/compose/runtime/j2;->e(Landroidx/compose/runtime/i2;Ljava/util/HashMap;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/l2;->c([II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "Unbalanced begin/end empty"

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/o1;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 20
    .line 21
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "endGroup() not called at the end of a group"

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/runtime/i2;->j:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/compose/runtime/l2;->s([II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroidx/compose/runtime/i2;->j:I

    .line 32
    .line 33
    if-gez v0, :cond_2

    .line 34
    .line 35
    iget v1, p0, Landroidx/compose/runtime/i2;->c:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroidx/compose/runtime/l2;->h([II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v1, v0

    .line 45
    :goto_1
    iput v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/compose/runtime/i2;->k:Landroidx/compose/runtime/m0;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/m0;->i()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-gez v1, :cond_3

    .line 54
    .line 55
    iput v2, p0, Landroidx/compose/runtime/i2;->m:I

    .line 56
    .line 57
    iput v2, p0, Landroidx/compose/runtime/i2;->n:I

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    iput v1, p0, Landroidx/compose/runtime/i2;->m:I

    .line 61
    .line 62
    iget v1, p0, Landroidx/compose/runtime/i2;->c:I

    .line 63
    .line 64
    sub-int/2addr v1, v3

    .line 65
    if-lt v0, v1, :cond_4

    .line 66
    .line 67
    iget v0, p0, Landroidx/compose/runtime/i2;->e:I

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 71
    .line 72
    add-int/2addr v0, v3

    .line 73
    invoke-static {v1, v0}, Landroidx/compose/runtime/l2;->e([II)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_2
    iput v0, p0, Landroidx/compose/runtime/i2;->n:I

    .line 78
    .line 79
    :cond_5
    :goto_3
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/i2;->l:I

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move v8, v2

    .line 15
    :goto_0
    iget v2, p0, Landroidx/compose/runtime/i2;->i:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    new-instance v2, Landroidx/compose/runtime/q0;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 22
    .line 23
    invoke-static {v3, v1}, Landroidx/compose/runtime/l2;->n([II)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v3, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 28
    .line 29
    invoke-direct {p0, v3, v1}, Landroidx/compose/runtime/i2;->O([II)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v3, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 34
    .line 35
    invoke-static {v3, v1}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    :goto_1
    move v7, v3

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 45
    .line 46
    invoke-static {v3, v1}, Landroidx/compose/runtime/l2;->p([II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_1

    .line 51
    :goto_2
    add-int/lit8 v9, v8, 0x1

    .line 52
    .line 53
    move-object v3, v2

    .line 54
    move v6, v1

    .line 55
    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/q0;-><init>(ILjava/lang/Object;III)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroidx/compose/runtime/l2;->h([II)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v1, v2

    .line 68
    move v8, v9

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/i2;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/i2;->b([II)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final n()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroidx/compose/runtime/l2;->n([II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final o()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/i2;->O([II)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public final p()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/runtime/l2;->h([II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final q()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->m:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/runtime/i2;->j:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/compose/runtime/l2;->u([II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/i2;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final s()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroidx/compose/runtime/l2;->k([II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->l:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SlotReader(current="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/runtime/i2;->h:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", key="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->n()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", parent="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Landroidx/compose/runtime/i2;->j:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", end="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Landroidx/compose/runtime/i2;->i:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x29

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final v()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->j:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroidx/compose/runtime/l2;->p([II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final w()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->n:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/i2;->m:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final x()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/i2;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final y()Landroidx/compose/runtime/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->a:Landroidx/compose/runtime/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/i2;->b:[I

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/i2;->b([II)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
