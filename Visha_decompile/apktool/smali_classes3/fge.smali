.class public final Lfge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgge;

.field public final b:Lu4h;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgge;

    invoke-direct {v0}, Lgge;-><init>()V

    iput-object v0, p0, Lfge;->a:Lgge;

    new-instance v0, Lu4h;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu4h;-><init>([BI)V

    iput-object v0, p0, Lfge;->b:Lu4h;

    const/4 v0, -0x1

    iput v0, p0, Lfge;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lu4h;
    .locals 0

    iget-object p0, p0, Lfge;->b:Lu4h;

    return-object p0
.end method

.method public final b()Lgge;
    .locals 0

    iget-object p0, p0, Lfge;->a:Lgge;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lfge;->a:Lgge;

    invoke-virtual {v0}, Lgge;->a()V

    iget-object v0, p0, Lfge;->b:Lu4h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu4h;->i(I)V

    const/4 v0, -0x1

    iput v0, p0, Lfge;->c:I

    iput-boolean v1, p0, Lfge;->e:Z

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object p0, p0, Lfge;->b:Lu4h;

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lu4h;->j([BI)V

    return-void
.end method

.method public final e(Ld9e;)Z
    .locals 7

    iget-boolean v0, p0, Lfge;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lfge;->e:Z

    iget-object v0, p0, Lfge;->b:Lu4h;

    invoke-virtual {v0, v1}, Lu4h;->i(I)V

    :goto_0
    iget-boolean v0, p0, Lfge;->e:Z

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget v0, p0, Lfge;->c:I

    if-gez v0, :cond_5

    iget-object v0, p0, Lfge;->a:Lgge;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, p1, v3, v4}, Lgge;->c(Ld9e;J)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, p1, v2}, Lgge;->b(Ld9e;Z)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget v3, v0, Lgge;->d:I

    iget v0, v0, Lgge;->a:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lfge;->b:Lu4h;

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lfge;->f(I)I

    move-result v0

    add-int/2addr v3, v0

    iget v0, p0, Lfge;->d:I

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {p1, v3}, Lg9e;->e(Ld9e;I)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iput v0, p0, Lfge;->c:I

    goto :goto_3

    :cond_4
    :goto_2
    return v1

    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Lfge;->f(I)I

    move-result v0

    iget v3, p0, Lfge;->c:I

    iget v4, p0, Lfge;->d:I

    add-int/2addr v3, v4

    if-lez v0, :cond_8

    iget-object v4, p0, Lfge;->b:Lu4h;

    invoke-virtual {v4}, Lu4h;->x()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lu4h;->f(I)V

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v5

    invoke-virtual {v4}, Lu4h;->x()I

    move-result v6

    invoke-static {p1, v5, v6, v0}, Lg9e;->d(Ld9e;[BII)Z

    move-result v5

    if-nez v5, :cond_6

    return v1

    :cond_6
    invoke-virtual {v4}, Lu4h;->x()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lu4h;->k(I)V

    iget-object v0, p0, Lfge;->a:Lgge;

    add-int/lit8 v4, v3, -0x1

    iget-object v0, v0, Lgge;->f:[I

    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lfge;->e:Z

    :cond_8
    iget-object v0, p0, Lfge;->a:Lgge;

    iget v0, v0, Lgge;->c:I

    if-ne v3, v0, :cond_9

    const/4 v3, -0x1

    :cond_9
    iput v3, p0, Lfge;->c:I

    goto/16 :goto_0

    :cond_a
    return v2
.end method

.method public final f(I)I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lfge;->d:I

    :cond_0
    iget v1, p0, Lfge;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lfge;->a:Lgge;

    iget v4, v3, Lgge;->c:I

    if-ge v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfge;->d:I

    iget-object v1, v3, Lgge;->f:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method
