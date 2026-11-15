.class public final Lrhj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqhj;

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqhj;

    invoke-direct {v0, p1}, Lqhj;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lrhj;->a:Lqhj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lrhj;->h(I)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lrhj;->a:Lqhj;

    invoke-virtual {p0}, Lqhj;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-object p0, p0, Lrhj;->a:Lqhj;

    invoke-virtual {p0}, Lqhj;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lrhj;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrhj;->h(I)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lrhj;->h(I)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrhj;->h(I)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget p0, p0, Lrhj;->b:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(J)Z
    .locals 6

    iget-wide v0, p0, Lrhj;->e:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lrhj;->d:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iput-wide p1, p0, Lrhj;->e:J

    iget-object v0, p0, Lrhj;->a:Lqhj;

    invoke-virtual {v0}, Lqhj;->c()Z

    move-result v2

    iget v3, p0, Lrhj;->b:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    const/4 p1, 0x2

    if-eq v3, v5, :cond_5

    if-eq v3, p1, :cond_3

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lrhj;->h(I)V

    return v5

    :cond_3
    if-eqz v2, :cond_4

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lrhj;->h(I)V

    return v1

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lqhj;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lrhj;->f:J

    cmp-long p2, v0, v2

    if-gtz p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lrhj;->h(I)V

    return v5

    :cond_7
    invoke-virtual {p0, v1}, Lrhj;->h(I)V

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lqhj;->b()J

    move-result-wide p1

    iget-wide v2, p0, Lrhj;->c:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lqhj;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lrhj;->f:J

    invoke-virtual {p0, v5}, Lrhj;->h(I)V

    return v5

    :cond_a
    iget-wide v2, p0, Lrhj;->c:J

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x7a120

    cmp-long p1, p1, v2

    if-gtz p1, :cond_b

    :goto_1
    return v1

    :cond_b
    invoke-virtual {p0, v4}, Lrhj;->h(I)V

    return v1
.end method

.method public final h(I)V
    .locals 6

    iput p1, p0, Lrhj;->b:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    :goto_0
    iput-wide v0, p0, Lrhj;->d:J

    return-void

    :cond_0
    const-wide/32 v0, 0x989680

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lrhj;->d:J

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lrhj;->e:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lrhj;->f:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lrhj;->c:J

    goto :goto_0
.end method
