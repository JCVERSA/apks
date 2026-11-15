.class final Landroidx/media3/exoplayer/source/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/s;
.implements Landroidx/media3/exoplayer/drm/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroidx/media3/exoplayer/source/s$a;

.field private c:Landroidx/media3/exoplayer/drm/r$a;

.field final synthetic d:Landroidx/media3/exoplayer/source/c;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/c;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/a;->s(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method private I(ILandroidx/media3/exoplayer/source/r$b;)Z
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p2}, Landroidx/media3/exoplayer/source/c;->D(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/source/c;->F(Ljava/lang/Object;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 25
    .line 26
    iget v1, v0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 27
    .line 28
    if-ne v1, p1, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 31
    .line 32
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/a;->t(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 47
    .line 48
    iget v1, v0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 49
    .line 50
    if-ne v1, p1, :cond_4

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 53
    .line 54
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/a;->r(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 67
    .line 68
    :cond_5
    const/4 p1, 0x1

    .line 69
    return p1
.end method

.method private J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iget-wide v5, v1, Lf2/j;->f:J

    .line 12
    .line 13
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/media3/exoplayer/source/c;->E(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/r$b;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v13

    .line 17
    iget-object v3, v0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    .line 18
    .line 19
    iget-object v4, v0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-wide v5, v1, Lf2/j;->g:J

    .line 22
    .line 23
    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/media3/exoplayer/source/c;->E(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/r$b;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v15

    .line 27
    iget-wide v2, v1, Lf2/j;->f:J

    .line 28
    .line 29
    cmp-long v2, v13, v2

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    iget-wide v2, v1, Lf2/j;->g:J

    .line 34
    .line 35
    cmp-long v2, v15, v2

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    new-instance v2, Lf2/j;

    .line 41
    .line 42
    iget v8, v1, Lf2/j;->a:I

    .line 43
    .line 44
    iget v9, v1, Lf2/j;->b:I

    .line 45
    .line 46
    iget-object v10, v1, Lf2/j;->c:Landroidx/media3/common/r;

    .line 47
    .line 48
    iget v11, v1, Lf2/j;->d:I

    .line 49
    .line 50
    iget-object v12, v1, Lf2/j;->e:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v7, v2

    .line 53
    invoke-direct/range {v7 .. v16}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 54
    .line 55
    .line 56
    return-object v2
.end method


# virtual methods
.method public A(ILandroidx/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/r$a;->l(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public B(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2}, Landroidx/media3/exoplayer/source/s$a;->x(Lf2/i;Lf2/j;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public C(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public F(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->m()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public H(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2}, Landroidx/media3/exoplayer/source/s$a;->u(Lf2/i;Lf2/j;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public l(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2, p5, p6}, Landroidx/media3/exoplayer/source/s$a;->A(Lf2/i;Lf2/j;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public p(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public r(ILandroidx/media3/exoplayer/source/r$b;Lf2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/s$a;->k(Lf2/j;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public w(ILandroidx/media3/exoplayer/source/r$b;Lf2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/s$a;->G(Lf2/j;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public x(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lf2/j;Landroidx/media3/exoplayer/source/r$b;)Lf2/j;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2, p5}, Landroidx/media3/exoplayer/source/s$a;->D(Lf2/i;Lf2/j;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public y(ILandroidx/media3/exoplayer/source/r$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/r$a;->k(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public z(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->i()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
