.class final Lcom/google/android/exoplayer2/source/rtsp/p$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/t;

.field private final b:Lcom/google/android/exoplayer2/source/rtsp/e;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/p;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/t;ILcom/google/android/exoplayer2/source/rtsp/c$a;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->d:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->a:Lcom/google/android/exoplayer2/source/rtsp/t;

    .line 7
    .line 8
    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/s;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/rtsp/s;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p$d;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->v(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$b;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    move-object v0, v6

    .line 20
    move v1, p3

    .line 21
    move-object v2, p2

    .line 22
    move-object v5, p4

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/rtsp/e;-><init>(ILcom/google/android/exoplayer2/source/rtsp/t;Lcom/google/android/exoplayer2/source/rtsp/e$a;Li9/n;Lcom/google/android/exoplayer2/source/rtsp/c$a;)V

    .line 24
    .line 25
    .line 26
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b:Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/p$d;Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->f(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/p$d;)Lcom/google/android/exoplayer2/source/rtsp/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b:Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic f(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/rtsp/c;->g()Lcom/google/android/exoplayer2/source/rtsp/u$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->d:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->g(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/rtsp/c;->d()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {v0, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->t0(ILcom/google/android/exoplayer2/source/rtsp/u$b;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->d:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p;->B(Lcom/google/android/exoplayer2/source/rtsp/p;Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->d:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->x(Lcom/google/android/exoplayer2/source/rtsp/p;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b:Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/e;->b:Lcom/google/android/exoplayer2/source/rtsp/t;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/t;->b:Landroid/net/Uri;

    .line 6
    .line 7
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
