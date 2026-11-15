.class final Lcom/google/android/exoplayer2/source/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/source/p$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lcom/google/android/exoplayer2/source/c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method private G(ILcom/google/android/exoplayer2/source/o$b;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/c;->F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/c;->H(Ljava/lang/Object;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 25
    .line 26
    iget v1, v0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 27
    .line 28
    if-ne v1, p1, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 31
    .line 32
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/a;->u(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 49
    .line 50
    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 51
    .line 52
    if-ne v1, p1, :cond_4

    .line 53
    .line 54
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 55
    .line 56
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/a;->s(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 69
    .line 70
    :cond_5
    const/4 p1, 0x1

    .line 71
    return p1
.end method

.method private H(Lv9/i;)Lv9/i;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v2, p1, Lv9/i;->f:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/c;->G(Ljava/lang/Object;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v10

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iget-wide v2, p1, Lv9/i;->g:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/c;->G(Ljava/lang/Object;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v12

    .line 21
    iget-wide v0, p1, Lv9/i;->f:J

    .line 22
    .line 23
    cmp-long v0, v10, v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-wide v0, p1, Lv9/i;->g:J

    .line 28
    .line 29
    cmp-long v0, v12, v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance v0, Lv9/i;

    .line 35
    .line 36
    iget v5, p1, Lv9/i;->a:I

    .line 37
    .line 38
    iget v6, p1, Lv9/i;->b:I

    .line 39
    .line 40
    iget-object v7, p1, Lv9/i;->c:Lcom/google/android/exoplayer2/p1;

    .line 41
    .line 42
    iget v8, p1, Lv9/i;->d:I

    .line 43
    .line 44
    iget-object v9, p1, Lv9/i;->e:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v4, v0

    .line 47
    invoke-direct/range {v4 .. v13}, Lv9/i;-><init>(IILcom/google/android/exoplayer2/p1;ILjava/lang/Object;JJ)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method


# virtual methods
.method public A(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public B(ILcom/google/android/exoplayer2/source/o$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public C(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->m()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public D(ILcom/google/android/exoplayer2/source/o$b;Lv9/h;Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lv9/i;)Lv9/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->v(Lv9/h;Lv9/i;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public E(ILcom/google/android/exoplayer2/source/o$b;Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/c$a;->H(Lv9/i;)Lv9/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->E(Lv9/i;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public F(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/source/o$b;Lv9/h;Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lv9/i;)Lv9/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->s(Lv9/h;Lv9/i;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public p(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->i()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public synthetic s(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/drm/s;ILcom/google/android/exoplayer2/source/o$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/o$b;Lv9/h;Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lv9/i;)Lv9/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->B(Lv9/h;Lv9/i;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public w(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->l(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public y(ILcom/google/android/exoplayer2/source/o$b;Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/c$a;->H(Lv9/i;)Lv9/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->j(Lv9/i;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public z(ILcom/google/android/exoplayer2/source/o$b;Lv9/h;Lv9/i;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lv9/i;)Lv9/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/p$a;->y(Lv9/h;Lv9/i;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
