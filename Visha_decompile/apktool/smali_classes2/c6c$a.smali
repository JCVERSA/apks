.class public final Lc6c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lc6c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lc6c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc6c$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lc6c$a;->b:Lc6c;

    return-void
.end method

.method public static synthetic a(Lc6c$a;IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc6c$a;->t(IJ)V

    return-void
.end method

.method public static synthetic b(Lc6c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc6c$a;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Lc6c$a;Lju1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc6c$a;->s(Lju1;)V

    return-void
.end method

.method public static synthetic d(Lc6c$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc6c$a;->w(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic e(Lc6c$a;JI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc6c$a;->x(JI)V

    return-void
.end method

.method public static synthetic f(Lc6c$a;Lf7c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc6c$a;->z(Lf7c;)V

    return-void
.end method

.method public static synthetic g(Lc6c$a;Lju1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc6c$a;->u(Lju1;)V

    return-void
.end method

.method public static synthetic h(Lc6c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lc6c$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic i(Lc6c$a;Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc6c$a;->v(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method

.method public static synthetic j(Lc6c$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc6c$a;->r(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lc6c$a;->a:Landroid/os/Handler;

    new-instance v3, Lm5c;

    invoke-direct {v3, p0, p1, v0, v1}, Lm5c;-><init>(Lc6c$a;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, La6c;

    invoke-direct {v1, p0, p1, p2, p3}, La6c;-><init>(Lc6c$a;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Ls5c;

    invoke-direct {v1, p0, p1}, Ls5c;-><init>(Lc6c$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(Lf7c;)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Li5c;

    invoke-direct {v1, p0, p1}, Li5c;-><init>(Lc6c$a;Lf7c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lu5c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lu5c;-><init>(Lc6c$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lo5c;

    invoke-direct {v1, p0, p1}, Lo5c;-><init>(Lc6c$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Lju1;)V
    .locals 2

    invoke-virtual {p1}, Lju1;->c()V

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lq5c;

    invoke-direct {v1, p0, p1}, Lq5c;-><init>(Lc6c$a;Lju1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lk5c;

    invoke-direct {v1, p0, p1, p2, p3}, Lk5c;-><init>(Lc6c$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Lju1;)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lw5c;

    invoke-direct {v1, p0, p1}, Lw5c;-><init>(Lc6c$a;Lju1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 2

    iget-object v0, p0, Lc6c$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Ly5c;

    invoke-direct {v1, p0, p1, p2}, Ly5c;-><init>(Lc6c$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic q(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lc6c;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc6c;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic r(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1}, Lc6c;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic s(Lju1;)V
    .locals 0

    invoke-virtual {p1}, Lju1;->c()V

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1}, Lc6c;->e(Lju1;)V

    return-void
.end method

.method public final synthetic t(IJ)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1, p2, p3}, Lc6c;->onDroppedFrames(IJ)V

    return-void
.end method

.method public final synthetic u(Lju1;)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1}, Lc6c;->b(Lju1;)V

    return-void
.end method

.method public final synthetic v(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 1

    iget-object v0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6c;

    invoke-interface {v0, p1}, Lc6c;->h(Lcom/google/android/exoplayer2/k;)V

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1, p2}, Lc6c;->f(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method

.method public final synthetic w(Ljava/lang/Object;J)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1, p2, p3}, Lc6c;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic x(JI)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1, p2, p3}, Lc6c;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public final synthetic y(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1}, Lc6c;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic z(Lf7c;)V
    .locals 0

    iget-object p0, p0, Lc6c$a;->b:Lc6c;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6c;

    invoke-interface {p0, p1}, Lc6c;->onVideoSizeChanged(Lf7c;)V

    return-void
.end method
