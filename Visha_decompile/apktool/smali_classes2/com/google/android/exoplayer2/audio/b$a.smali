.class public final Lcom/google/android/exoplayer2/audio/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/google/android/exoplayer2/audio/b;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/b;)V
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/audio/b$a;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b$a;->y(J)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->r(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/audio/b$a;Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b$a;->x(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/audio/b$a;Lju1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->w(Lju1;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/audio/b$a;IJJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/b$a;->A(IJJ)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/audio/b$a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->z(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/audio/b$a;Lju1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->v(Lju1;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/b$a;->t(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public final synthetic A(IJJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/b;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public B(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lyy;

    invoke-direct {v1, p0, p1, p2}, Lyy;-><init>(Lcom/google/android/exoplayer2/audio/b$a;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lsy;

    invoke-direct {v1, p0, p1}, Lsy;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lqy;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lqy;-><init>(Lcom/google/android/exoplayer2/audio/b$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lwy;

    invoke-direct {v1, p0, p1}, Lwy;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lgz;

    invoke-direct {v1, p0, p1}, Lgz;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Luy;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Luy;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lmy;

    invoke-direct {v1, p0, p1}, Lmy;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Lju1;)V
    .locals 2

    invoke-virtual {p1}, Lju1;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcz;

    invoke-direct {v1, p0, p1}, Lcz;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Lju1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Lju1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Laz;

    invoke-direct {v1, p0, p1}, Laz;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Lju1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lez;

    invoke-direct {v1, p0, p1, p2}, Lez;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic r(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/b;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic s(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/b;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic t(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/b;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic u(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/b;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic v(Lju1;)V
    .locals 0

    invoke-virtual {p1}, Lju1;->c()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/b;->c(Lju1;)V

    return-void
.end method

.method public final synthetic w(Lju1;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/b;->d(Lju1;)V

    return-void
.end method

.method public final synthetic x(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->i(Lcom/google/android/exoplayer2/k;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b;->a(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method

.method public final synthetic y(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public final synthetic z(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/audio/b;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/b;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method
