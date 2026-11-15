.class public abstract Lw4f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw4f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls1f;

    invoke-direct {v0}, Ls1f;-><init>()V

    sput-object v0, Lw4f;->a:Lw4f;

    sget v0, Lkfh;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d(ILy2f;Z)Ly2f;
.end method

.method public abstract e(ILe4f;J)Le4f;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw4f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw4f;

    invoke-virtual {p1}, Lw4f;->c()I

    move-result v1

    invoke-virtual {p0}, Lw4f;->c()I

    move-result v3

    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Lw4f;->b()I

    move-result v1

    invoke-virtual {p0}, Lw4f;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v1, Le4f;

    invoke-direct {v1}, Le4f;-><init>()V

    new-instance v3, Ly2f;

    invoke-direct {v3}, Ly2f;-><init>()V

    new-instance v4, Le4f;

    invoke-direct {v4}, Le4f;-><init>()V

    new-instance v5, Ly2f;

    invoke-direct {v5}, Ly2f;-><init>()V

    move v6, v2

    :goto_0
    invoke-virtual {p0}, Lw4f;->c()I

    move-result v7

    if-ge v6, v7, :cond_4

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v6, v1, v7, v8}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v9

    invoke-virtual {p1, v6, v4, v7, v8}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v7

    invoke-virtual {v9, v7}, Le4f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lw4f;->b()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p0, v1, v3, v0}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v4

    invoke-virtual {p1, v1, v5, v0}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v6

    invoke-virtual {v4, v6}, Ly2f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lw4f;->g(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lw4f;->g(Z)I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0, v0}, Lw4f;->h(Z)I

    move-result v3

    invoke-virtual {p1, v0}, Lw4f;->h(Z)I

    move-result v4

    if-ne v3, v4, :cond_a

    :goto_2
    if-eq v1, v3, :cond_9

    invoke-virtual {p0, v1, v2, v0}, Lw4f;->j(IIZ)I

    move-result v4

    invoke-virtual {p1, v1, v2, v0}, Lw4f;->j(IIZ)I

    move-result v1

    if-ne v4, v1, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    return v2

    :cond_9
    return v0

    :cond_a
    :goto_3
    return v2
.end method

.method public abstract f(I)Ljava/lang/Object;
.end method

.method public g(Z)I
    .locals 0

    invoke-virtual {p0}, Lw4f;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(Z)I
    .locals 1

    invoke-virtual {p0}, Lw4f;->o()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lw4f;->c()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final hashCode()I
    .locals 7

    new-instance v0, Le4f;

    invoke-direct {v0}, Le4f;-><init>()V

    new-instance v1, Ly2f;

    invoke-direct {v1}, Ly2f;-><init>()V

    invoke-virtual {p0}, Lw4f;->c()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lw4f;->c()I

    move-result v5

    mul-int/lit8 v2, v2, 0x1f

    if-ge v4, v5, :cond_0

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v0, v5, v6}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v5

    invoke-virtual {v5}, Le4f;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw4f;->b()I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lw4f;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v0, v1, v5}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v4

    invoke-virtual {v4}, Ly2f;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lw4f;->g(Z)I

    move-result v0

    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v0, v3, v5}, Lw4f;->j(IIZ)I

    move-result v1

    add-int/2addr v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    return v2
.end method

.method public final i(ILy2f;Le4f;IZ)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object p2

    iget p2, p2, Ly2f;->c:I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v2

    iget v2, v2, Le4f;->n:I

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, p2, p4, p5}, Lw4f;->j(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p3, v0, v1}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    iget p0, p0, Le4f;->m:I

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public j(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p3}, Lw4f;->h(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lw4f;->g(Z)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return p1

    :cond_3
    invoke-virtual {p0, p3}, Lw4f;->h(Z)I

    move-result p0

    if-ne p1, p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public k(IIZ)I
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lw4f;->g(Z)I

    move-result p0

    const/4 p2, -0x1

    if-ne p1, p0, :cond_0

    return p2

    :cond_0
    add-int/2addr p1, p2

    return p1
.end method

.method public final l(Le4f;Ly2f;IJ)Landroid/util/Pair;
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lw4f;->m(Le4f;Ly2f;IJJ)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final m(Le4f;Ly2f;IJJ)Landroid/util/Pair;
    .locals 7

    invoke-virtual {p0}, Lw4f;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Ln7g;->a(III)I

    invoke-virtual {p0, p3, p1, p6, p7}, Lw4f;->e(ILe4f;J)Le4f;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    const-wide/16 v2, 0x0

    if-nez p3, :cond_0

    iget-wide p3, p1, Le4f;->k:J

    move-wide p4, v2

    :cond_0
    iget p3, p1, Le4f;->m:I

    invoke-virtual {p0, p3, p2, v1}, Lw4f;->d(ILy2f;Z)Ly2f;

    :goto_0
    iget v0, p1, Le4f;->n:I

    if-ge p3, v0, :cond_1

    iget-wide v4, p2, Ly2f;->e:J

    cmp-long v0, p4, v2

    if-eqz v0, :cond_1

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4, p2, v1}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v5

    iget-wide v5, v5, Ly2f;->e:J

    if-ltz v0, :cond_1

    move p3, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p3, p2, p1}, Lw4f;->d(ILy2f;Z)Ly2f;

    iget-wide p0, p2, Ly2f;->e:J

    iget-wide p0, p2, Ly2f;->d:J

    cmp-long p3, p0, p6

    if-eqz p3, :cond_2

    const-wide/16 p6, -0x1

    add-long/2addr p0, p6

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_2
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    iget-object p2, p2, Ly2f;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/Object;Ly2f;)Ly2f;
    .locals 1

    invoke-virtual {p0, p1}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object p0

    return-object p0
.end method

.method public final o()Z
    .locals 0

    invoke-virtual {p0}, Lw4f;->c()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
