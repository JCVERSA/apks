.class public final Lcom/google/android/exoplayer2/upstream/b0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/b0$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/n;

.field public final c:I

.field private final d:Lcom/google/android/exoplayer2/upstream/i0;

.field private final e:Lcom/google/android/exoplayer2/upstream/b0$a;

.field private volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/b0$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/n$b;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/n$b;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/n$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/upstream/n$b;->b(I)Lcom/google/android/exoplayer2/upstream/n$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/n$b;->a()Lcom/google/android/exoplayer2/upstream/n;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/b0;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/upstream/b0$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/upstream/b0$a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/upstream/i0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/i0;-><init>(Lcom/google/android/exoplayer2/upstream/k;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 7
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/b0;->e:Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 9
    invoke-static {}, Lv9/h;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/upstream/n;I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/upstream/b0;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/upstream/b0$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/b0;->load()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/b0;->c()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cancelLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final load()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->j()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/l;->h()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->getUri()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/Uri;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/b0;->e:Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 31
    .line 32
    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/b0$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/b0;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method
