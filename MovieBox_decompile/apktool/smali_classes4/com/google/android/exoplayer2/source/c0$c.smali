.class final Lcom/google/android/exoplayer2/source/c0$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/n;

.field private final c:Lcom/google/android/exoplayer2/upstream/i0;

.field private d:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/upstream/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lv9/h;->a()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/upstream/i0;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/i0;-><init>(Lcom/google/android/exoplayer2/upstream/k;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/c0$c;)Lcom/google/android/exoplayer2/upstream/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/c0$c;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->j()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/i0;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0x400

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    array-length v2, v1

    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    array-length v2, v1

    .line 41
    mul-int/lit8 v2, v2, 0x2

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    .line 48
    .line 49
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    .line 52
    .line 53
    array-length v3, v2

    .line 54
    sub-int/2addr v3, v0

    .line 55
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/i0;->read([BII)I

    .line 56
    .line 57
    .line 58
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method
