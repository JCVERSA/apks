.class public final Lcom/google/android/exoplayer2/source/dash/e$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/a0;

.field private final b:Lcom/google/android/exoplayer2/q1;

.field private final c:Lcom/google/android/exoplayer2/metadata/d;

.field private d:J

.field final synthetic e:Lcom/google/android/exoplayer2/source/dash/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/e;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/a0;->l(Lcom/google/android/exoplayer2/upstream/b;)Lcom/google/android/exoplayer2/source/a0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/q1;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/google/android/exoplayer2/q1;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->b:Lcom/google/android/exoplayer2/q1;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/exoplayer2/metadata/d;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/d;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    .line 32
    .line 33
    return-void
.end method

.method private g()Lcom/google/android/exoplayer2/metadata/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->b:Lcom/google/android/exoplayer2/q1;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x4

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method private k(JJ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/e$a;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/e;->d(Lcom/google/android/exoplayer2/source/dash/e;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/dash/e;->d(Lcom/google/android/exoplayer2/source/dash/e;)Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private l()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/e$c;->g()Lcom/google/android/exoplayer2/metadata/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-wide v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/e;->a(Lcom/google/android/exoplayer2/source/dash/e;)Lcom/google/android/exoplayer2/metadata/emsg/a;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/metadata/g;->a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/source/dash/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/source/dash/e$c;->m(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->s()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private m(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 4

    .line 1
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/e;->c(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p3, v0, v2

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/e$c;->k(JJ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/g;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/a0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/a0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(JIIILi9/e0$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/a0;->e(JIIILi9/e0$a;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/e$c;->l()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/d0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/source/a0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/e;->j(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i(Lx9/f;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

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
    iget-wide v2, p1, Lx9/f;->h:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-wide v0, p1, Lx9/f;->h:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->m(Lx9/f;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public j(Lx9/f;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

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
    iget-wide v2, p1, Lx9/f;->g:J

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->n(Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->T()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
