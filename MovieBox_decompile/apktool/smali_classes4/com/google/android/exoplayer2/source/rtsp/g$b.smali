.class public final Lcom/google/android/exoplayer2/source/rtsp/g$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:B

.field private d:I

.field private e:J

.field private f:I

.field private g:[B

.field private h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/source/rtsp/g;->a()[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->g:[B

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/exoplayer2/source/rtsp/g;->a()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->h:[B

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/g$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/g$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/rtsp/g$b;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->c:B

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/g$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/rtsp/g$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/rtsp/g$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/rtsp/g$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->g:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/g$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->h:[B

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public i()Lcom/google/android/exoplayer2/source/rtsp/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/g;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g$b;Lcom/google/android/exoplayer2/source/rtsp/g$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public j([B)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->g:[B

    .line 5
    .line 6
    return-object p0
.end method

.method public k(Z)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public l(Z)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->a:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public m([B)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->h:[B

    .line 5
    .line 6
    return-object p0
.end method

.method public n(B)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->c:B

    .line 2
    .line 3
    return-object p0
.end method

.method public o(I)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 2

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    and-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->d:I

    .line 16
    .line 17
    return-object p0
.end method

.method public p(I)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q(J)Lcom/google/android/exoplayer2/source/rtsp/g$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->e:J

    .line 2
    .line 3
    return-object p0
.end method
