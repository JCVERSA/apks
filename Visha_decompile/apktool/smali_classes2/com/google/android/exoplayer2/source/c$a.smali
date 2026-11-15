.class public final Lcom/google/android/exoplayer2/source/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/j;
.implements Lcom/google/android/exoplayer2/drm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Lcom/google/android/exoplayer2/source/j$a;

.field public d:Lcom/google/android/exoplayer2/drm/b$a;

.field public final synthetic e:Lcom/google/android/exoplayer2/source/c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->o(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->m(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/drm/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private v(ILcom/google/android/exoplayer2/source/i$b;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/c;->x(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/c;->z(Ljava/lang/Object;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v0, p2}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/a;->n(ILcom/google/android/exoplayer2/source/i$b;J)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v0, p2}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/a;->l(ILcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/drm/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public g(ILcom/google/android/exoplayer2/source/i$b;Lih6;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/c$a;->w(Lih6;)Lih6;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/j$a;->i(Lih6;)V

    :cond_0
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->w(Lih6;)Lih6;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/google/android/exoplayer2/source/j$a;->r(Lin5;Lih6;)V

    :cond_0
    return-void
.end method

.method public j(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->h()V

    :cond_0
    return-void
.end method

.method public k(ILcom/google/android/exoplayer2/source/i$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/b$a;->k(I)V

    :cond_0
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->j()V

    :cond_0
    return-void
.end method

.method public m(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->i()V

    :cond_0
    return-void
.end method

.method public o(ILcom/google/android/exoplayer2/source/i$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/b$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public p(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->w(Lih6;)Lih6;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/google/android/exoplayer2/source/j$a;->p(Lin5;Lih6;)V

    :cond_0
    return-void
.end method

.method public s(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->w(Lih6;)Lih6;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/google/android/exoplayer2/source/j$a;->v(Lin5;Lih6;)V

    :cond_0
    return-void
.end method

.method public t(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->w(Lih6;)Lih6;

    move-result-object p0

    invoke-virtual {p1, p3, p0, p5, p6}, Lcom/google/android/exoplayer2/source/j$a;->t(Lin5;Lih6;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->m()V

    :cond_0
    return-void
.end method

.method public final w(Lih6;)Lih6;
    .locals 14

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Ljava/lang/Object;

    iget-wide v2, p1, Lih6;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/c;->y(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->e:Lcom/google/android/exoplayer2/source/c;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Ljava/lang/Object;

    iget-wide v1, p1, Lih6;->g:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/c;->y(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-wide v0, p1, Lih6;->f:J

    cmp-long p0, v10, v0

    if-nez p0, :cond_0

    iget-wide v0, p1, Lih6;->g:J

    cmp-long p0, v12, v0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lih6;

    iget v5, p1, Lih6;->a:I

    iget v6, p1, Lih6;->b:I

    iget-object v7, p1, Lih6;->c:Lcom/google/android/exoplayer2/k;

    iget v8, p1, Lih6;->d:I

    iget-object v9, p1, Lih6;->e:Ljava/lang/Object;

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    return-object p0
.end method
