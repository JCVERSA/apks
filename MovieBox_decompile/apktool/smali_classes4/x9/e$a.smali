.class final Lx9/e$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/p1;

.field private final d:Li9/k;

.field public e:Lcom/google/android/exoplayer2/p1;

.field private f:Li9/e0;

.field private g:J


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/p1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lx9/e$a;->a:I

    .line 5
    .line 6
    iput p2, p0, Lx9/e$a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lx9/e$a;->c:Lcom/google/android/exoplayer2/p1;

    .line 9
    .line 10
    new-instance p1, Li9/k;

    .line 11
    .line 12
    invoke-direct {p1}, Li9/k;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lx9/e$a;->d:Li9/k;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/g;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lx9/e$a;->f:Li9/e0;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    check-cast p4, Li9/e0;

    .line 8
    .line 9
    invoke-interface {p4, p1, p2, p3}, Li9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/g;IZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Li9/d0;->a(Li9/e0;Lcom/google/android/exoplayer2/upstream/g;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li9/d0;->b(Li9/e0;Lcom/google/android/exoplayer2/util/d0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/p1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/e$a;->c:Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p1;->j(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iput-object p1, p0, Lx9/e$a;->e:Lcom/google/android/exoplayer2/p1;

    .line 10
    .line 11
    iget-object p1, p0, Lx9/e$a;->f:Li9/e0;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Li9/e0;

    .line 18
    .line 19
    iget-object v0, p0, Lx9/e$a;->e:Lcom/google/android/exoplayer2/p1;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public e(JIIILi9/e0$a;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lx9/e$a;->g:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lx9/e$a;->d:Li9/k;

    .line 17
    .line 18
    iput-object v0, p0, Lx9/e$a;->f:Li9/e0;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lx9/e$a;->f:Li9/e0;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Li9/e0;

    .line 28
    .line 29
    move-wide v2, p1

    .line 30
    move v4, p3

    .line 31
    move v5, p4

    .line 32
    move v6, p5

    .line 33
    move-object v7, p6

    .line 34
    invoke-interface/range {v1 .. v7}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/d0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lx9/e$a;->f:Li9/e0;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Li9/e0;

    .line 8
    .line 9
    invoke-interface {p3, p1, p2}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Lx9/g$b;J)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lx9/e$a;->d:Li9/k;

    .line 4
    .line 5
    iput-object p1, p0, Lx9/e$a;->f:Li9/e0;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p2, p0, Lx9/e$a;->g:J

    .line 9
    .line 10
    iget p2, p0, Lx9/e$a;->a:I

    .line 11
    .line 12
    iget p3, p0, Lx9/e$a;->b:I

    .line 13
    .line 14
    invoke-interface {p1, p2, p3}, Lx9/g$b;->track(II)Li9/e0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lx9/e$a;->f:Li9/e0;

    .line 19
    .line 20
    iget-object p2, p0, Lx9/e$a;->e:Lcom/google/android/exoplayer2/p1;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, p2}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
