.class public final Lqke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldle;


# instance fields
.field public final a:Lpke;

.field public final b:Lu4h;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lpke;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqke;->a:Lpke;

    new-instance p1, Lu4h;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lqke;->b:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;I)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v2

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-boolean v2, p0, Lqke;->f:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_8

    iput-boolean v4, p0, Lqke;->f:Z

    invoke-virtual {p1, v3}, Lu4h;->l(I)V

    iput v4, p0, Lqke;->d:I

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lu4h;->u()I

    move-result p2

    if-lez p2, :cond_8

    iget p2, p0, Lqke;->d:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_5

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lu4h;->G()I

    move-result p2

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lu4h;->l(I)V

    const/16 v3, 0xff

    if-eq p2, v3, :cond_6

    :cond_3
    invoke-virtual {p1}, Lu4h;->u()I

    move-result p2

    iget v3, p0, Lqke;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lqke;->b:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v5

    iget v6, p0, Lqke;->d:I

    invoke-virtual {p1, v5, v6, p2}, Lu4h;->h([BII)V

    iget v5, p0, Lqke;->d:I

    add-int/2addr v5, p2

    iput v5, p0, Lqke;->d:I

    if-ne v5, v2, :cond_2

    invoke-virtual {v3, v4}, Lu4h;->l(I)V

    invoke-virtual {v3, v2}, Lu4h;->k(I)V

    invoke-virtual {v3, v0}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->G()I

    move-result p2

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-virtual {v3}, Lu4h;->G()I

    move-result v6

    iput-boolean v5, p0, Lqke;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v6

    add-int/2addr p2, v2

    iput p2, p0, Lqke;->c:I

    invoke-virtual {v3}, Lu4h;->v()I

    move-result p2

    iget v2, p0, Lqke;->c:I

    if-ge p2, v2, :cond_2

    invoke-virtual {v3}, Lu4h;->v()I

    move-result p2

    add-int/2addr p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v2, 0x1002

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v3, p2}, Lu4h;->f(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lu4h;->u()I

    move-result p2

    iget v2, p0, Lqke;->c:I

    iget v3, p0, Lqke;->d:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lqke;->b:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    iget v5, p0, Lqke;->d:I

    invoke-virtual {p1, v3, v5, p2}, Lu4h;->h([BII)V

    iget v3, p0, Lqke;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Lqke;->d:I

    iget p2, p0, Lqke;->c:I

    if-ne v3, p2, :cond_2

    iget-boolean v3, p0, Lqke;->e:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    invoke-static {v3, v4, p2, v1}, Lkfh;->A([BIII)I

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lqke;->c:I

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v2, p2}, Lu4h;->k(I)V

    goto :goto_3

    :cond_6
    iput-boolean v0, p0, Lqke;->f:Z

    return-void

    :cond_7
    invoke-virtual {v2, p2}, Lu4h;->k(I)V

    :goto_3
    invoke-virtual {v2, v4}, Lu4h;->l(I)V

    iget-object p2, p0, Lqke;->a:Lpke;

    invoke-interface {p2, v2}, Lpke;->a(Lu4h;)V

    iput v4, p0, Lqke;->d:I

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public final b(Lfch;Lf9e;Lcle;)V
    .locals 1

    iget-object v0, p0, Lqke;->a:Lpke;

    invoke-interface {v0, p1, p2, p3}, Lpke;->b(Lfch;Lf9e;Lcle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqke;->f:Z

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqke;->f:Z

    return-void
.end method
