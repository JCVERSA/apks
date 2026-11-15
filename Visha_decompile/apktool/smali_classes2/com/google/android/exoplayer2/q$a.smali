.class public final Lcom/google/android/exoplayer2/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/j;
.implements Lcom/google/android/exoplayer2/drm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/google/android/exoplayer2/q$c;

.field public c:Lcom/google/android/exoplayer2/source/j$a;

.field public d:Lcom/google/android/exoplayer2/drm/b$a;

.field public final synthetic e:Lcom/google/android/exoplayer2/q;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/q$c;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$a;->e:Lcom/google/android/exoplayer2/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/q;->b(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/q;->c(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/drm/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/q$a;->b:Lcom/google/android/exoplayer2/q$c;

    return-void
.end method


# virtual methods
.method public g(ILcom/google/android/exoplayer2/source/i$b;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/j$a;->i(Lih6;)V

    :cond_0
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/j$a;->r(Lin5;Lih6;)V

    :cond_0
    return-void
.end method

.method public j(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->h()V

    :cond_0
    return-void
.end method

.method public k(ILcom/google/android/exoplayer2/source/i$b;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/b$a;->k(I)V

    :cond_0
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->j()V

    :cond_0
    return-void
.end method

.method public m(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->i()V

    :cond_0
    return-void
.end method

.method public o(ILcom/google/android/exoplayer2/source/i$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/b$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public p(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/j$a;->p(Lin5;Lih6;)V

    :cond_0
    return-void
.end method

.method public s(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/j$a;->v(Lin5;Lih6;)V

    :cond_0
    return-void
.end method

.method public t(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/j$a;->t(Lin5;Lih6;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q$a;->v(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/b$a;->m()V

    :cond_0
    return-void
.end method

.method public final v(ILcom/google/android/exoplayer2/source/i$b;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/q$a;->b:Lcom/google/android/exoplayer2/q$c;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/q;->d(Lcom/google/android/exoplayer2/q$c;Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/q$a;->b:Lcom/google/android/exoplayer2/q$c;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/q;->e(Lcom/google/android/exoplayer2/q$c;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v0, p2}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/q$a;->e:Lcom/google/android/exoplayer2/q;

    invoke-static {v0}, Lcom/google/android/exoplayer2/q;->b(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->x(ILcom/google/android/exoplayer2/source/i$b;J)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/q$a;->c:Lcom/google/android/exoplayer2/source/j$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v0, p2}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/q$a;->e:Lcom/google/android/exoplayer2/q;

    invoke-static {v0}, Lcom/google/android/exoplayer2/q;->c(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/drm/b$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/b$a;->u(ILcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/drm/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$a;->d:Lcom/google/android/exoplayer2/drm/b$a;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
