.class public final Lafj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:Lbnj;

.field public e:Z

.field public f:Z

.field public final synthetic g:Lcfj;


# direct methods
.method public constructor <init>(Lcfj;Ljava/lang/String;ILbnj;)V
    .locals 0

    iput-object p1, p0, Lafj;->g:Lcfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lafj;->a:Ljava/lang/String;

    iput p3, p0, Lafj;->b:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Lbnj;->d:J

    :goto_0
    iput-wide p1, p0, Lafj;->c:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lbnj;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Lafj;->d:Lbnj;

    :cond_1
    return-void
.end method

.method public static bridge synthetic a(Lafj;)I
    .locals 0

    iget p0, p0, Lafj;->b:I

    return p0
.end method

.method public static bridge synthetic b(Lafj;)J
    .locals 2

    iget-wide v0, p0, Lafj;->c:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lafj;)Lbnj;
    .locals 0

    iget-object p0, p0, Lafj;->d:Lbnj;

    return-object p0
.end method

.method public static bridge synthetic d(Lafj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lafj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lafj;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lafj;->f:Z

    return-void
.end method

.method public static bridge synthetic f(Lafj;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lafj;->e:Z

    return-void
.end method

.method public static bridge synthetic h(Lafj;)Z
    .locals 0

    iget-boolean p0, p0, Lafj;->f:Z

    return p0
.end method

.method public static bridge synthetic i(Lafj;)Z
    .locals 0

    iget-boolean p0, p0, Lafj;->e:Z

    return p0
.end method


# virtual methods
.method public final g(ILbnj;)V
    .locals 4

    iget-wide v0, p0, Lafj;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lafj;->b:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lafj;->g:Lcfj;

    iget-wide v0, p2, Lbnj;->d:J

    invoke-static {p1}, Lcfj;->g(Lcfj;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    iput-wide v0, p0, Lafj;->c:J

    :cond_0
    return-void
.end method

.method public final j(ILbnj;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p0, p0, Lafj;->b:I

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lafj;->d:Lbnj;

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lbnj;->b()Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p2, Lbnj;->d:J

    iget-wide v2, p0, Lafj;->c:J

    cmp-long p0, p1, v2

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    iget-wide v2, p2, Lbnj;->d:J

    iget-wide v4, p1, Lbnj;->d:J

    cmp-long p0, v2, v4

    if-nez p0, :cond_4

    iget p0, p2, Lbnj;->b:I

    iget v2, p1, Lbnj;->b:I

    if-ne p0, v2, :cond_4

    iget p0, p2, Lbnj;->c:I

    iget p1, p1, Lbnj;->c:I

    if-ne p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final k(Lraj;)Z
    .locals 9

    iget-object v0, p1, Lraj;->d:Lbnj;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget p0, p0, Lafj;->b:I

    iget p1, p1, Lraj;->c:I

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-wide v3, p0, Lafj;->c:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    iget-wide v5, v0, Lbnj;->d:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lafj;->d:Lbnj;

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object p1, p1, Lraj;->b:Lw4f;

    iget-object v3, v0, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lafj;->d:Lbnj;

    iget-object v4, v4, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lafj;->d:Lbnj;

    iget-wide v7, p0, Lbnj;->d:J

    cmp-long v4, v5, v7

    if-ltz v4, :cond_d

    if-ge v3, p1, :cond_5

    goto :goto_2

    :cond_5
    if-le v3, p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lbnj;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, v0, Lbnj;->b:I

    iget v0, v0, Lbnj;->c:I

    iget v3, p0, Lbnj;->b:I

    if-gt p1, v3, :cond_9

    if-ne p1, v3, :cond_8

    iget p0, p0, Lbnj;->c:I

    if-le v0, p0, :cond_7

    goto :goto_0

    :cond_7
    return v2

    :cond_8
    move v1, v2

    :cond_9
    :goto_0
    return v1

    :cond_a
    iget p1, v0, Lbnj;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget p0, p0, Lbnj;->b:I

    if-le p1, p0, :cond_b

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_1
    return v1

    :cond_d
    :goto_2
    return v2
.end method

.method public final l(Lw4f;Lw4f;)Z
    .locals 7

    iget v0, p0, Lafj;->b:I

    invoke-virtual {p1}, Lw4f;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Lw4f;->c()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lafj;->g:Lcfj;

    invoke-static {v1}, Lcfj;->i(Lcfj;)Le4f;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v4, v5, v6}, Lw4f;->e(ILe4f;J)Le4f;

    invoke-static {v1}, Lcfj;->i(Lcfj;)Le4f;

    move-result-object v0

    iget v0, v0, Le4f;->m:I

    :goto_0
    invoke-static {v1}, Lcfj;->i(Lcfj;)Le4f;

    move-result-object v4

    iget v4, v4, Le4f;->n:I

    if-gt v0, v4, :cond_0

    invoke-virtual {p1, v0}, Lw4f;->f(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-static {v1}, Lcfj;->h(Lcfj;)Ly2f;

    move-result-object p1

    invoke-virtual {p2, v4, p1, v2}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object p1

    iget v0, p1, Ly2f;->c:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    iput v0, p0, Lafj;->b:I

    if-ne v0, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lafj;->d:Lbnj;

    const/4 p1, 0x1

    if-nez p0, :cond_4

    return p1

    :cond_4
    iget-object p0, p0, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_5

    return p1

    :cond_5
    return v2
.end method
