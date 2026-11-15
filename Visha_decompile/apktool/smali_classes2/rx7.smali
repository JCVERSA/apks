.class public final Lrx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lba9;


# instance fields
.field public a:Lcom/google/android/exoplayer2/k;

.field public b:Lpoa;

.field public c:Lfva;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    iput-object p1, p0, Lrx7;->a:Lcom/google/android/exoplayer2/k;

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 8

    invoke-virtual {p0}, Lrx7;->c()V

    iget-object v0, p0, Lrx7;->b:Lpoa;

    invoke-virtual {v0}, Lpoa;->d()J

    move-result-wide v2

    iget-object v0, p0, Lrx7;->b:Lpoa;

    invoke-virtual {v0}, Lpoa;->e()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lrx7;->a:Lcom/google/android/exoplayer2/k;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/k;->q:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/k$b;->i0(J)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    iput-object v0, p0, Lrx7;->a:Lcom/google/android/exoplayer2/k;

    iget-object v1, p0, Lrx7;->c:Lfva;

    invoke-interface {v1, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_1
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v5

    iget-object v0, p0, Lrx7;->c:Lfva;

    invoke-interface {v0, p1, v5}, Lfva;->d(Lqw7;I)V

    iget-object v1, p0, Lrx7;->c:Lfva;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lfva;->e(JIIILfva$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lpoa;Lqk3;Lnab$d;)V
    .locals 0

    iput-object p1, p0, Lrx7;->b:Lpoa;

    invoke-virtual {p3}, Lnab$d;->a()V

    invoke-virtual {p3}, Lnab$d;->c()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lrx7;->c:Lfva;

    iget-object p0, p0, Lrx7;->a:Lcom/google/android/exoplayer2/k;

    invoke-interface {p1, p0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lrx7;->b:Lpoa;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lrx7;->c:Lfva;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
