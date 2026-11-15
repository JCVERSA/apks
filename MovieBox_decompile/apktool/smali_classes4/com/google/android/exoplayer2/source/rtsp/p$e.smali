.class final Lcom/google/android/exoplayer2/source/rtsp/p$e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

.field private final b:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final c:Lcom/google/android/exoplayer2/source/a0;

.field private d:Z

.field private e:Z

.field final synthetic f:Lcom/google/android/exoplayer2/source/rtsp/p;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/t;ILcom/google/android/exoplayer2/source/rtsp/c$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->f:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/p$d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/t;ILcom/google/android/exoplayer2/source/rtsp/c$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 12
    .line 13
    new-instance p2, Lcom/google/android/exoplayer2/upstream/Loader;

    .line 14
    .line 15
    new-instance p4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "

    .line 21
    .line 22
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->u(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/upstream/b;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/a0;->l(Lcom/google/android/exoplayer2/upstream/b;)Lcom/google/android/exoplayer2/source/a0;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->v(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/a0;->d0(Lcom/google/android/exoplayer2/source/a0$d;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b(Lcom/google/android/exoplayer2/source/rtsp/p$d;)Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->cancelLoad()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->f:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->w(Lcom/google/android/exoplayer2/source/rtsp/p;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->z()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public f(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->k()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->T()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->e:Z

    .line 18
    .line 19
    return-void
.end method

.method public h(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b(Lcom/google/android/exoplayer2/source/rtsp/p$d;)Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->V()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public i(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d:Z

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a0;->E(JZ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c:Lcom/google/android/exoplayer2/source/a0;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/a0;->e0(I)V

    .line 12
    .line 13
    .line 14
    return p1
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b(Lcom/google/android/exoplayer2/source/rtsp/p$d;)Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$e;->f:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/p;->v(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$b;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    .line 17
    .line 18
    .line 19
    return-void
.end method
